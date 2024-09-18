`include "Lab1_Team1_Dmux_1x4_4bit.v"
`include "Lab1_Mux_4x1_4bit.v"
`timescale 1ns/1ps

module Crossbar_2x2_4bit(in1, in2, control, out1, out2);
input [4-1:0] in1, in2;
input control;
output [4-1:0] out1, out2;
wire [3:0] con1, con2, con3, con4;
not not_con(n_control, control);
Dmux_1x2_4bit D1(in1, con1, con2, control);
Dmux_1x2_4bit D2(in2, con3, con4, n_control);
Mux_2x1_4bit D3(con1, con3, control, out1);
Mux_2x1_4bit D4(con2, con4, n_control, out2);
endmodule
