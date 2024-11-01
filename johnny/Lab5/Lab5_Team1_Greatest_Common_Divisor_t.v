`include "Lab5_Team1_Greatest_Common_Divisor.v"
`timescale 1ns / 1ps

module Greatest_Common_Divisor_t ();
    reg clk = 0, rst_n = 0, start = 0;
    reg [15:0] a, b;
    wire done;
    wire [15:0] gcd;
    Greatest_Common_Divisor GCD(clk, rst_n, start, a, b, done, gcd);

    always #5 clk = ~clk;

    initial begin
        #10 rst_n = 1;
    end

    initial begin
        #20 start = 1;
        #10 start = 0;
        #100 start = 1;
        #10 start = 0;
        #200 start = 1;
        #10 start = 0;
        #50 start = 1;
        #10 start = 0;
        #50 $finish;
    end

    initial begin
        #20 
        a = 16'd18;
        b = 16'd12;
        #10
        a = 16'd15;
        b = 16'd8;
        #310
        a = 16'd12;
        b = 16'd0;
        #60
        a = 16'd0;
        b = 16'd4;
    end

    initial begin
        $dumpfile("Greatest_Common_Divisor_t.vcd");
        $dumpvars(0, Greatest_Common_Divisor_t);
    end
endmodule