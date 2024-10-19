`include "a1_Content_Addressable_Memory.v"
`timescale 1ns/1ps

module Content_Addressable_Memory_t();
    reg clk = 1'd0;
    reg wen = 1'd0, ren = 1'd0;
    reg [7:0] din = 8'd0;
    reg [3:0] addr = 4'd0;
    wire [3:0] dout;
    wire hit;
    Content_Addressable_Memory CAM(clk, wen, ren, din, addr, dout, hit);
    
    always #5 clk = ~clk;
    
    initial begin
        #10 wen = 1;
        #40 wen = 0;
        #110 $finish;
    end

    initial begin
        #80 ren = 1;
        #50 ren = 0;
    end

    initial begin
        #10 addr = 4'd0;
        #10 addr = 4'd7;
        #10 addr = 4'd15;
        #10 addr = 4'd9;
        #10 addr = 4'd0;
    end

    initial begin
        #10 din = 8'd4;
        #10 din = 8'd8;
        #10 din = 8'd35;
        #10 din = 8'd8;
        #10 din = 8'd0;
        #30 din = 8'd4;
        #10 din = 8'd8;
        #10 din = 8'd35;
        #10 din = 8'd87;
        #10 din = 8'd45;
        #10 din = 8'd0;
    end

    initial begin
        $dumpfile("a1.vcd");
        $dumpvars(0, Content_Addressable_Memory_t);
    end
endmodule