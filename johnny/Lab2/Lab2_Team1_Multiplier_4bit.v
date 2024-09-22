`timescale 1ns/1ps

module Multiplier_4bit(a, b, p);
    input [4-1:0] a, b;
    output [8-1:0] p;
    AND g0_0(con0_0, a[0], b[0]);
    AND g0_1(con0_1, a[1], b[0]);
    AND g0_2(con0_2, a[2], b[0]);
    AND g0_3(con0_3, a[3], b[0]);
    AND g1_0(con1_0, a[0], b[1]);
    AND g1_1(con1_1, a[1], b[1]);
    AND g1_2(con1_2, a[2], b[1]);
    AND g1_3(con1_3, a[3], b[1]);
    AND g2_0(con2_0, a[0], b[2]);
    AND g2_1(con2_1, a[1], b[2]);
    AND g2_2(con2_2, a[2], b[2]);
    AND g2_3(con2_3, a[3], b[2]);
    AND g3_0(con3_0, a[0], b[3]);
    AND g3_1(con3_1, a[1], b[3]);
    AND g3_2(con3_2, a[2], b[3]);
    AND g3_3(con3_3, a[3], b[3]);
    BUF BUF1(p[0], con0_0);
    Half_Adder HA0(con1_0, con0_1, cout0110, p[1]);
    Full_Adder FA0(con0_2, con1_1, cout0110, cout0211, sum0211);
    Half_Adder HA1(sum0211, con2_0, cout1120, p[2]);
    Full_Adder FA1(cout0211, con0_3, con1_2, cout0312, sum0312);
    Full_Adder FA2(cout1120, sum0312, con2_1, cout1221, sum1221);
    Half_Adder HA2(sum1221, con3_0, cout2130, p[3]);
    Half_Adder HA3(con1_3, cout0312, coutXX13, sumXX13);
    Full_Adder FA3(sumXX13, cout1221, con2_2, cout1322, sum1322);
    Full_Adder FA4(sum1322, cout2130, con3_1, cout2231, p[4]);
    Full_Adder FA5(coutXX13, cout1322, con2_3, coutXX23, sumXX23);
    Full_Adder FA6(sumXX23, cout2231, con3_2, cout2332, p[5]);
    Full_Adder FA7(coutXX23, cout2332, con3_3, p[7], p[6]);
endmodule

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

module BUF(out, in);
    input in;
    output out;
    NOT NOT1(n_in, in);
    NOT NOT2(out, n_in);
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