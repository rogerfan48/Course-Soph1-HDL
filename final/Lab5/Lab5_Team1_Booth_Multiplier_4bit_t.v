`include "Lab5_Team1_Booth_Multiplier_4bit.v"
`timescale 1ns/1ps

module Booth_Multiplier_4bit_t();
    reg clk = 0, rst_n = 0, start = 0;
    reg signed [3:0] a = 4'b1000, b = 4'b1000;
    wire signed [7:0] p;
    
    Booth_Multiplier_4bit BM4(clk, rst_n, start, a, b, p);

    always #5 clk = ~clk;

    initial begin
        #10 rst_n = 1;
    end

    initial begin
        #10
        a = 4'd7;
        b = 4'd0;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        a = 4'd0;
        b = 4'd7;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        a = 4'd0;
        b = 4'd7;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        a = 4'd7;
        b = 4'd7;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        a = 4'b1000;
        b = 4'd0;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        a = 4'd0;
        b = 4'b1000;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        a = 4'd5;
        b = 4'b1000;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        a = 4'd4;
        b = 4'b1000;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        a = 4'b1011;
        b = 4'd7;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        a = 4'b1100;
        b = 4'b1100;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        a = 4'b1101;
        b = 4'd0;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        a = 4'b1001;
        b = 4'd7;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        a = 4'd7;
        b = 4'd5;
        #50
        $display("a = ", $signed(a), ", b = ", $signed(b), ", p = ", $signed(p), "\n");
        #20
        #10 $finish;
    end
        
    initial begin
        #10 start = 1;
        #10 start = 0;
        #60 start = 1;
        #10 start = 0;
        #60 start = 1;
        #10 start = 0;
        #60 start = 1;
        #10 start = 0;
        #60 start = 1;
        #10 start = 0;
        #60 start = 1;
        #10 start = 0;
        #60 start = 1;
        #10 start = 0;
        #60 start = 1;
        #10 start = 0;
        #60 start = 1;
        #10 start = 0;
        #60 start = 1;
        #10 start = 0;
        #60 start = 1;
        #10 start = 0;
        #60 start = 1;
        #10 start = 0;
        #60 start = 1;
        #10 start = 0;
    end
endmodule