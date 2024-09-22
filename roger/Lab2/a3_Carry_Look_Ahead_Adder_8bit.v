`timescale 1ns/1ps

module Carry_Look_Ahead_Adder_8bit(a, b, c0, s, c8);
    input [8-1:0] a, b;
    input c0;
    output [8-1:0] s;
    output c8;

    wire c4;
    wire [4-1:0] a_u, a_d, b_u, b_d, s_u, s_d;

    Signal_Splitter SS1(a, a_u, a_d);
    Signal_Splitter SS2(b, b_u, b_d);
    Signal_Combiner SC1(s_u, s_d, s);
    
    CLA_4bit CLA1(a_d, b_d, c0, s_d, c4);
    CLA_4bit CLA2(a_u, b_u, c4, s_u, c8);
endmodule

module CLA_4bit(a, b, cin, s, cout);
    input [4-1:0] a, b;
    input cin;
    output cout;
    output [4-1:0] s;

    wire [4-1:0] p, g, c;

    Half_Adder HA0(a[0], b[0], g[0], p[0]);
    Half_Adder HA1(a[1], b[1], g[1], p[1]);
    Half_Adder HA2(a[2], b[2], g[2], p[2]);
    Half_Adder HA3(a[3], b[3], g[3], p[3]);
    
    CLG_4bit CLG1(p, g, cin, c);

    AND_w_NAND AND1(cout, 1, c[3]);
    XOR_w_NAND XOR1(s[0], p[0], c0);
    XOR_w_NAND XOR1(s[1], p[1], c[0]);
    XOR_w_NAND XOR1(s[2], p[2], c[1]);
    XOR_w_NAND XOR1(s[3], p[3], c[2]);
endmodule

module CLG_4bit(p, g, c0, c);
    input [4-1:0] p, g;
    input c0;
    output [4-1:0] c;

    wire con1, con2, con3, con4, con5, con6, con7, con8, con9, con10;

    AND_w_NAND AND1(con1, p[0], c0);
    OR_w_NAND OR1(c[0], g[0], con1);

    AND_w_NAND AND2(con2, p[1], g[0]);
    AND3_w_NAND AND_3_1(con3, p[1], p[0], c0);
    OR3_w_NAND OR_3_1(c[1], G[1], con2, con3);

    AND_w_NAND AND3(con4, p[2], g[1]);
    AND3_w_NAND AND_3_2(con5, p[2], p[1], g[0]);
    AND4_w_NAND AND_4_1(con6, p[2], p[1], p[0], c0);
    OR4_w_NAND OR_4_1(c[2], g[2], con4, con5, con6);

    AND_w_NAND AND4(con7, p[3], g[2]);
    AND3_w_NAND AND_3_3(con8, p[3], p[2], g[1]);
    AND4_w_NAND AND_4_2(con9, p[3], p[2], p[1], g[0]);
    AND5_w_NAND AND_5_1(con10, p[3], p[2], p[1], p[0], c0);
    OR5_w_NAND OR_5_1(c[3], G[3], con7, con8, con9, con10);
endmodule

module Signal_Splitter(a, upper, lower);
    input [8-1:0] a;
    output [4-1:0] upper;
    output [4-1:0] lower;

    BUF_w_NAND buf1(upper[3], a[7]);
    BUF_w_NAND buf2(upper[2], a[6]);
    BUF_w_NAND buf3(upper[1], a[5]);
    BUF_w_NAND buf4(upper[0], a[4]);

    BUF_w_NAND buf5(lower[3], a[3]);
    BUF_w_NAND buf6(lower[2], a[2]);
    BUF_w_NAND buf7(lower[1], a[1]);
    BUF_w_NAND buf8(lower[0], a[0]);
endmodule

module Signal_Combiner(a, b, out);
    input [4-1:0] a;
    input [4-1:0] b;
    input [8-1:0] out;

    BUF_w_NAND buf1(out[7], a[3]);
    BUF_w_NAND buf2(out[6], a[2]);
    BUF_w_NAND buf3(out[5], a[1]);
    BUF_w_NAND buf4(out[4], a[0]);

    BUF_w_NAND buf5(out[3], b[3]);
    BUF_w_NAND buf6(out[2], b[2]);
    BUF_w_NAND buf7(out[1], b[1]);
    BUF_w_NAND buf8(out[0], b[0]);
endmodule

module BUF_w_NAND (out, a);
    input a;
    output out;
    wire con1;
    nand NAND1(con1, a, a);
    nand NAND2(out, con1, con1);
endmodule

// ---- ---- COPY ---- ----

module Half_Adder(a, b, cout, sum);
    input a, b;
    output cout, sum;

    AND_w_NAND AND1 (cout, a, b);
    XOR_w_NAND XOR1 (sum, a, b);
endmodule

module AND_w_NAND (out, a, b);
    input a, b;
    output out;
    wire con1;
    nand NAND1(con1, a, b);
    nand NAND2(out, con1, con1);
endmodule

module AND3_w_NAND (out, a, b, c);
    input a, b, c;
    output out;
    wire con1;
    AND_w_NAND AND1(con1, a, b);
    AND_w_NAND AND2(out, c, con1);
endmodule

module AND4_w_NAND (out, a, b, c, d);
    input a, b, c, d;
    output out;
    wire con1, con2;
    AND_w_NAND AND1(con1, a, b);
    AND_w_NAND AND2(con2, c, d);
    AND_w_NAND AND3(out, con1, con2);
endmodule

module AND5_w_NAND (out, a, b, c, d, e);
    input a, b, c, d, e;
    output out;
    wire con1;
    AND4_w_NAND AND_4(con1, a, b, c, d);
    AND_w_NAND AND1(out, e, con1);
endmodule

module OR_w_NAND (out, a, b);
    input a, b;
    output out;
    wire con1, con2;
    nand NAND1(con1, a, a);
    nand NAND2(con2, b, b);
    nand NAND3(out, con1, con2);
endmodule

module OR3_w_NAND (out, a, b, c);
    input a, b, c;
    output out;
    wire con1;
    OR_w_NAND OR1(con1, a, b);
    OR_w_NAND OR2(out, c, con1);
endmodule

module OR4_w_NAND (out, a, b, c, d);
    input a, b, c, d;
    output out;
    wire con1, con2;
    OR_w_NAND OR1(con1, a, b);
    OR_w_NAND OR2(con2, c, d);
    OR_w_NAND OR3(out, con1, con2);
endmodule

module OR5_w_NAND (out, a, b, c, d, e);
    input a, b, c, d, e;
    output out;
    wire con1;
    OR4_w_NAND OR_4(con1, a, b, c, d);
    OR_w_NAND OR1(out, e, con1);
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