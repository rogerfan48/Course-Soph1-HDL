`include "Lab1_Team1_Crossbar_4x4_4bit.v"
`timescale 1ns / 1ps


module Crossbar_4x4_4bit_t();
    reg [3:0] in1, in2, in3, in4;
    reg [4:0] control = 5'b0;
    wire [3:0] out1, out2, out3, out4;
    Crossbar_4x4_4bit C1(in1, in2, in3, in4, out1, out2, out3, out4, control);
    initial begin
        in1 = 4'b1010;
        in2 = 4'b1011;
        in3 = 4'b1100;
        in4 = 4'b1101;
        repeat(2**5) #1 control = control + 5'b1;
        $finish;
    end
    initial begin
        $monitor("%h%h%h%h", out1, out2, out3, out4);
    end
endmodule
