`timescale 1ns/1ps

module Multiplier_4bit(a, b, p);
    input [4-1:0] a, b;
    output [8-1:0] p;

    wire [4-1:0] a0, a1, a2, b0, b1, b2, s0, s1, s2;
    wire cout0, cout1, cout2;

    AND_w_NAND AND1(p[0], a[0], b[0]);

    AND_w_NAND AND2(a0[0], a[0], b[1]);
    AND_w_NAND AND3(a0[1], a[0], b[2]);
    AND_w_NAND AND4(a0[2], a[0], b[3]);
    BUF_w_NAND BUF1(a0[3], 0);
    AND_w_NAND AND5(b0[0], a[1], b[0]);
    AND_w_NAND AND6(b0[1], a[1], b[1]);
    AND_w_NAND AND7(b0[2], a[1], b[2]);
    AND_w_NAND AND8(b0[3], a[1], b[3]);
    RCA_4bit Adder0(a0, b0, 0, cout0, s0);
    BUF_w_NAND BUF2(p[1], s0[0]);

    BUF_w_NAND BUF3 (a1[0], s0[1]);
    BUF_w_NAND BUF4 (a1[1], s0[2]);
    BUF_w_NAND BUF5 (a1[2], s0[3]);
    BUF_w_NAND BUF6 (a1[3], cout0);
    AND_w_NAND AND9 (b1[0], a[2], b[0]);
    AND_w_NAND AND10(b1[1], a[2], b[1]);
    AND_w_NAND AND11(b1[2], a[2], b[2]);
    AND_w_NAND AND12(b1[3], a[2], b[3]);
    RCA_4bit Adder1(a1, b1, 0, cout1, s1);
    BUF_w_NAND BUF7(p[2], s1[0]);

    BUF_w_NAND BUF8 (a2[0], s1[1]);
    BUF_w_NAND BUF9 (a2[1], s1[2]);
    BUF_w_NAND BUF10(a2[2], s1[3]);
    BUF_w_NAND BUF11(a2[3], cout1);
    AND_w_NAND AND13(b2[0], a[3], b[0]);
    AND_w_NAND AND14(b2[1], a[3], b[1]);
    AND_w_NAND AND15(b2[2], a[3], b[2]);
    AND_w_NAND AND16(b2[3], a[3], b[3]);
    RCA_4bit Adder2(a2, b2, 0, cout2, s2);
    BUF_w_NAND BUF12(p[3], s2[0]);
    BUF_w_NAND BUF13(p[4], s2[1]);
    BUF_w_NAND BUF14(p[5], s2[2]);
    BUF_w_NAND BUF15(p[6], s2[3]);
    BUF_w_NAND BUF16(p[7], cout2);
endmodule

// ---- ---- COPY ---- ----

module BUF_w_NAND (out, a);
    input a;
    output out;
    wire con1;
    nand NAND1(con1, a, a);
    nand NAND2(out, con1, con1);
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

// ---- ---- COPY ---- ----

module Full_Adder (a, b, cin, cout, sum);
    input a, b, cin;
    output cout, sum;

    wire con1;

    XOR_w_NAND XOR1 (con1, a, b);
    XOR_w_NAND XOR2 (sum, cin, con1);
    Majority MJ1 (a, b, cin, cout);
endmodule

// ---- ---- COPY ---- ----

module Majority(a, b, c, out);
    input a, b, c;
    output out;

    wire con1, con2, con3, con4;

    AND_w_NAND AND1 (con1, a, b);
    AND_w_NAND AND2 (con2, a, c);
    OR_w_NAND OR1 (con3, con1, con2);
    AND_w_NAND AND4 (con4, b, c);
    OR_w_NAND OR2 (out, con3, con4);
endmodule

// ---- ---- COPY ---- ----

module AND_w_NAND (out, a, b);
    input a, b;
    output out;
    wire con1;
    nand NAND1(con1, a, b);
    nand NAND2(out, con1, con1);
endmodule

module OR_w_NAND (out, a, b);
    input a, b;
    output out;
    wire con1, con2;
    nand NAND1(con1, a, a);
    nand NAND2(con2, b, b);
    nand NAND3(out, con1, con2);
endmodule

module XOR_w_NAND (out, a, b);
    input a, b;
    output out;
    wire con1, con2, con3;
    nand NAND1(con1, a, b);
    nand NAND2(con2, a, con1);
    nand NAND3(con3, b, con1);
    nand NAND4(out, con2, con3);
endmodule