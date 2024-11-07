`include "a3_Greatest_Common_Divisor.v"
`timescale 1ns/1ps

module Greatest_Common_Divisor_t ();
    reg clk = 1'b0;;
    reg rst_n = 1'b0;
    reg start = 1'b0;
    reg [16-1:0] a = 16'd0;
    reg [16-1:0] b = 16'd0;
    wire done;
    wire [16-1:0] gcd;

    Greatest_Common_Divisor GCD(clk, rst_n, start, a, b, done, gcd);

    always #5 clk = ~clk;

    initial begin
        #10 rst_n = 1'b1;
        a = 16'd26;
        b = 16'd38;
        start = 1'b1;
        #40
        a = 16'd72;
        b = 16'd98;
        #180 start = 1'b0;
        a = 16'd195;
        b = 16'd240;
        #20 start = 1'b1;
        #100 start = 1'b0;
        a = 16'd216;
        b = 16'd180;
        #60 start = 1'b1;
        #30 start = 1'b0;
        #100 start = 1'b1;
        a = 16'd14;
        b = 16'd1;
        #60 start = 1'b0;
        #140
        a = 16'd28;
        b = 16'd28;
        #10 start = 1'b1;
        #60
        $finish;
    end

    initial begin
        $dumpfile("a3.vcd");
        $dumpvars(0, Greatest_Common_Divisor_t);
    end
endmodule
