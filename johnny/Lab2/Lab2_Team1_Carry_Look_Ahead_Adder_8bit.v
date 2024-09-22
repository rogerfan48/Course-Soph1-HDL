`timescale 1ns/1ps //not finish

module Carry_Look_Ahead_Adder_8bit(a, b, c0, s, c8);
input [8-1:0] a, b;
input c0;
output [8-1:0] s;
output c8;

endmodule

module Carry_Look_Ahead_Adder_4bit();

endmodule

module Carry_Look_Ahead_Adder_2bit(gl, pl, gr, pr, cin, cout);
    input gl, pl, gr, pr, cin;
    output cout;

endmodule

module PGSgen(a, b, cin, p, g, sum);
    input a, b, cin;
    output p, g, sum;
    And_Gate g0(g, a, b);
    Xor_Gate g1(p, a, b);
    Xor_Gate g2(con1, a, b);
    Xor_Gate g3(sum, con1, cin);
endmodule

module Xor_Gate(out, a, b);
    input a, b;
    output out;
    Not_Gate g0(n_a, a);
    Not_Gate g1(n_b, b);
    And_Gate g2(con1, a, n_b);
    And_Gate g3(con2, n_a, b);
    Or_Gate g4(out, con1, con2);
endmodule

module Or_Gate(out, a, b);
    input a, b;
    output out;
    Not_Gate g0(n_a, a);
    Not_Gate g1(n_b, b);
    nand g3(con1, a, b);
endmodule

module And_Gate(out, a, b);
    input a, b;
    output out;
    nand g0(con1, a, b);
    Not_Gate g1(out, con1);
endmodule

module Not_Gate(out, in);
    input in;
    output out;
    nand g0(out, in, in);
endmodule