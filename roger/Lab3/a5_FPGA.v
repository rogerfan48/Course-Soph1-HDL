`timescale 1ns/1ps

module a5_FPGA(clk_100Mhz, reset, flip, enable, max, min, AN, LED_seg);
    input clk_100Mhz;                   // 100 Mhz clock source -> W5
    input reset, flip, enable;
    input [4-1:0] max, min;
    output reg [4-1:0] AN = 4'b1110;    // anode enable
    output reg [7-1:0] LED_seg;         // LED segments
    wire direction;
    wire [4-1:0] num;

    reg [26-1:0] cnt_halfSec;           // counter for generating 0.5 second clock enable
    reg clk;
    reg [16-1:0] cnt_LED;               // counter for LED display(AN)
    reg clk_LED;
    reg [4-1:0] LED_BCD;

    wire reset_, reset__, flip_, flip__;
    debounce DB1(clk_100Mhz, reset, reset_);
    one_pulse OP1(clk_100Mhz, reset_, reset__);
    debounce DB2(clk_100Mhz, flip, flip_);
    one_pulse OP2(clk_100Mhz, flip_, flip__);

    reg reset_last, flip_last;
    reg reset_update, flip_update;
    always @(posedge clk) begin
        reset_last <= reset_update;
        flip_last <= flip_update;
    end
    always @(posedge clk_100Mhz) begin
        reset_update <= (reset_update ^ reset_last) ? reset_update : reset__;
        flip_update <= (flip_update ^ flip_last) ? flip_update : flip__;
    end

    Parameterized_Ping_Pong_Counter PPPC(clk, !reset_update, enable, flip_update, max, min, direction, num);

    always @(posedge clk_100Mhz or posedge reset) begin
        if (reset)                      begin cnt_halfSec <= 0; clk <= 1;       end
        else if (cnt_halfSec>=49999999) begin cnt_halfSec <= 0; clk <= !clk;    end
        else                            begin cnt_halfSec <= cnt_halfSec + 1;   end
    end 

    always @(posedge clk_100Mhz) begin
        if (cnt_LED>=49999)        begin cnt_LED <= 0; clk_LED <= !clk_LED;    end
        else                       begin cnt_LED <= cnt_LED + 1;               end
    end
    always @(posedge clk_LED) AN[3:0] <= {AN[2:0], AN[3]};

    always @(*) begin
        case(AN)
            4'b1110, 4'b1101: LED_BCD = (direction) ? 4'b1110 : 4'b1111;
            4'b1011: LED_BCD = num % 10;
            4'b0111: LED_BCD = num / 10;
        endcase
    end

    always @(*) begin
        case(LED_BCD)
            4'b0000: LED_seg = 7'b0000001; // "0"     
            4'b0001: LED_seg = 7'b1001111; // "1" 
            4'b0010: LED_seg = 7'b0010010; // "2" 
            4'b0011: LED_seg = 7'b0000110; // "3" 
            4'b0100: LED_seg = 7'b1001100; // "4" 
            4'b0101: LED_seg = 7'b0100100; // "5" 
            4'b0110: LED_seg = 7'b0100000; // "6" 
            4'b0111: LED_seg = 7'b0001111; // "7" 
            4'b1000: LED_seg = 7'b0000000; // "8"     
            4'b1001: LED_seg = 7'b0000100; // "9" 
            4'b1110: LED_seg = 7'b0011101; // "UP"
            4'b1111: LED_seg = 7'b1100011; // "DOWN"
            default: LED_seg = 7'b0000001; // "0"
        endcase
    end
endmodule

module debounce (clk, pb, pb_d);
    input clk, pb;
    output pb_d;
    reg [4-1:0] DFF;

    assign pb_d = &DFF;
    always @(posedge clk) DFF[3:0] <= {DFF[2:0], pb};
endmodule

module one_pulse (clk, pb, pb_1p);
    input clk, pb;
    output reg pb_1p;
    reg past;

    always @(posedge clk) past <= pb;
    always @(posedge clk) pb_1p <= pb & !past;
endmodule

module Parameterized_Ping_Pong_Counter (clk, rst_n, enable, flip, max, min, direction, out);
    input clk, rst_n;
    input enable;
    input flip;
    input [4-1:0] max;
    input [4-1:0] min;
    output direction;
    output [4-1:0] out;
    reg direction;
    reg [4-1:0] out;

    reg next_direction;
    always @(*) begin
        if (out==min)       next_direction = 1'b1;
        else if (out==max)  next_direction = 1'b0;
        else if (flip)      next_direction = !direction;
        else                next_direction = direction;
    end

    always @(posedge clk) begin
        if (!rst_n) begin
            out <= min;
            direction <= 1'b1;
        end else if (enable && max >= out && out >= min && max != min) begin
            direction <= next_direction;
            if (next_direction) out <= out + 4'b1;
            else                out <= out - 4'b1;
        end
    end
endmodule