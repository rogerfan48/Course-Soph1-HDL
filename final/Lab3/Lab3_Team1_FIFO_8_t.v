`include "Lab3_Team1_FIFO_8.v"
`timescale 1ns/1ps

module FIFO_t();
    reg clk = 0, rst_n = 0;
    reg wen = 0, ren = 1;
    reg [7:0] din = 0;
    wire [7:0] dout;
    wire error;
    FIFO_8 FF(clk, rst_n, wen, ren, din, dout, error);
    always #5 clk = !clk;
    initial begin
        #10 rst_n = 1;
    end
    initial begin
        #20 din = 56;
        #10 din = 11;
        #10 din = 42;
        #10 din = 10;
        #10 din = 23;
        #10 din = 20;
        #10 din = 6;
        #10 din = 85;
        #10 din = 45;
        #10 din = 12;
        #10 din = 77;
        #10 din = 33;
        #10 din = 99;
        #10 din = 1;
        #10 din = 36;
        #10 din = 0;
        #10 din = 127;
        #10 din = 87;
        #10 din = 63;
        #10 din = 25;
        #10 din = 18;
        #10 din = 9;
        #10 din = 31;
        #10 din = 55;
        #10 din = 44;
    end
    initial begin
        #20 wen = 1; ren = 0;
        #80 ren = 1;
        #10 ren = 0;
        #20 wen = 0;
        #10 ren = 1; wen = 1;
        #30 ren = 0;
        #80 wen = 0; ren = 1;
        #100 $finish;
    end

    initial begin
        $dumpfile("FIFO_t.vcd");
        $dumpvars(0, FIFO_t);
    end
endmodule