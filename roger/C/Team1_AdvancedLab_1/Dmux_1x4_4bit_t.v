`include "Lab1_Team1_Dmux_1x4_4bit.v"
`timescale 1ns / 1ps


module Dmux_1x4_4bit_t();
    reg [3:0] in;
    wire [3:0] a, b, c, d;
    reg [1:0] sel = 2'b0;

    Dmux_1x4_4bit D1(in, a, b, c, d, sel);
    
    initial begin
        repeat (2**2) begin
            in = 4'b0;
            repeat (2**4 - 1) begin
                #1
                in = in + 4'b1;
            end
            #1 
            sel = sel + 2'b1;
        end
        $finish;
    end
endmodule
