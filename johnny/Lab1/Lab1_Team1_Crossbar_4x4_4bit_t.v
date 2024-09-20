`include "Lab1_Team1_Crossbar_4x4_4bit.v"
`timescale 1ns / 1ps


module Crossbar_4x4_4bit_t();
    reg [3:0] in1, in2, in3, in4;
    reg [4:0] control = 5'b0;
    wire [3:0] out1, out2, out3, out4;
    Crossbar_4x4_4bit C1(in1, in2, in3, in4, out1, out2, out3, out4, control);
    initial begin
        in1 = 4'b0001;
        in2 = 4'b0011;
        in3 = 4'b0101;
        in4 = 4'b0111;
        repeat(2**5)begin
        #1
        control = control + 5'b1;
        in1 = in1 + 4'b1;
        in2 = in2 + 4'b1;
        in3 = in3 + 4'b1;
        in4 = in4 + 4'b1;
        end 
        $finish;
    end
    initial begin
        $monitor("%h%h%h%h", out1, out2, out3, out4);
    end
endmodule
