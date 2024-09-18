`timescale 1ns/1ps

module XOR_Gate(out, a, b);
    input a, b;
    output out;

    wire n_a, n_b, con1, con2;
    
    not NOT1(n_a, a);
    not NOT2(n_b, b);
    and AND1(con1, a, n_b);
    and AND2(con2, b, n_a);
    or OR1(out, con1, con2);
endmodule

module Toggle_Flip_Flop(clk, q, t, rst_n);
    input clk;
    input t;
    input rst_n;
    output q;

    wire con1, con2;

    XOR_Gate XOR1(con1, t, q);
    and AND1(con2, con1, rst_n);
    D_Flip_Flop DFF1(clk, con2, q);
endmodule