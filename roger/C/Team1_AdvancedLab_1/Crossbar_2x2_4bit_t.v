`include "Lab1_Team1_Crossbar_2x2_4bit.v"
`timescale 1ns / 1ps


module Crossbar_2x2_4bit_t();
    reg [3:0] in1 = 4'b0;
    reg [3:0] in2 = 4'b0;
    wire [3:0] out1, out2;
    reg control = 1'b0;
    
    Crossbar_2x2_4bit C1(in1, in2, control, out1, out2);
    
    always #1 control = ~control;
    initial begin
        repeat (2**4) begin
            repeat (2**4-1) begin
                #2 in2 = in2 + 4'b1;
            end
            #2
            in1 = in1 + 4'b1;
            in2 = 4'b0;
        end
        $finish;
    end
endmodule
