`timescale 1ns/1ps

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