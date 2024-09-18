`include "Lab1_Team1_Toggle_Flip_Flop.v"
`timescale 1ns / 1ps

module Toggle_Flip_Flop_t();
    reg t = 1'b0, rst_n = 1'b0, clk = 1'b0;
    wire q;
    Toggle_Flip_Flop T1(clk, q, t, rst_n);
    always #4 clk = ~clk;
    always #37 rst_n = ~rst_n;
    always #10 t = ~t;
endmodule