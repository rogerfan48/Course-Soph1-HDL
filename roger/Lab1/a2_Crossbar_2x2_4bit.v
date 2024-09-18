`timescale 1ns/1ps

module Crossbar_2x2_4bit(in1, in2, control, out1, out2);
    input [4-1:0] in1, in2;
    input control;
    output [4-1:0] out1, out2;

    wire [4-1:0] con1, con2, con3, con4;
    wire n_control;

    not NOT1(n_control, control);
    Dmux_1x2_4bit DMUX1(in1, con1, con2, control);
    Dmux_1x2_4bit DMUX2(in2, con3, con4, n_control);
    Mux_2x1_4bit MUX1(con1, con3, control, out1);
    Mux_2x1_4bit MUX2(con2, con4, n_control, out2);
endmodule