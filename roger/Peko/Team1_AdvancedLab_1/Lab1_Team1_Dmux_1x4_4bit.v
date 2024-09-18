`timescale 1ns/1ps

module Dmux_1x4_4bit(in, a, b, c, d, sel);
input [4-1:0] in;
input [2-1:0] sel;
output [4-1:0] a, b, c, d;
wire [3:0] con1, con2;
Dmux_1x2_4bit D1(in, con1, con2, sel[0]);
Dmux_1x2_4bit D2(con1, a, c, sel[1]);
Dmux_1x2_4bit D3(con2, b, d, sel[1]);
endmodule

module Dmux_1x2_4bit(in, aout, bout, sel);
input [3:0] in;
input sel;
output [3:0] aout, bout;
not not_sel(n_sel, sel);
and a_0(aout[0], n_sel, in[0]);
and a_1(aout[1], n_sel, in[1]);
and a_2(aout[2], n_sel, in[2]);
and a_3(aout[3], n_sel, in[3]);
and b_0(bout[0], sel, in[0]);
and b_1(bout[1], sel, in[1]);
and b_2(bout[2], sel, in[2]);
and b_3(bout[3], sel, in[3]);
endmodule