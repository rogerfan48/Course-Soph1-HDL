`timescale 1ns/1ps

module NAND_Implement (a, b, sel, out);
    input a, b;
    input [3-1:0] sel;
    output out;

    wire con0, con1, con2, con3, con4, con5, con6, con7;

    nand NAND1 (con0, a, b);
    AND_w_NAND AND1 (con1, a, b);
    OR_w_NAND OR1 (con2, a, b);
    NOR_w_NAND NOR1 (con3, a, b);
    XOR_w_NAND XOR1 (con4, a, b);
    XNOR_w_NAND XNOR1 (con5, a, b);
    NOT_w_NAND NOT4 (con6, a);
    NOT_w_NAND NOT5 (con7, a);

    MUX_8x1_1bit MUX1(con0, con1, con2, con3, con4, con5, con6, con7, sel, out);
endmodule

module MUX_8x1_1bit(a0, a1, a2, a3, a4, a5, a6, a7, sel, out);
    input a0, a1, a2, a3, a4, a5, a6, a7;
    input [3-1:0] sel;
    output out;

    wire con0, con1, con2, con3, con4, con5, con6, con7;
    wire [3-1:0] n_sel;

    NOT_w_NAND NOT1(n_sel[0], sel[0]);
    NOT_w_NAND NOT2(n_sel[1], sel[1]);
    NOT_w_NAND NOT3(n_sel[2], sel[2]);

    AND4_w_NAND AND4_0(con0, a0, n_sel[0], n_sel[1], n_sel[2]);
    AND4_w_NAND AND4_1(con1, a1, sel[0], n_sel[1], n_sel[2]);
    AND4_w_NAND AND4_2(con2, a2, n_sel[0], sel[1], n_sel[2]);
    AND4_w_NAND AND4_3(con3, a3, sel[0], sel[1], n_sel[2]);
    AND4_w_NAND AND4_4(con4, a4, n_sel[0], n_sel[1], sel[2]);
    AND4_w_NAND AND4_5(con5, a5, sel[0], n_sel[1], sel[2]);
    AND4_w_NAND AND4_6(con6, a6, n_sel[0], sel[1], sel[2]);
    AND4_w_NAND AND4_7(con7, a7, sel[0], sel[1], sel[2]);

    OR8_w_NAND OR8_1(out, con0, con1, con2, con3, con4, con5, con6, con7);
endmodule

module AND4_w_NAND (out, a, b, c, d);
    input a, b, c, d;
    output out;
    wire con1, con2;
    AND_w_NAND AND1(con1, a, b);
    AND_w_NAND AND2(con2, c, d);
    AND_w_NAND AND3(out, con1, con2);
endmodule

module OR4_w_NAND (out, a, b, c, d);
    input a, b, c, d;
    output out;
    wire con1, con2;
    OR_w_NAND OR1(con1, a, b);
    OR_w_NAND OR2(con2, c, d);
    OR_w_NAND OR3(out, con1, con2);
endmodule

module OR8_w_NAND (out, a, b, c, d, e, f, g, h);
    input a, b, c, d, e, f, g, h;
    output out;
    wire con1, con2;
    OR4_w_NAND OR1(con1, a, b, c, d);
    OR4_w_NAND OR2(con2, e, f, g, h);
    OR_w_NAND OR3(out, con1, con2);
endmodule

module NOT_w_NAND (out, a);
    input a;
    output out;
    nand NAND1(out, a, a);
endmodule

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

module NOR_w_NAND (out, a, b);
    input a, b;
    output out;
    wire con1;
    OR_w_NAND OR1(con1, a, b);
    nand NAND1(out, con1, con1);
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

module XNOR_w_NAND (out, a, b);
    input a, b;
    output out;
    wire con1;
    XOR_w_NAND XOR1(con1, a, b);
    nand NAND1(out, con1, con1);
endmodule