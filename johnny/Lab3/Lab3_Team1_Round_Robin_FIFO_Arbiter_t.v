`include "Lab3_Team1_Round_Robin_FIFO_Arbiter.v"
`timescale 1ns/1ps

module Round_Robin_FIFO_Arbiter_t ();
    reg clk = 0, rst_n = 0;
    reg [3:0] wen;
    reg [8-1:0] a, b, c, d;
    wire [8-1:0] dout;
    wire valid;

    Round_Robin_FIFO_Arbiter RR(clk, rst_n, wen, a, b, c, d, dout, valid);

    always #5 clk = !clk;
    initial begin
        #10 rst_n = !rst_n;
    end
    initial begin
        wen = 4'b1111;
        #20 wen = 4'b1000;
        #10 wen = 4'b0100;
        #10 wen = 4'b0000;
        #30 wen = 4'b0001;
        #10 wen = 4'b0000;
        #40 wen = 4'b1111;
        #10 wen = 4'b0000;
        #50 $finish;
    end
    initial begin
        #10
        a = 87;
        b = 56;
        c = 9;
        d = 13;
        #10
        d = 85;
        a = 0;
        b = 0;
        c = 0;
        #10
        c = 139;
        d = 0;
        #10
        c = 0;
        #30
        a = 51;
        #50
        a = 1;
        b = 2;
        c = 3;
        d = 4;
        rst_n = !rst_n;
        #10
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        rst_n = !rst_n;
    end
    initial begin
        $dumpfile("Round_Robin_FIFO_Arbiter_t.vcd");
        $dumpvars(0, Round_Robin_FIFO_Arbiter_t);
    end
endmodule