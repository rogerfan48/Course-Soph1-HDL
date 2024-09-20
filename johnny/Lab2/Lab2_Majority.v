`timescale 1ns/1ps

module Majority(a, b, c, out);
    input a, b, c;
    output out;
    AND G1(aout, a, b);
    AND G2(bout, b, c);
    AND G3(cout, a, c);
    OR G4(dout, aout, cout);
    OR G5(out, dout, bout);
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