`timescale 1ns/1ps

module Crossbar_2x2_4bit_fpga(in1, in2, control, out1, out2, out3, out4);
    input [4-1:0] in1, in2;
    input control;
    output [4-1:0] out1, out2, out3, out4;
    wire [3:0] con1, con2, con3, con4, out_3, out_4;
    not not_con(n_control, control);
    Dmux_1x2_4bit D1(in1, con1, con2, control);
    Dmux_1x2_4bit D2(in2, con3, con4, n_control);
    Mux_2x1_4bit D3(con1, con3, control, out1);
    Mux_2x1_4bit D4(con2, con4, n_control, out2);
    fanout_2 F1(out1, out3);
    fanout_2 F2(out2, out4);
endmodule

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

module fanout_2(in, out);
    input [3:0] in;
    output [3:0] out;
    wire [3:0] n_;
    not n1(n_[0], in[0]);
    not n2(n_[1], in[1]);
    not n3(n_[2], in[2]);
    not n4(n_[3], in[3]);
    not n5(out[0], n_[0]);
    not n6(out[1], n_[1]);
    not n7(out[2], n_[2]);
    not n8(out[3], n_[3]);
endmodule



