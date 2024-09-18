`timescale 1ns/1ps

module Crossbar_4x4_4bit(in1, in2, in3, in4, out1, out2, out3, out4, control);
    input [4-1:0] in1, in2, in3, in4;
    input [5-1:0] control;
    output [4-1:0] out1, out2, out3, out4;

    wire [4-1:0] con1, con2, con3, con4, con5, con6;

    Crossbar_2x2_4bit CB2x2_0(in1, in2, control[0], con1, con2);
    Crossbar_2x2_4bit CB2x2_1(con1, con5, control[1], out1, out2);
    Crossbar_2x2_4bit CB2x2_2(con2, con3, control[2], con5, con6);
    Crossbar_2x2_4bit CB2x2_3(in3, in4, control[3], con3, con4);
    Crossbar_2x2_4bit CB2x2_4(con6, con4, control[4], out3, out4);
endmodule