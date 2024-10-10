`include "a2_FIFO_8.v"
`timescale 1ns/1ps

module FIFO_8_t;
    reg clk = 1'b0;
    reg rst_n = 1'b0;
    reg ren = 1'b1;
    reg wen = 1'b0;
    reg [8-1:0] din = 8'b0;
    wire [8-1:0] dout;
    wire error;

    parameter cyc = 10;
    always #(cyc/2) clk = !clk;

    FIFO_8 FIFO1(clk, rst_n, wen, ren, din, dout, error);

    initial begin
        @(negedge clk) rst_n = 1'b1;
        @(negedge clk)
        din = 8'd56;
        ren = 1'b0;
        wen = 1'b1;
        @(negedge clk) din = 8'd11;
        @(negedge clk) din = 8'd42;
        @(negedge clk) din = 8'd10;
        @(negedge clk) din = 8'd23;
        @(negedge clk) din = 8'd20;
        @(negedge clk) din = 8'd6;
        @(negedge clk) din = 8'd85;
        @(negedge clk) din = 8'd45;
        ren = 1'b1;
        @(negedge clk) din = 8'd12;
        ren = 1'b0;
        @(negedge clk) din = 8'd77;
        @(negedge clk) $finish;
    end

    initial begin
        $dumpfile("a2.vcd");
        $dumpvars(0, FIFO_8_t);
    end
endmodule