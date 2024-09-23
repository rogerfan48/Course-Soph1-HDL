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

/*`timescale 1ps/1ps

module DAE_FPGA(rs, rt, sel, rd, display, light);
    input [4-1:0] rs, rt;
    input [3-1:0] sel;
    output [4-1:0] rd;
    output [6:0] display;
    output [3:0] light;
    Decode_And_Execute DAE(rs, rt, sel, rd);
    wire [3:0] n_rd;
    //
    not n0(n_rd[0], rd[0]);
    not n1(n_rd[1], rd[1]);
    not n2(n_rd[2], rd[2]);
    not n3(n_rd[3], rd[3]);
    //
    not L0(light[0], 1'b1);
    not L1(light[1], 1'b0);
    not L2(light[2], 1'b0);
    not L3(light[3], 1'b0);
    //
    xor A0(Acon0, rd[0], rd[2]);
    and A1(Acon2, Acon0, n_rd[1], n_rd[3]);
    xor A2(Acon1, rd[1], rd[2]);
    and A3(Acon3, Acon1, rd[0], rd[3]);
    or A4(display[0], Acon2, Acon3);
    //
    and B0(Bcon0, n_rd[3], rd[2], n_rd[1], rd[0]);
    and B1(Bcon1, rd[2], rd[1], n_rd[0]);
    and B2(Bcon2, rd[3], rd[2], n_rd[0]);
    and B3(Bcon3, rd[3], rd[1], rd[0]);
    or B4(display[1], Bcon0, Bcon1, Bcon2, Bcon3);
    //
    and C0(Ccon0, n_rd[3], n_rd[2], rd[1], n_rd[0]);
    and C1(Ccon1, rd[3], rd[2], rd[1]);
    and C2(Ccon2, rd[3], rd[2], n_rd[0]);
    or C3(display[2], Ccon0, Ccon1, Ccon2);
    //
    and D0(Dcon0, n_rd[3], n_rd[2], n_rd[1], rd[0]);
    and D1(Dcon1, n_rd[3], rd[2], n_rd[1], n_rd[0]);
    and D2(Dcon2, rd[3], n_rd[2], rd[1], n_rd[0]);
    and D3(Dcon3, rd[2], rd[1], rd[0]);
    or D4(display[3], Dcon0, Dcon1, Dcon2, Dcon3);
    //
    and E0(Econ0, n_rd[3], rd[0]);
    and E1(Econ1, n_rd[2], n_rd[1], rd[0]);
    and E2(Econ2, n_rd[3], rd[2], n_rd[1]);
    or E3(display[4], Econ0, Econ1, Econ2);
    //
    and F0(Fcon0, rd[3], rd[2], n_rd[1], rd[0]);
    and F1(Fcon1, n_rd[3], n_rd[2], rd[0]);
    and F2(Fcon2, n_rd[3], n_rd[2], rd[1]);
    and F3(Fcon3, n_rd[3], rd[1], rd[0]);
    or F4(display[5], Fcon0, Fcon1, Fcon2, Fcon3);
    //
    and G0(Gcon0, n_rd[3], rd[2], rd[1], rd[0]);
    and G1(Gcon1, rd[3], rd[2], n_rd[1], n_rd[0]);
    and G2(Gcon2, n_rd[3], n_rd[2], n_rd[1]);
    or G3(display[6], Gcon0, Gcon1, Gcon2);
    //
endmodule

module Decode_And_Execute(rs, rt, sel, rd);
    input [4-1:0] rs, rt;
    input [3-1:0] sel;
    output [4-1:0] rd;
    wire [3:0] con1, con2, con3, con4, con5, con6, con7, con8;
    SUB G1(con1, rs, rt);
    ADD G2(con2, rs, rt);
    Bitwise_Or G3(con3, rs, rt);
    Bitwise_And G4(con4, rs, rt);
    Right_Shift G5(con5, rt);
    Left_Shift G6(con6, rs);
    Compare_LT G7(con7, rs, rt);
    Compare_EQ G8(con8, rs, rt);
    Mux_8x1_4bit G9(rd, con1, con2, con3, con4, con5, con6, con7, con8, sel);
endmodule

module Compare_EQ(rd, rs, rt);
    input [3:0] rs, rt;
    output [3:0] rd;
    Not_Gate G4(rd[3], 1'b0);
    Not_Gate G5(rd[2], 1'b0);
    Not_Gate G6(rd[1], 1'b0);
    Xnor_Gate G7(con1, rt[3], rs[3]);
    Xnor_Gate G8(con2, rt[2], rs[2]);
    Xnor_Gate G9(con3, rt[1], rs[1]);
    Xnor_Gate G10(con4, rt[0], rs[0]);
    And_Gate G11(con5, con1, con2);
    And_Gate G12(con6, con5, con3);
    And_Gate G13(rd[0], con6, con4);
endmodule

module Compare_LT(rd, rs, rt);
    input [3:0] rs, rt;
    output [3:0] rd;
    Not_Gate G4(rd[3], 1'b0);
    Not_Gate G5(rd[2], 1'b1);
    Not_Gate G6(rd[1], 1'b0);
    Universal_Gate F1(con1, rt[0], rs[0]);
    Universal_Gate F2(con2, rt[1], rs[1]);
    Xor_Gate F3(con3, rt[1], rs[1]);
    Universal_Gate F4(con4, con1, con3);
    Or_Gate F5(con5, con2, con4);
    Universal_Gate F6(con6, rt[2], rs[2]);
    Xor_Gate F7(con7, rt[2], rs[2]);
    Universal_Gate F8(con8, con5, con7);
    Or_Gate F9(con9, con6, con8);
    Universal_Gate F10(con10, rt[3], rs[3]);
    Xor_Gate F11(con11, rt[3], rs[3]);
    Universal_Gate F12(con12, con9, con11);
    Or_Gate F13(rd[0], con10, con12);
endmodule

module Left_Shift(rd, rs);
    input [3:0] rs;
    output [3:0] rd;
    Or_Gate G3(rd[3], rs[2], 1'b0);
    Or_Gate G4(rd[2], rs[1], 1'b0);
    Or_Gate G5(rd[1], rs[0], 1'b0);
    Or_Gate G6(rd[0], rs[3], 1'b0);
endmodule

module Right_Shift(rd, rt);
    input [3:0] rt;
    output [3:0] rd;
    Or_Gate G3(rd[3], rt[3], 1'b0);
    Or_Gate G4(rd[2], rt[3], 1'b0);
    Or_Gate G5(rd[1], rt[2], 1'b0);
    Or_Gate G6(rd[0], rt[1], 1'b0);
endmodule

module Bitwise_And(rd, rs, rt);
    input [3:0] rs, rt;
    output [3:0] rd;
    And_Gate G0(rd[0], rs[0], rt[0]);
    And_Gate G1(rd[1], rs[1], rt[1]);
    And_Gate G2(rd[2], rs[2], rt[2]);
    And_Gate G3(rd[3], rs[3], rt[3]);
endmodule

module Bitwise_Or(rd, rs, rt);
    input [3:0] rs, rt;
    output [3:0] rd;
    Or_Gate G0(rd[0], rs[0], rt[0]);
    Or_Gate G1(rd[1], rs[1], rt[1]);
    Or_Gate G2(rd[2], rs[2], rt[2]);
    Or_Gate G3(rd[3], rs[3], rt[3]);
endmodule

module ADD(rd, rs, rt);
    input [3:0] rs, rt;
    output [3:0] rd;
    Ripple_Carry_Adder_4 G3(rs, rt, 1'b0, cout, rd);
endmodule

module SUB(rd, rs, rt);
    input [3:0] rs, rt;
    output [3:0] rd;
    wire [3:0] n_rt;
    Not_4 G1(n_rt, rt);
    Ripple_Carry_Adder_4 G4(rs, n_rt, 1'b1, cout, rd);
endmodule

module Mux_8x1_4bit(out, a, b, c, d, e, f, g, h, sel);
    input [2:0] sel;
    input [3:0] a, b, c, d, e, f, g, h;
    output [3:0] out;
    wire [3:0] con1, con2, con3, con4, con5, con6;
    Mux_2x1_4bit G1(con1, a, b, sel[0]);
    Mux_2x1_4bit G2(con2, c, d, sel[0]);
    Mux_2x1_4bit G3(con3, e, f, sel[0]);
    Mux_2x1_4bit G4(con4, g, h, sel[0]);
    Mux_2x1_4bit G5(con5, con1, con2, sel[1]);
    Mux_2x1_4bit G6(con6, con3, con4, sel[1]);
    Mux_2x1_4bit G7(out, con5, con6, sel[2]);
endmodule

module Mux_2x1_4bit(out, a, b, sel);
    input [3:0] a, b;
    input sel;
    output [3:0] out;
    wire [3:0] aout, bout;
    Not_Gate G1(n_sel, sel);
    And_Gate G2(aout[0], a[0], n_sel);
    And_Gate G3(aout[1], a[1], n_sel);
    And_Gate G4(aout[2], a[2], n_sel);
    And_Gate G5(aout[3], a[3], n_sel);
    And_Gate G6(bout[0], b[0], sel);
    And_Gate G7(bout[1], b[1], sel);
    And_Gate G8(bout[2], b[2], sel);
    And_Gate G9(bout[3], b[3], sel);
    Or_Gate G10(out[0], aout[0], bout[0]);
    Or_Gate G11(out[1], aout[1], bout[1]);
    Or_Gate G12(out[2], aout[2], bout[2]);
    Or_Gate G13(out[3], aout[3], bout[3]);
endmodule

module Not_4(out, in);
    input [3:0] in;
    output [3:0] out;
    Not_Gate G0(out[0], in[0]);
    Not_Gate G1(out[1], in[1]);
    Not_Gate G2(out[2], in[2]);
    Not_Gate G3(out[3], in[3]);
endmodule

module Ripple_Carry_Adder_4(a, b, cin, cout, sum);
    input [3:0] a, b;
    input cin;
    output cout;
    output [3:0] sum;
    Full_Adder G0(a[0], b[0], cin, cout0, sum[0]);
    Full_Adder G1(a[1], b[1], cout0, cout1, sum[1]);
    Full_Adder G2(a[2], b[2], cout1, cout2, sum[2]);
    Full_Adder G3(a[3], b[3], cout2, cout, sum[3]);
endmodule

module Full_Adder(a, b, cin, cout, sum);
    input a, b, cin;
    output cout, sum;
    Xor_Gate G1(con1, a, b);
    Xor_Gate G2(sum, con1, cin);
    Majority G3(cout, a, b, cin);
endmodule

module Majority(out, a, b, c);
    input a, b, c;
    output out;
    And_Gate G1(con1, a, b);
    And_Gate G2(con2, a, c);
    And_Gate G3(con3, b, c);
    Or_Gate G4(con4, con1, con2);
    Or_Gate G5(out, con3, con4);
endmodule

module Xnor_Gate(out, a, b);
    input a, b;
    output out;
    Xor_Gate G1(con1, a, b);
    Not_Gate G2(out, con1);
endmodule

module Xor_Gate(out, a, b);
    input a, b;
    output out;
    Not_Gate G1(n_a, a);
    Not_Gate G2(n_b, b);
    And_Gate G3(con1, a, n_b);
    And_Gate G4(con2, n_a, b);
    Or_Gate G5(out, con1, con2);
endmodule

module Or_Gate(out, a, b);
    input a, b;
    output out;
    Not_Gate G1(n_a, a);
    Not_Gate G2(n_b, b);
    Nand_Gate G3(out, n_a, n_b);
endmodule

module Nand_Gate(out, a, b);
    input a, b;
    output out;
    And_Gate G1(con1, a, b);
    Not_Gate G2(out, con1);
endmodule

module And_Gate(out, a, b);
    input a, b;
    output out;
    Not_Gate G1(n_b, b);
    Universal_Gate G2(out, a, n_b);
endmodule

module Not_Gate(out, in);
    input in;
    output out;
    Universal_Gate G2(out, 1'b1, in);
endmodule

//
module Universal_Gate(out, a, b);
    input a, b;
    output out;
    wire n_b;
    not g0(n_b, b);
    and g1(out, a, n_b);
endmodule*/