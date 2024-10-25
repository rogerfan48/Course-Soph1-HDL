`timescale 1ns/1ps

module a3_FPGA(clk, d_clk, reset, scan_en, rst_value, a_out, b_out, AN, seg);
    input clk;
    input d_clk;
    input reset;
    input scan_en;
    input [8-1:0] rst_value;
    output [4-1:0] a_out;
    output [4-1:0] b_out;
    output reg [4-1:0] AN;
    output reg [7-1:0] seg;

    wire d_clk_d, d_clk_1p;
    debounce DB1(clk, d_clk, d_clk_d);
    one_pulse OP1(clk, d_clk_d, d_clk_1p);

    wire scan_in;
    wire scan_out;

    wire [8-1:0] LFSR_out;
    assign scan_in = LFSR_out[7];

    Many_To_One_LFSR LFSR0 (clk, d_clk_1p, !reset, LFSR_out, rst_value);
    Scan_Chain_Design SCD0 (clk, d_clk_1p, !reset, scan_in, scan_en, scan_out, a_out, b_out);

    wire [2-1:0] clk_AN;
    Clk_Gen_AN CLK_GEN_AN (clk, clk_AN);

    wire [7-1:0] a_seg;
    wire [7-1:0] b_seg;
    BCD_to_seg BCD_SEG_a(a_out, a_seg);
    BCD_to_seg BCD_SEG_b(b_out, b_seg);

    always @(*) begin
        case (clk_AN)
            2'b00: begin
                AN = 4'b1110;
                seg = (scan_out) ? 7'b1001111 : 7'b0000001;
            end
            2'b01: begin
                AN = 4'b1101;
                seg = b_seg;
            end
            2'b10: begin
                AN = 4'b1011;
                seg = a_seg;
            end
            default: begin
                AN = 4'b0111;
                seg = (scan_in) ? 7'b1001111 : 7'b0000001;
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

module BCD_to_seg (in, out);
    input [4-1:0] in;
    output reg [7-1:0] out;

    always @(*) begin
        case(in)
            4'd0: out = 7'b0000001;
            4'd1: out = 7'b1001111;
            4'd2: out = 7'b0010010;
            4'd3: out = 7'b0000110;
            4'd4: out = 7'b1001100;
            4'd5: out = 7'b0100100;
            4'd6: out = 7'b0100000;
            4'd7: out = 7'b0001111;
            4'd8: out = 7'b0000000;
            4'd9: out = 7'b0000100;
            4'd10: out = 7'b0001000;
            4'd11: out = 7'b1100000;
            4'd12: out = 7'b0110001;
            4'd13: out = 7'b1000010;
            4'd14: out = 7'b0110000;
            default: out = 7'b0111000;
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

// <<-- MODIFIED FROM b3 --
module Many_To_One_LFSR(clk, d_clk, rst_n, out, rst_value);
    input clk;
    input d_clk;
    input rst_n;
    input [8-1:0] rst_value;
    output reg [8-1:0] out;

    always @(posedge clk) begin
        if (!rst_n) out <= rst_value;
        else if (d_clk) begin
            out[7] <= out[6];
            out[6] <= out[5];
            out[5] <= out[4];
            out[4] <= out[3];
            out[3] <= out[2];
            out[2] <= out[1];
            out[1] <= out[0];
            out[0] <= (out[1] ^ out[2]) ^ (out[3] ^ out[7]);
        end
    end
endmodule
// -- MODIFIED FROM b3 -->>

// <<-- FROM a2 --
module Scan_Chain_Design(clk, d_clk, rst_n, scan_in, scan_en, scan_out, a_out, b_out);
    input clk;
    input d_clk;
    input rst_n;
    input scan_in;
    input scan_en;
    output scan_out;
    output [4-1:0] a_out;
    output [4-1:0] b_out;

    wire [8-1:0] p;

    Scan_DFF a3 (clk, d_clk, rst_n, scan_en, scan_in, p[7], a_out[3]);
    Scan_DFF a2 (clk, d_clk, rst_n, scan_en, a_out[3], p[6], a_out[2]);
    Scan_DFF a1 (clk, d_clk, rst_n, scan_en, a_out[2], p[5], a_out[1]);
    Scan_DFF a0 (clk, d_clk, rst_n, scan_en, a_out[1], p[4], a_out[0]);
    Scan_DFF b3 (clk, d_clk, rst_n, scan_en, a_out[0], p[3], b_out[3]);
    Scan_DFF b2 (clk, d_clk, rst_n, scan_en, b_out[3], p[2], b_out[2]);
    Scan_DFF b1 (clk, d_clk, rst_n, scan_en, b_out[2], p[1], b_out[1]);
    Scan_DFF b0 (clk, d_clk, rst_n, scan_en, b_out[1], p[0], b_out[0]);

    assign p = a_out * b_out;
    assign scan_out = b_out[0];
endmodule

module Scan_DFF (clk, d_clk, rst_n, scan_en, scan_in, data, out);
    input clk;
    input d_clk;
    input rst_n;
    input scan_en;
    input scan_in;
    input data;
    output reg out;

    always @(posedge clk) begin
        if (!rst_n) begin
            out <= 1'b0;
        end else if (d_clk) begin
            if (scan_en) begin
                out <= scan_in;
            end else begin
                out <= data;
            end
        end
    end
endmodule
// -- FROM a2 -->>