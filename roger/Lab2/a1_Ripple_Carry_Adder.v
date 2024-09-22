`timescale 1ns/1ps

module Ripple_Carry_Adder(a, b, cin, cout, sum);
    input [8-1:0] a, b;
    input cin;
    output cout;
    output [8-1:0] sum;
    
    wire c1, c2, c3, c4, c5, c6, c7;

    Full_Adder FA0(a[0], b[0], cin, c1, sum[0]);
    Full_Adder FA1(a[1], b[1], c1, c2, sum[1]);
    Full_Adder FA2(a[2], b[2], c2, c3, sum[2]);
    Full_Adder FA3(a[3], b[3], c3, c4, sum[3]);
    Full_Adder FA4(a[4], b[4], c4, c5, sum[4]);
    Full_Adder FA5(a[5], b[5], c5, c6, sum[5]);
    Full_Adder FA6(a[6], b[6], c6, c7, sum[6]);
    Full_Adder FA7(a[7], b[7], c7, cout, sum[7]);
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