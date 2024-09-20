`timescale 1ns/1ps

module NAND_Implement (a, b, sel, out);
    input a, b;
    input [3-1:0] sel;
    output out;
    wire [2:0] n_sel;
    nand G1(A, a, b);
    AND G2(B, a, b);
    OR G3(C, a, b);
    NOR G4(D, a, b);
    XOR G5(E, a, b);
    XNOR G6(F, a, b);
    NOT G7(G, a);
    NOT G8(H, a);
    NOT N1(n_sel[0], sel[0]);
    NOT N2(n_sel[1], sel[1]);
    NOT N3(n_sel[2], sel[2]);
    AND_4 A0(out1, A, n_sel[2], n_sel[1], n_sel[0]);
    AND_4 A1(out2, B, n_sel[2], n_sel[1], sel[0]);
    AND_4 A2(out3, C, n_sel[2], sel[1], n_sel[0]);
    AND_4 A3(out4, D, n_sel[2], sel[1], sel[0]);
    AND_4 A4(out5, E, sel[2], n_sel[1], n_sel[0]);
    AND_4 A5(out6, F, sel[2], n_sel[1], sel[0]);
    AND_4 A6(out7, G, sel[2], sel[1], n_sel[0]);
    AND_4 A7(out8, H, sel[2], sel[1], sel[0]);
    OR_8 O1(out, out1, out2, out3, out4, out5, out6, out7, out8);
endmodule

module AND_4 (out, a, b, c, d);
    input a, b, c, d;
    output out;
    AND G1(aout, a, b);
    AND G2(bout, aout, c);
    AND G3(out, bout, d);
endmodule

module OR_8 (out, a, b, c, d, e, f, g, h);
    input a, b, c, d, e, f, g, h;
    output out;
    OR_4 G5(aout, a, b, c, d);
    OR_4 G4(bout, e, f, g, h);
    OR G3(out, aout, bout);
endmodule

module OR_4 (out, a, b, c, d);
    input a, b, c, d;
    output out;
    OR G1(aout, a, b);
    OR G2(bout, aout, c);
    OR G3(out, bout, d);
endmodule

module XNOR(out, a, b);
    input a, b;
    output out;
    XOR XNOR1(out1, a, b);
    NOT XNOR2(out, out1);
endmodule

module NOR(out, a, b);
    input a, b;
    output out;
    OR NOR1(out1, a, b);
    NOT NOR2(out, out1);
endmodule
    

module XOR (out, a, b);
    input a, b;
    output out;
    NOT XOR1(aout, a);
    NOT XOR2(bout, b);
    AND XOR3(cout, aout, b);
    AND XOR4(dout, bout, a);
    OR XOR5(out, cout, dout); 
endmodule

module OR (out, a, b);
    input a, b;
    output out;
    NOT OR1 (aout, a);
    NOT OR2 (bout, b);
    nand (out, aout, bout);
endmodule

module AND (out, a, b);
    input a, b;
    output out;
    nand AND1(temp, a, b);
    NOT AND2(out, temp);
endmodule

module NOT (out, in);
    input in;
    output out;
    nand NOT1(out, in, in);
endmodule