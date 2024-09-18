`timescale 1ns/1ps

module Dmux_1x2_4bit(in, a, b, sel);
    input [4-1:0] in;
    input sel;
    output [4-1:0] a, b;

    wire n_sel;

    not (n_sel, sel);
    and AND1_0(a[0], in[0], n_sel);
    and AND1_1(a[1], in[1], n_sel);
    and AND1_2(a[2], in[2], n_sel);
    and AND1_3(a[3], in[3], n_sel);
    and AND2_0(b[0], in[0], sel);
    and AND2_1(b[1], in[1], sel);
    and AND2_2(b[2], in[2], sel);
    and AND2_3(b[3], in[3], sel);
endmodule

module Dmux_1x4_4bit(in, a, b, c, d, sel);
    input [4-1:0] in;
    input [2-1:0] sel;
    output [4-1:0] a, b, c, d;

    wire [4-1:0] con1, con2;

    Dmux_1x2_4bit DMUX1(in, con1, con2, sel[1]);
    Dmux_1x2_4bit DMUX2(con1, a, b, sel[0]);
    Dmux_1x2_4bit DMUX3(con2, c, d, sel[0]);
endmodule