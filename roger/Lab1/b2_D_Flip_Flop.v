`timescale 1ns/1ps

module D_Flip_Flop(clk, d, q);
    input clk;
    input d;
    output q;

    wire n_clk, link;
    not NOT1(n_clk, clk);
    D_Latch MasterLatch(n_clk, d, link);
    D_Latch SlaveLatch(clk, link, q);
endmodule

module D_Latch(e, d, q);
    input e;
    input d;
    output q;

    wire n_d, l1, l2, nq;

    not NOT1(n_d, d);
    nand NAND1(l1, d, e);
    nand NAND2(l2, n_d, e);
    nand NAND3(q, l1, nq);
    nand NAND4(nq, l2, q);
endmodule