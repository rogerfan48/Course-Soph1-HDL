`timescale 1ns/1ps

module Half_Adder(a, b, cout, sum);
    input a, b;
    output cout, sum;
    XOR H1(sum, a, b);
    AND H2(cout, a, b);
endmodule

module Full_Adder (a, b, cin, cout, sum);
    input a, b, cin;
    output cout, sum;
    XOR F1(aout, a, b);
    XOR F2(sum, aout, cin);
    Majority F3(a, b, cin, cout);
endmodule

module Majority(a, b, c, out);
    input a, b, c;
    output out;
    AND G1(aout, a, b);
    AND G2(bout, b, c);
    AND G3(cout, a, c);
    OR G4(dout, aout, cout);
    OR G5(out, dout, bout);
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

