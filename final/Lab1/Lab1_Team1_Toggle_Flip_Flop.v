`timescale 1ns/1ps

module Toggle_Flip_Flop(clk, q, t, rst_n);
    input clk;
    input t;
    input rst_n;
    output q;
    wire con1, con2;
    XOR_Gate G1(t, q, con1);
    and G2(con2, con1, rst_n);
    D_Flip_Flop G3(clk, con2, q);
endmodule

module XOR_Gate(a, b, out);
    input a, b;
    output out;
    wire con1, con2;
    not nota(n_a, a);
    not notb(n_b, b);
    and g1(con1, a, n_b);
    and g2(con2, n_a, b);
    or g3(out, con1, con2);
endmodule

module D_Flip_Flop(clk, d, q);
    input clk;
    input d;
    output q;
    wire q1;
    not not_clk(clk_, clk);
    D_Latch D1(clk_, d, q1);
    D_Latch D2(clk, q1, q);
endmodule

module D_Latch(e, d, q);
    input e;
    input d;
    output q;
    wire aout, bout;
    not not_d(d_, d);
    nand g1(aout, d, e);
    nand g2(bout, d_, e);
    nand g3(q_, bout, q);
    nand g4(q, aout, q_);
endmodule