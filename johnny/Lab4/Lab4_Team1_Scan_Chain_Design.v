`timescale 1ns/1ps

module Scan_Chain_Design(clk, rst_n, scan_in, scan_en, scan_out);
    input clk;
    input rst_n;
    input scan_in;
    input scan_en;
    output scan_out;

    wire [7:0] p;
    wire [7:0] out;
    wire [3:0] a, b;

    assign p = a * b;
    Scan_DFF DFF_7(clk, rst_n, scan_in, scan_en, p[7], out[7]);
    Scan_DFF DFF_6(clk, rst_n, out[7], scan_en, p[6], out[6]);
    Scan_DFF DFF_5(clk, rst_n, out[6], scan_en, p[5], out[5]);
    Scan_DFF DFF_4(clk, rst_n, out[5], scan_en, p[4], out[4]);
    Scan_DFF DFF_3(clk, rst_n, out[4], scan_en, p[3], out[3]);
    Scan_DFF DFF_2(clk, rst_n, out[3], scan_en, p[2], out[2]);
    Scan_DFF DFF_1(clk, rst_n, out[2], scan_en, p[1], out[1]);
    Scan_DFF DFF_0(clk, rst_n, out[1], scan_en, p[0], out[0]);

    assign a[3] = out[7];
    assign a[2] = out[6];
    assign a[1] = out[5];
    assign a[0] = out[4];
    assign b[3] = out[3];
    assign b[2] = out[2];
    assign b[1] = out[1];
    assign b[0] = out[0];
    assign scan_out = out[0];
endmodule

module Scan_DFF(clk, rst_n, in, en, data, out);
    input clk;
    input rst_n;
    input in;
    input en;
    input data;
    output reg out;

    wire temp_1, temp_2;
    assign temp_1 = en ? in : data;
    assign temp_2 = rst_n ? temp_1 : 1'b0;
    always @(posedge clk) out <= temp_2;
endmodule