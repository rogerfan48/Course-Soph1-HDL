`include "a5_Parameterized_Ping_Pong_Counter.v"
`timescale 1ns/1ps

module Parameterized_Ping_Pong_Counter_t();
    reg clk = 0, rst_n = 0, enable = 1, flip = 0;
    reg [3:0] max = 4'd4, min = 4'd0;
    wire direction;
    wire [3:0] out;
    Parameterized_Ping_Pong_Counter PPPC(clk, rst_n, enable, flip, max, min, direction, out);

    always #5 clk = !clk;
    
    initial begin
        #150 flip = 1;
        #10 flip = 0;
    end

    initial begin
        #260 flip = 1;
        #10 flip = 0;
    end

    initial begin
        #280 flip = 1;
        #10 flip = 0;
    end

    initial begin
        #390 flip = 1;
        #10 flip = 0;
    end
    
    initial begin
        #430 flip = 1;
        #10 flip = 0;
    end

    initial begin
        #470 flip = 1;
        #10 flip = 0;
    end

    initial begin
        #460 enable = 0;
        #30 enable = 1;
    end

    initial begin
        #10 rst_n = 1;
        #90 rst_n = 0;
        #20 rst_n = 1;
        #90 rst_n = 0;
        #20 rst_n = 1;
        #90 rst_n = 0;
        #20 rst_n = 1;
    end

    initial begin
        #340 max = 3;
        #80 max = 2;
        #30 max = 3;
    end

    initial begin
        #390 min = 1;
        #10 min = 3;
        #20 min = 2;
        #30 min = 1;
    end

    initial begin
        #515 $finish;
    end

    initial begin
        $dumpfile("a5.vcd");
        $dumpvars(0, Parameterized_Ping_Pong_Counter_t);
    end
endmodule