`timescale 1ns/1ps

// !!! FLIP NOT FUNCTIONING !!!

module Lab3_FPGA (clk, reset, enable, flip, max, min, AN, seg);
    input clk, reset, enable, flip;
    input [4-1:0] max, min;
    output reg [4-1:0] AN;
    output reg [7-1:0] seg;

    wire [2-1:0] clk_AN;
    Clk_Gen_AN CG0 (clk, clk_AN);
    wire direction;
    wire [4-1:0] PPPC_out;
    wire [7-1:0] seg_LSB;

    wire flip_d, flip_1p;
    debounce DB0 (clk, flip, flip_d);
    one_pulse OP0 (clk, flip_d, flip_1p);

    Parameterized_Ping_Pong_Counter PPPC(clk, !reset, enable, flip_1p, max, min, direction, PPPC_out);
    Decoder_seg DCS0 (PPPC_out, seg_LSB);

    always @(*) begin
        case (clk_AN)
            2'b00: begin
                AN = 4'b1110;
                seg = (direction) ? 7'b1011100 : 7'b1100011;
            end
            2'b01: begin
                AN = 4'b1101;
                seg = (direction) ? 7'b1011100 : 7'b1100011;
            end
            2'b10: begin
                AN = 4'b1011;
                seg = seg_LSB;
            end
            default: begin
                AN = 4'b0111;
                seg = (PPPC_out >= 4'd10) ? 7'b1111001 : 7'b1000000;
            end
        endcase
    end
endmodule

module Clk_Gen_AN (clk, out);
    input clk;
    output [2-1:0] out;
    reg [19-1:0] cnt;

    assign out = cnt[18:17];
    always @(posedge clk) cnt <= cnt + 1'b1;
endmodule

module Clk_Gen_PPPC (clk, rst_n, out);
    input clk, rst_n;
    output out;
    reg [26-1:0] cnt;

    assign out = (cnt==26'd0) ? 1'b1 : 1'b0;
    always @(posedge clk) begin
        if (!rst_n) cnt <= 26'b0;       // don't trigger when reset
        else        cnt <= cnt + 1'b1;
    end
endmodule

module Decoder_seg (in, out);
    input [4-1:0] in;
    output reg [7-1:0] out;
    always @(*) begin
        case (in)
            4'd0, 4'd10: out = 7'b1000000;
            4'd1, 4'd11: out = 7'b1111001;
            4'd2, 4'd12: out = 7'b0100100;
            4'd3, 4'd13: out = 7'b0110000;
            4'd4, 4'd14: out = 7'b0011001;
            4'd5, 4'd15: out = 7'b0010010;
            4'd6:        out = 7'b0000010;
            4'd7:        out = 7'b1111000;
            4'd8:        out = 7'b0000000;
            default:     out = 7'b0010000;
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

module one_pulse (clk, pb_d, pb_1p);
    input clk, pb_d;
    output reg pb_1p;

    reg pb_delay;
    always @(posedge clk) pb_delay <= pb_d;
    always @(posedge clk) pb_1p <= pb_d & ~pb_delay;
endmodule

module Parameterized_Ping_Pong_Counter (clk, rst_n, enable, flip, max, min, direction, out);
    input clk, rst_n;
    input enable;
    input flip;
    input [4-1:0] max;
    input [4-1:0] min;
    output reg direction;
    output reg [4-1:0] out;

    wire clk_PPPC;
    Clk_Gen_PPPC CG0 (clk, rst_n, clk_PPPC);

    reg next_direction;
    always @(*) begin
        if (out==min)           next_direction = 1'b1;
        else if (out==max)      next_direction = 1'b0;
        else if (flip)          next_direction = !direction;
        else                    next_direction = direction;
    end

    always @(posedge clk) begin
        if (clk_PPPC) begin
            if (!rst_n) begin
                direction <= 1'b1;
                out <= min;
            end else begin
                if (enable && min<=out && out<=max && min!=max) begin
                    direction <= next_direction;
                    out <= out + ((next_direction) ? 1'b1 : -1'b1);
                end
            end
        end
    end
endmodule