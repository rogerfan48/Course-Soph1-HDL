`timescale 1ns/1ps

module Mux_2x1_4bit(a, b, sel, f);
    input [4-1:0] a, b;
    input sel;
    output [4-1:0] f;

    wire n_sel;
    wire [4-1:0] a_out, b_out;

    not NOT1 (n_sel, sel);
    and AND1_0 (a_out[0], a[0], n_sel);
    and AND1_1 (a_out[1], a[1], n_sel);
    and AND1_2 (a_out[2], a[2], n_sel);
    and AND1_3 (a_out[3], a[3], n_sel);
    and AND2_0 (b_out[0], b[0], sel);
    and AND2_1 (b_out[1], b[1], sel);
    and AND2_2 (b_out[2], b[2], sel);
    and AND2_3 (b_out[3], b[3], sel);
    or OR1_0 (f[0], a_out[0], b_out[0]);
    or OR1_1 (f[1], a_out[1], b_out[1]);
    or OR1_2 (f[2], a_out[2], b_out[2]);
    or OR1_3 (f[3], a_out[3], b_out[3]);
endmodule

module Mux_4x1_4bit(a, b, c, d, sel, f);
    input [4-1:0] a, b, c, d;
    input [2-1:0] sel;
    output [4-1:0] f;

    wire [4-1:0] a_con, b_con;

    Mux_2x1_4bit Mux1(a, b, sel[0], a_con);
    Mux_2x1_4bit Mux2(c, d, sel[0], b_con);
    Mux_2x1_4bit Mux3(a_con, b_con, sel[1], f);
endmodule