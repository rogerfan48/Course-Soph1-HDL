module Vender_Machine(
    output wire [6:0] display,
    output wire [3:0] digit,
    output reg [3:0] LED,
    inout wire PS2_DATA,
    inout wire PS2_CLK,
    input wire clk,
    input wire rst,
    input wire add_5,
    input wire add_10,
    input wire add_50,
    input wire cancel
    );

    parameter [8:0] KEY_CODES_A = 9'b0_0001_1100; // A => 1C; 3
    parameter [8:0] KEY_CODES_S = 9'b0_0001_1011; // S => 1B; 2
    parameter [8:0] KEY_CODES_D = 9'b0_0010_0011; // D => 23; 1
    parameter [8:0] KEY_CODES_F = 9'b0_0010_1011; // F => 2B; 0

    parameter WAIT = 1'b0;
    parameter BACK = 1'b1;
    reg state;
    reg next_state;

    reg [7:0] money;
    reg [7:0] next_money;

    wire one_second_clk;
    One_Second_Clk_Gen OSCG(clk, one_second_clk);

    wire [511:0] key_down;
    wire [8:0] last_change;
    wire been_ready;

    wire [3:0] been_pressed;
    assign been_pressed[3] = been_ready && key_down[last_change] == 1'b1 && last_change == KEY_CODES_A;
    assign been_pressed[2] = been_ready && key_down[last_change] == 1'b1 && last_change == KEY_CODES_S;
    assign been_pressed[1] = been_ready && key_down[last_change] == 1'b1 && last_change == KEY_CODES_D;
    assign been_pressed[0] = been_ready && key_down[last_change] == 1'b1 && last_change == KEY_CODES_F;

    wire add_5_db, add_5_op, add_10_db, add_10_op,add_50_db,add_50_op, cancel_db, cancel_op;
    Debounce DB_5 (clk, add_5, add_5_db);
    One_Palse OP_5 (clk, add_5_db, add_5_op);
    Debounce DB_10 (clk, add_10, add_10_db);
    One_Palse OP_10 (clk, add_10_db, add_10_op);
    Debounce DB_50 (clk, add_50, add_50_db);
    One_Palse OP_50 (clk, add_50_db, add_50_op);
    Debounce DB_C (clk, cancel, cancel_db);
    One_Palse OP_C (clk, cancel_db, cancel_op);

    Seven_Segment SS(display, digit, money, rst, clk);

    KeyboardDecoder KD (
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(been_ready),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .rst(rst),
        .clk(clk)
    );

    always @(posedge clk) begin
        if (rst) state <= WAIT;
        else     state <= next_state;
    end

    always @(posedge clk) begin
        if (rst) money <= 8'd0;
        else begin
            if (state == BACK) begin
                if (one_second_clk) money <= next_money;
                else                money <= money;
            end
            else money <= next_money;
        end
    end

    always @(*) begin
        case (state)
            BACK: begin
                if (money != 8'd0) begin
                    next_money = money - 8'd5;
                    next_state = BACK;
                end else begin
                    next_money = money;
                    next_state = WAIT;
                end
            end
            default: begin  // WAIT
                if (cancel_op) begin
                    next_money = money;
                    next_state = BACK;
                end else if (add_50_op) begin
                    next_money = (money + 8'd50 > 8'd100) ? 8'd100 : (money + 8'd50);
                    next_state = WAIT;
                end else if (add_10_op) begin
                    next_money = (money + 8'd10 > 8'd100) ? 8'd100 : (money + 8'd10);
                    next_state = WAIT;
                end else if (add_5_op) begin
                    next_money = (money + 8'd5 > 8'd100) ? 8'd100 : (money + 8'd5);
                    next_state = WAIT;
                end else if (been_pressed[3] && LED[3]) begin
                    next_money = (money - 8'd80);
                    next_state = BACK;
                end else if (been_pressed[2] && LED[2]) begin
                    next_money = (money - 8'd30);
                    next_state = BACK;
                end else if (been_pressed[1] && LED[1]) begin
                    next_money = (money - 8'd25);
                    next_state = BACK;
                end else if (been_pressed[0] && LED[0]) begin
                    next_money = (money - 8'd20);
                    next_state = BACK;
                end else begin
                    next_money = money;
                    next_state = WAIT;
                end
            end
        endcase
    end

    always @(*) begin
        LED[0] = (state == WAIT && money >= 8'd20) ? 1'b1 : 1'b0;
        LED[1] = (state == WAIT && money >= 8'd25) ? 1'b1 : 1'b0;
        LED[2] = (state == WAIT && money >= 8'd30) ? 1'b1 : 1'b0;
        LED[3] = (state == WAIT && money >= 8'd80) ? 1'b1 : 1'b0;
    end
endmodule

module Seven_Segment(        // num limited in 0~100
    output reg [6:0] display,
    output reg [3:0] digit,
    input wire [7:0] nums,
    input wire rst,
    input wire clk
    );
    
    wire [1:0] display_clk;
    reg [3:0] display_num;

    reg [3:0] ones;
    reg [3:0] tens;
    reg [3:0] hundreds;

    Display_Clk_Gen DCG(clk, display_clk);
    
    always @(*) begin
        if      (nums < 8'd10)  ones = nums[3:0];
        else if (nums < 8'd20)  ones = nums - 8'd10;
        else if (nums < 8'd30)  ones = nums - 8'd20;
        else if (nums < 8'd40)  ones = nums - 8'd30;
        else if (nums < 8'd50)  ones = nums - 8'd40;
        else if (nums < 8'd60)  ones = nums - 8'd50;
        else if (nums < 8'd70)  ones = nums - 8'd60;
        else if (nums < 8'd80)  ones = nums - 8'd70;
        else if (nums < 8'd90)  ones = nums - 8'd80;
        else if (nums < 8'd100) ones = nums - 8'd90;
        else ones = 4'd0;
        
        if      (nums < 8'd10)  tens = 4'd10;   // don't show
        else if (nums < 8'd20)  tens = 4'd1;
        else if (nums < 8'd30)  tens = 4'd2;
        else if (nums < 8'd40)  tens = 4'd3;
        else if (nums < 8'd50)  tens = 4'd4;
        else if (nums < 8'd60)  tens = 4'd5;
        else if (nums < 8'd70)  tens = 4'd6;
        else if (nums < 8'd80)  tens = 4'd7;
        else if (nums < 8'd90)  tens = 4'd8;
        else if (nums < 8'd100) tens = 4'd9;
        else tens = 4'd0;
        
        hundreds = (nums == 8'd100) ? 4'd1 : 4'd10;  // don't show
    end
    
    always @ (posedge clk, posedge rst) begin
        if (rst) begin
            display_num <= 4'b0000;
            digit <= 4'b1111;
        end else begin
            case (display_clk)
                2'd0: begin
                    display_num <= ones;
                    digit <= 4'b1110;
                end
                2'd1: begin
                    display_num <= tens;
                    digit <= 4'b1101;
                end
                2'd2: begin
                    display_num <= hundreds;
                    digit <= 4'b1011;
                end
                default: begin  // 2'd3
                    display_num <= 4'd10;
                    digit <= 4'b0111;
                end	
            endcase
        end
    end
    
    always @ (*) begin
        case (display_num)
            0 : display = 7'b1000000;	//0000
            1 : display = 7'b1111001;   //0001                                                
            2 : display = 7'b0100100;   //0010                                                
            3 : display = 7'b0110000;   //0011                                             
            4 : display = 7'b0011001;   //0100                                               
            5 : display = 7'b0010010;   //0101                                               
            6 : display = 7'b0000010;   //0110
            7 : display = 7'b1111000;   //0111
            8 : display = 7'b0000000;   //1000
            9 : display = 7'b0010000;	//1001
            default : display = 7'b1111111;
        endcase
    end
endmodule

module Display_Clk_Gen (clk, out);
    input clk;
    output [2-1:0] out;
    reg [19-1:0] cnt;

    assign out = cnt[18:17];
    always @(posedge clk) cnt <= cnt + 1'b1;
endmodule

module One_Second_Clk_Gen (clk, out);
    input clk;
    output reg out;
    reg [26:0] cnt;

    always @(posedge clk) begin
        if (cnt == 27'd100_000_000) begin
            cnt <= 27'b0;
            out <= 1'b1;
        end else begin
            cnt <= cnt + 1'b1;
            out <= 1'b0;
        end
    end
endmodule

module Debounce (clk, pb, pb_d);
    input clk, pb;
    output pb_d;
    reg [8-1:0] DFF;

    assign pb_d = &DFF;
    always @(posedge clk) DFF[7:0] <= {DFF[6:0], pb};
endmodule

module One_Palse (clk, pb_d, pb_1p);
    input clk, pb_d;
    output reg pb_1p;

    reg pb_delay;
    always @(posedge clk) pb_delay <= pb_d;
    always @(posedge clk) pb_1p <= pb_d & ~pb_delay;
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
            if (key[8] == 0)    key_down <= key_down | key_decode;
            else                key_down <= key_down & (~key_decode);
        end else begin
            key_valid <= 1'b0;
            key_down <= key_down;
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
