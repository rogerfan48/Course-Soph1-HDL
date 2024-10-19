`timescale 1ns/1ps

module Scan_Chain_Design(clk, rst_n, scan_in, scan_en, scan_out);
    input clk;
    input rst_n;
    input scan_in;
    input scan_en;
    output scan_out;

    wire [4-1:0] a_out;
    wire [4-1:0] b_out;
    wire [8-1:0] p;

    Scan_DFF a3 (clk, rst_n, scan_en, scan_in, p[7], a_out[3]);
    Scan_DFF a2 (clk, rst_n, scan_en, a_out[3], p[6], a_out[2]);
    Scan_DFF a1 (clk, rst_n, scan_en, a_out[2], p[5], a_out[1]);
    Scan_DFF a0 (clk, rst_n, scan_en, a_out[1], p[4], a_out[0]);
    Scan_DFF b3 (clk, rst_n, scan_en, a_out[0], p[3], b_out[3]);
    Scan_DFF b2 (clk, rst_n, scan_en, a_out[0], p[2], b_out[2]);
    Scan_DFF b1 (clk, rst_n, scan_en, a_out[0], p[1], b_out[1]);
    Scan_DFF b0 (clk, rst_n, scan_en, a_out[0], p[0], b_out[0]);

    assign p = a_out * b_out;
    assign scan_out = b_out[0];
endmodule

module Scan_DFF (clk, rst_n, scan_en, scan_in, data, out);
    input clk;
    input rst_n;
    input scan_en;
    input scan_in;
    input data;
    output reg out;

    always @(posedge clk) begin
        if (!rst_n) begin
            out <= 1'b0;
        end else begin
            if (scan_en) begin
                out <= scan_in;
            end else begin
                out <= data;
            end
        end
    end
endmodule