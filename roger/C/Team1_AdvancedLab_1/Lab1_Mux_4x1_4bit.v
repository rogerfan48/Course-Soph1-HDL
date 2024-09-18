`timescale 1ns/1ps

module Mux_4x1_4bit(a, b, c, d, sel, f);

input [4-1:0] a, b, c, d;
input [2-1:0] sel;
output [4-1:0] f;
wire [3:0] aout, bout;

Mux_2x1_4bit g1(a, b, sel[0], aout);
Mux_2x1_4bit g2(c, d, sel[0], bout);
Mux_2x1_4bit g3(aout, bout, sel[1], f);

endmodule

module Mux_2x1_4bit(a, b, sel, out);
input [3:0] a, b;
input sel;
output [3:0] out;
wire [3:0] aout, bout;

not not_sel(sel_, sel);
and g0_0(aout[0], sel_, a[0]);
and g0_1(aout[1], sel_, a[1]);
and g0_2(aout[2], sel_, a[2]);
and g0_3(aout[3], sel_, a[3]);
and g1_0(bout[0], sel, b[0]);
and g1_1(bout[1], sel, b[1]);
and g1_2(bout[2], sel, b[2]);
and g1_3(bout[3], sel, b[3]);
or g2_0(out[0], bout[0], aout[0]);
or g2_1(out[1], bout[1], aout[1]);
or g2_2(out[2], bout[2], aout[2]);
or g2_3(out[3], bout[3], aout[3]);

endmodule