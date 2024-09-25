`timescale 1ns/1ps

module Decode_And_Execute(rs, rt, sel, rd);
    input [4-1:0] rs, rt;
    input [3-1:0] sel;
    output [4-1:0] rd;

    wire [4-1:0] con0, con1, con2, con3, con4, con5, con6, con7;
    wire no_use0, no_use1;

    RCA_4bit_Minus RCAM1(rs, rt, 1'b1, no_use0, con0);
    RCA_4bit RCA1(rs, rt, 1'b0, no_use1, con1);
    OR_wu OR0(con2[0], rs[0], rt[0]);
    OR_wu OR1(con2[1], rs[1], rt[1]);
    OR_wu OR2(con2[2], rs[2], rt[2]);
    OR_wu OR3(con2[3], rs[3], rt[3]);
    AND_wu AND0(con3[0], rs[0], rt[0]);
    AND_wu AND1(con3[1], rs[1], rt[1]);
    AND_wu AND2(con3[2], rs[2], rt[2]);
    AND_wu AND3(con3[3], rs[3], rt[3]);
    Right_Shift_4bit RS1(rt, con4);
    Left_Shift_4bit LS1(rs, con5);
    Compare compare1(rs, rt, con6[0], con7[0]);

    BUF_wu BUF1(con6[1], 1'b1);
    BUF_wu BUF2(con6[2], 1'b0);
    BUF_wu BUF3(con6[3], 1'b1);
    BUF_wu BUF4(con7[1], 1'b1);
    BUF_wu BUF5(con7[2], 1'b1);
    BUF_wu BUF6(con7[3], 1'b1);

    MUX_8x1_4bit MUX8_1(con0, con1, con2, con3, con4, con5, con6, con7, sel, rd);
endmodule

module MUX_8x1_4bit (a0, a1, a2, a3, a4, a5, a6, a7, sel, out);
    input [4-1:0] a0, a1, a2, a3, a4, a5, a6, a7;
    input [3-1:0] sel;
    output [4-1:0] out;

    MUX_8x1_1bit MUX0(a0[0], a1[0], a2[0], a3[0], a4[0], a5[0], a6[0], a7[0], sel, out[0]);
    MUX_8x1_1bit MUX1(a0[1], a1[1], a2[1], a3[1], a4[1], a5[1], a6[1], a7[1], sel, out[1]);
    MUX_8x1_1bit MUX2(a0[2], a1[2], a2[2], a3[2], a4[2], a5[2], a6[2], a7[2], sel, out[2]);
    MUX_8x1_1bit MUX3(a0[3], a1[3], a2[3], a3[3], a4[3], a5[3], a6[3], a7[3], sel, out[3]);
endmodule

module MUX_8x1_1bit(a0, a1, a2, a3, a4, a5, a6, a7, sel, out);
    input a0, a1, a2, a3, a4, a5, a6, a7;
    input [3-1:0] sel;
    output out;

    wire con0, con1, con2, con3, con4, con5, con6, con7;
    wire [3-1:0] n_sel;

    NOT_wu NOT1(n_sel[0], sel[0]);
    NOT_wu NOT2(n_sel[1], sel[1]);
    NOT_wu NOT3(n_sel[2], sel[2]);

    AND4_wu AND4_0(con0, a0, n_sel[0], n_sel[1], n_sel[2]);
    AND4_wu AND4_1(con1, a1, sel[0], n_sel[1], n_sel[2]);
    AND4_wu AND4_2(con2, a2, n_sel[0], sel[1], n_sel[2]);
    AND4_wu AND4_3(con3, a3, sel[0], sel[1], n_sel[2]);
    AND4_wu AND4_4(con4, a4, n_sel[0], n_sel[1], sel[2]);
    AND4_wu AND4_5(con5, a5, sel[0], n_sel[1], sel[2]);
    AND4_wu AND4_6(con6, a6, n_sel[0], sel[1], sel[2]);
    AND4_wu AND4_7(con7, a7, sel[0], sel[1], sel[2]);

    OR8_wu OR8_1(out, con0, con1, con2, con3, con4, con5, con6, con7);
endmodule

module Compare(a, b, AltB, AeqB);
    input [4-1:0] a, b;
    output AltB, AeqB;

    wire [4-1:0] n_a, n_b;
    wire con01, con02, con03;
    wire con11, con12, con13;
    wire con21, con22, con23;
    wire con31, con32, con33;
    wire con41, con42, con43;

    NOT_wu NOT0(n_a[0], a[0]);
    NOT_wu NOT1(n_a[1], a[1]);
    NOT_wu NOT2(n_a[2], a[2]);
    NOT_wu NOT3(n_a[3], a[3]);
    NOT_wu NOT4(n_b[0], b[0]);
    NOT_wu NOT5(n_b[1], b[1]);
    NOT_wu NOT6(n_b[2], b[2]);
    NOT_wu NOT7(n_b[3], b[3]);

    AND_wu AND01(con01, n_a[0], b[0]);
    AND_wu AND02(con02, a[0], n_b[0]);
    NOR_wu NOR03(con03, con01, con02);
    
    AND_wu AND11(con11, n_a[1], b[1]);
    AND_wu AND12(con12, a[1], n_b[1]);
    NOR_wu NOR13(con13, con11, con12);

    AND_wu AND21(con21, n_a[2], b[2]);
    AND_wu AND22(con22, a[2], n_b[2]);
    NOR_wu NOR23(con23, con21, con22);

    AND_wu AND31(con31, n_a[3], b[3]);
    AND_wu AND32(con32, a[3], n_b[3]);
    NOR_wu NOR33(con33, con31, con32);

    AND_wu AND41(con41, con33, con21);
    AND3_wu AND42(con42, con33, con23, con11);
    AND4_wu AND43(con43, con33, con23, con13, con01);

    OR4_wu OR99(AltB, con31, con41, con42, con43);
    AND4_wu AND99(AeqB, con33, con23, con13, con03);
endmodule

module Right_Shift_4bit (a, out);
    input [4-1:0] a;
    output [4-1:0] out;

    BUF_wu BUF0(out[3], a[3]);
    BUF_wu BUF1(out[0], a[1]);
    BUF_wu BUF2(out[1], a[2]);
    BUF_wu BUF3(out[2], a[3]);
endmodule

module Left_Shift_4bit (a, out);
    input [4-1:0] a;
    output [4-1:0] out;

    BUF_wu BUF0(out[1], a[0]);
    BUF_wu BUF1(out[2], a[1]);
    BUF_wu BUF2(out[3], a[2]);
    BUF_wu BUF3(out[0], a[3]);
endmodule

module RCA_4bit_Minus (a, b, cin, cout, sum);
    input [4-1:0] a, b;
    input cin;
    output cout;
    output [4-1:0] sum;
    
    wire [4-1:0] b_;

    NOT_wu NOT0(b_[0], b[0]);
    NOT_wu NOT1(b_[1], b[1]);
    NOT_wu NOT2(b_[2], b[2]);
    NOT_wu NOT3(b_[3], b[3]);
    RCA_4bit RCA1(a, b_, 1, cout, sum);
endmodule

module RCA_4bit (a, b, cin, cout, sum);
    input [4-1:0] a, b;
    input cin;
    output cout;
    output [4-1:0] sum;
    
    wire c1, c2, c3;

    Full_Adder FA0(a[0], b[0], cin, c1, sum[0]);
    Full_Adder FA1(a[1], b[1], c1, c2, sum[1]);
    Full_Adder FA2(a[2], b[2], c2, c3, sum[2]);
    Full_Adder FA3(a[3], b[3], c3, cout, sum[3]);
endmodule

module Full_Adder (a, b, cin, cout, sum);
    input a, b, cin;
    output cout, sum;

    wire con1;

    XOR_wu XOR1 (con1, a, b);
    XOR_wu XOR2 (sum, cin, con1);
    Majority MJ1 (a, b, cin, cout);
endmodule

module Majority(a, b, c, out);
    input a, b, c;
    output out;

    wire con1, con2, con3, con4;

    AND_wu AND1 (con1, a, b);
    AND_wu AND2 (con2, a, c);
    OR_wu OR1 (con3, con1, con2);
    AND_wu AND4 (con4, b, c);
    OR_wu OR2 (out, con3, con4);
endmodule

// -----

module BUF_wu (out, a);
    input a;
    output out;
    Universal_Gate UG1(out, a, 0);
endmodule

module NOT_wu (out, a);
    input a;
    output out;
    Universal_Gate UG1(out, 1, a);
endmodule

module AND_wu (out, a, b);
    input a, b;
    output out;
    wire n_b;
    NOT_wu NOT1(n_b, b);
    Universal_Gate UG1(out, a, n_b);
endmodule

module AND3_wu (out, a, b, c);
    input a, b, c;
    output out;
    wire con1;
    AND_wu AND1(con1, a, b);
    AND_wu AND2(out, c, con1);
endmodule

module AND4_wu (out, a, b, c, d);
    input a, b, c, d;
    output out;
    wire con1, con2;
    AND_wu AND1(con1, a, b);
    AND_wu AND2(con2, c, d);
    AND_wu AND3(out, con1, con2);
endmodule

module OR_wu (out, a, b);
    input a, b;
    output out;
    wire n_a, n_out;
    NOT_wu NOT1(n_a, a);
    Universal_Gate UG1(n_out, n_a, b);
    NOT_wu NOT2(out, n_out);
endmodule

module OR4_wu (out, a, b, c, d);
    input a, b, c, d;
    output out;
    wire con1, con2;
    OR_wu OR1(con1, a, b);
    OR_wu OR2(con2, c, d);
    OR_wu OR3(out, con1, con2);
endmodule

module OR8_wu (out, a, b, c, d, e, f, g, h);
    input a, b, c, d, e, f, g, h;
    output out;
    wire con1, con2;
    OR4_wu OR1(con1, a, b, c, d);
    OR4_wu OR2(con2, e, f, g, h);
    OR_wu OR3(out, con1, con2);
endmodule

module NOR_wu (out, a, b);
    input a, b;
    output out;
    wire con1;
    OR_wu OR1(con1, a, b);
    NOT_wu NOT1(out, con1);
endmodule

module XOR_wu (out, a, b);
    input a, b;
    output out;
    wire con1, con2;
    Universal_Gate UG1(con1, a, b);
    Universal_Gate UG2(con2, b, a);
    OR_wu OR1(out, con1, con2);
endmodule