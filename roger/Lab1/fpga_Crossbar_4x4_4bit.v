`timescale 1ns/1ps

module Crossbar_2x2_4bit_fpga(in1, in2, control, out1, out2, out3, out4);
    input [4-1:0] in1, in2;
    input control;
    output [4-1:0] out1, out2, out3, out4;
    wire [3:0] con1, con2, con3, con4;
    not not_con(n_control, control);
    Dmux_1x2_4bit D1(in1, con1, con2, control);
    Dmux_1x2_4bit D2(in2, con3, con4, n_control);
    Mux_2x1_4bit D3(con1, con3, control, out1);
    Mux_2x1_4bit D4(con2, con4, n_control, out2);
    Mux_2x1_4bit D5(con1, con3, control, out3);
    Mux_2x1_4bit D6(con2, con4, n_control, out4);
endmodule