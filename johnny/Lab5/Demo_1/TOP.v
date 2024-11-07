// *******************************
// lab_SPEAKER_TOP
//
// ********************************
`define NM1 32'd262 
`define NM2 32'd294 
`define NM3 32'd330 
`define NM4 32'd349 
`define NM5 32'd392 
`define NM6 32'd440 
`define NM7 32'd494 
`define NM0 32'd20000

module TOP (
	input clk,
	inout wire PS2_DATA,
    inout wire PS2_CLK,
	output pmod_1,
	output pmod_2,
	output pmod_4
);

parameter DUTY_BEST = 10'd512;	//duty cycle=50%
parameter [8:0] KEY_CODES_W  = 9'b0_0001_1101;
parameter [8:0] KEY_CODES_S = 9'b0_0001_1011;
parameter [8:0] KEY_CODES_R = 9'b0_0010_1101;
parameter [8:0] KEY_CODES_ENTER = 9'b0_0101_1010;

wire [7:0] ibeatNum;
wire [31:0] BEAT_FREQ;
wire [31:0] freq;
wire beatFreq;

reg dir, next_dir;
reg speed, next_speed;

wire [511:0] key_down;
wire [8:0] last_change;
wire been_ready;

reg tag;
reg sel;

assign pmod_2 = 1'd1;	//no gain(6dB)
assign pmod_4 = 1'd1;	//turn-on

//Change beat frequency based on tag
ch_speed CS( .in(speed),
			 .out(BEAT_FREQ)
);

//Generate beat speed
PWM_gen btSpeedGen ( .clk(clk), 
					 .reset(been_ready && key_down[KEY_CODES_ENTER] == 1'b1),
					 .freq(BEAT_FREQ),
					 .duty(DUTY_BEST), 
					 .PWM(beatFreq)
);
	
//manipulate beat
PlayerCtrl playerCtrl_00 ( .clk(beatFreq),
						   .reset(been_ready && key_down[KEY_CODES_ENTER] == 1'b1),
						   .sel(dir),
						   .ibeat(ibeatNum)
);

//Generate variant freq. of tones
Music music00 ( .ibeatNum(ibeatNum),
				.tone(freq)
);

// Generate particular freq. signal
PWM_gen toneGen ( .clk(clk),
				  .reset(been_ready && key_down[KEY_CODES_ENTER] == 1'b1), 
				  .freq(freq),
				  .duty(DUTY_BEST), 
				  .PWM(pmod_1)
);

//keyboard Decode
KeyboardDecoder key_de (
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(been_ready),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .rst(1'b0),
        .clk(clk)
);

always @(posedge clk) begin
	if(been_ready && key_down[KEY_CODES_ENTER]) speed <= 1'b0;
	else speed = next_speed;
end

always @(posedge clk) begin
	if(been_ready && key_down[KEY_CODES_ENTER]) dir <= 1'b0;
	else dir = next_dir;
end

always @(*) begin
	case(speed)
		1'b0:
			if(been_ready && key_down[KEY_CODES_ENTER]) next_speed = 1'b0;
			else if(been_ready && key_down[KEY_CODES_R]) next_speed = 1'b1;
			else next_speed = 1'b0;
		default:
			if(been_ready && key_down[KEY_CODES_ENTER]) next_speed = 1'b0;
			else if(been_ready && key_down[KEY_CODES_R]) next_speed = 1'b0;
			else next_speed = 1'b1;
	endcase
end

always @(*) begin
	case(dir)
		1'b0:
			if(been_ready && key_down[KEY_CODES_ENTER]) next_dir = 1'b0;
			else if(been_ready && key_down[KEY_CODES_W]) next_dir = 1'b0;
			else if(been_ready && key_down[KEY_CODES_S]) next_dir = 1'b1;
			else next_dir = 1'b0;
		default:
			if(been_ready && key_down[KEY_CODES_ENTER]) next_dir = 1'b0;
			else if(been_ready && key_down[KEY_CODES_W]) next_dir = 1'b0;
			else if(been_ready && key_down[KEY_CODES_S]) next_dir = 1'b1;
			else next_dir = 1'b1;
	endcase
end
endmodule

module ch_speed(in, out);
	input in;
	output [31:0] out;
	assign out = !in ? 32'd1 : 32'd2 ;
endmodule

module PWM_gen (
    input wire clk,
    input wire reset,
	input [31:0] freq,
    input [9:0] duty,
    output reg PWM
);

wire [31:0] count_max = 100_000_000 / freq;
wire [31:0] count_duty = count_max * duty / 1024;
reg [31:0] count;
    
always @(posedge clk, posedge reset) begin
    if (reset) begin
        count <= 0;
        PWM <= 0;
    end else if (count < count_max) begin
        count <= count + 1;
		if(count < count_duty)
            PWM <= 1;
        else
            PWM <= 0;
    end else begin
        count <= 0;
        PWM <= 0;
    end
end

endmodule

module PlayerCtrl (
	input clk,
	input reset,
	input sel,
	output reg [7:0] ibeat
);
parameter BEATLEAGTH = 28;

always @(posedge clk, posedge reset) begin
	if (reset) begin
		ibeat <= 8'b11111111;
	end else begin
		if(!sel) begin
			if(ibeat < BEATLEAGTH || ibeat == 8'b11111111) ibeat <= ibeat + 1;
			else ibeat <= 28;
		end else begin
			if((ibeat <= BEATLEAGTH && ibeat > 0) || ibeat == 28) ibeat <= ibeat - 1;
			else ibeat <= 0;
		end
	end
end
endmodule

module OnePulse (
    output reg signal_single_pulse,
    input wire signal,
    input wire clock
    );
    
    reg signal_delay;

    always @(posedge clock) begin
        if (signal == 1'b1 & signal_delay == 1'b0)
            signal_single_pulse <= 1'b1;
        else
            signal_single_pulse <= 1'b0;
        signal_delay <= signal;
    end
endmodule

module Music (
	input [5:0] ibeatNum,	
	output reg [31:0] tone
);

always @(*) begin
	case (ibeatNum)
		6'd0 : tone = `NM1;
		6'd1 : tone = `NM2;
		6'd2 : tone = `NM3;
		6'd3 : tone = `NM4;
		6'd4 : tone = `NM5;
		6'd5 : tone = `NM6;
		6'd6 : tone = `NM7;

		6'd7 : tone = `NM1 << 1;
        6'd8 : tone = `NM2 << 1;
		6'd9 : tone = `NM3 << 1;
		6'd10 : tone = `NM4 << 1;
		6'd11 : tone = `NM5 << 1;
		6'd12 : tone = `NM6 << 1;
		6'd13 : tone = `NM7 << 1;

		6'd14 : tone = `NM1 << 2;
        6'd15 : tone = `NM2 << 2;
		6'd16 : tone = `NM3 << 2;
		6'd17 : tone = `NM4 << 2;
		6'd18 : tone = `NM5 << 2;
		6'd19 : tone = `NM6 << 2;
		6'd20 : tone = `NM7 << 2;
        
        6'd21 : tone = `NM1 << 3;
        6'd22 : tone = `NM2 << 3;
		6'd23 : tone = `NM3 << 3;
		6'd24 : tone = `NM4 << 3;
		6'd25 : tone = `NM5 << 3;
		6'd26 : tone = `NM6 << 3;
		6'd27 : tone = `NM7 << 3;
        
        6'd28 : tone = `NM1 << 4;
		
		default : tone = `NM0;
	endcase
end

endmodule

module KeyboardDecoder(
    output reg [511:0] key_down,
    output wire [8:0] last_change,
    output reg key_valid,
    inout wire PS2_DATA,
    inout wire PS2_CLK,
    input wire rst,
    input wire clk
    );
    
    parameter [1:0] INIT			= 2'b00;
    parameter [1:0] WAIT_FOR_SIGNAL = 2'b01;
    parameter [1:0] GET_SIGNAL_DOWN = 2'b10;
    parameter [1:0] WAIT_RELEASE    = 2'b11;
    
    parameter [7:0] IS_INIT			= 8'hAA;
    parameter [7:0] IS_EXTEND		= 8'hE0;
    parameter [7:0] IS_BREAK		= 8'hF0;
    
    reg [9:0] key, next_key;		// key = {been_extend, been_break, key_in}
    reg [1:0] state, next_state;
    reg been_ready, been_extend, been_break;
    reg next_been_ready, next_been_extend, next_been_break;
    
    wire [7:0] key_in;
    wire is_extend;
    wire is_break;
    wire valid;
    wire err;
    
    wire [511:0] key_decode = 1 << last_change;
    assign last_change = {key[9], key[7:0]};
    
    KeyboardCtrl_0 inst (
        .key_in(key_in),
        .is_extend(is_extend),
        .is_break(is_break),
        .valid(valid),
        .err(err),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .rst(rst),
        .clk(clk)
    );
    
    OnePulse op (
        .signal_single_pulse(pulse_been_ready),
        .signal(been_ready),
        .clock(clk)
    );
    
    always @ (posedge clk, posedge rst) begin
        if (rst) begin
            state <= INIT;
            been_ready  <= 1'b0;
            been_extend <= 1'b0;
            been_break  <= 1'b0;
            key <= 10'b0_0_0000_0000;
        end else begin
            state <= next_state;
            been_ready  <= next_been_ready;
            been_extend <= next_been_extend;
            been_break  <= next_been_break;
            key <= next_key;
        end
    end
    
    always @ (*) begin
        case (state)
            INIT:            next_state = (key_in == IS_INIT) ? WAIT_FOR_SIGNAL : INIT;
            WAIT_FOR_SIGNAL: next_state = (valid == 1'b0) ? WAIT_FOR_SIGNAL : GET_SIGNAL_DOWN;
            GET_SIGNAL_DOWN: next_state = WAIT_RELEASE;
            WAIT_RELEASE:    next_state = (valid == 1'b1) ? WAIT_RELEASE : WAIT_FOR_SIGNAL;
            default:         next_state = INIT;
        endcase
    end
    always @ (*) begin
        next_been_ready = been_ready;
        case (state)
            INIT:            next_been_ready = (key_in == IS_INIT) ? 1'b0 : next_been_ready;
            WAIT_FOR_SIGNAL: next_been_ready = (valid == 1'b0) ? 1'b0 : next_been_ready;
            GET_SIGNAL_DOWN: next_been_ready = 1'b1;
            WAIT_RELEASE:    next_been_ready = next_been_ready;
            default:         next_been_ready = 1'b0;
        endcase
    end
    always @ (*) begin
        next_been_extend = (is_extend) ? 1'b1 : been_extend;
        case (state)
            INIT:            next_been_extend = (key_in == IS_INIT) ? 1'b0 : next_been_extend;
            WAIT_FOR_SIGNAL: next_been_extend = next_been_extend;
            GET_SIGNAL_DOWN: next_been_extend = next_been_extend;
            WAIT_RELEASE:    next_been_extend = (valid == 1'b1) ? next_been_extend : 1'b0;
            default:         next_been_extend = 1'b0;
        endcase
    end
    always @ (*) begin
        next_been_break = (is_break) ? 1'b1 : been_break;
        case (state)
            INIT:            next_been_break = (key_in == IS_INIT) ? 1'b0 : next_been_break;
            WAIT_FOR_SIGNAL: next_been_break = next_been_break;
            GET_SIGNAL_DOWN: next_been_break = next_been_break;
            WAIT_RELEASE:    next_been_break = (valid == 1'b1) ? next_been_break : 1'b0;
            default:         next_been_break = 1'b0;
        endcase
    end
    always @ (*) begin
        next_key = key;
        case (state)
            INIT:            next_key = (key_in == IS_INIT) ? 10'b0_0_0000_0000 : next_key;
            WAIT_FOR_SIGNAL: next_key = next_key;
            GET_SIGNAL_DOWN: next_key = {been_extend, been_break, key_in};
            WAIT_RELEASE:    next_key = next_key;
            default:         next_key = 10'b0_0_0000_0000;
        endcase
    end

    always @ (posedge clk, posedge rst) begin
        if (rst) begin
            key_valid <= 1'b0;
            key_down <= 511'b0;
        end else if (key_decode[last_change] && pulse_been_ready) begin
            key_valid <= 1'b1;
            if (key[8] == 0) begin
                key_down <= key_down | key_decode;
            end else begin
                key_down <= key_down & (~key_decode);
            end
        end else begin
            key_valid <= 1'b0;
            key_down <= key_down;
        end
    end

endmodule
