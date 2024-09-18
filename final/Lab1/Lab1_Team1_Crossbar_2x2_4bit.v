`timescale 1ns/1ps

module Crossbar_2x2_4bit(in1, in2, control, out1, out2);
input [4-1:0] in1, in2;
input control;
output [4-1:0] out1, out2;
wire [3:0] con1, con2, con3, con4;
not not_con(n_control, control);
Dmux_1x2_4bit D1(in1, con1, con2, control);
Dmux_1x2_4bit D2(in2, con3, con4, n_control);
Mux_2x1_4bit D3(con1, con3, control, out1);
Mux_2x1_4bit D4(con2, con4, n_control, out2);
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
