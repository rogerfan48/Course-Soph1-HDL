`include "Lab1_Team1_Toggle_Flip_Flop.v"
`timescale 1ns/1ps

module Toggle_Flip_Flop_t;
    reg clk = 1'b0;
    reg rst_n = 1'b0;
    reg t = 1'b0;
    wire q;

    Toggle_Flip_Flop TFF1(clk, q, t, rst_n);

    initial begin
        repeat (185) #4 clk = ~clk;
        $finish;
    end
    always #37 rst_n = ~rst_n;
    always #10 t = ~t;
endmodule


