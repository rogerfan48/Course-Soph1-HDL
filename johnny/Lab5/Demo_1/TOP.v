// *******************************
// lab_SPEAKER_TOP
//
// ********************************

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

wire [511:0] key_down;
wire [8:0] last_change;
wire been_ready;

reg tag;
reg sel;

assign pmod_2 = 1'd1;	//no gain(6dB)
assign pmod_4 = 1'd1;	//turn-on

//Change beat frequency based on tag
assign BEAT_FREQ = !tag ? 32'd1 : 32'd2 ;

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
						   .sel(sel),
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

always @(*) begin
	if(been_ready) begin
		if(key_down[KEY_CODES_W] == 1'b1) begin
			tag = tag;
			sel = 0;
		end else if(key_down[KEY_CODES_S] == 1'b1) begin
			tag = tag;
			sel = 1;
		end else if(key_down[KEY_CODES_R] == 1'b1) begin
			sel = sel;
			tag = ~tag;
		end else if(key_down[KEY_CODES_ENTER] == 1'b1) begin
			sel = 0;
			tag = 0;
		end else begin
			sel = sel;
			tag = tag;
		end
	end else begin
		sel = sel;
		tag = tag;
	end
end
endmodule