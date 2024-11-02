`include "a1_Sliding_Window_Sequence_Detector.v"
`timescale 1ns/1ps

module Sliding_Window_Sequence_Detector_t ();
    reg clk = 1'b0;
    reg rst_n = 1'b0;
    reg in = 1'b0;
    wire dec;

    Sliding_Window_Sequence_Detector SWSD(clk, rst_n, in, dec);

    always #5 clk = ~clk;

    initial begin
        #10 rst_n = 1'b1;
    end

    initial begin
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 rst_n = 1'b0;
        #10 rst_n = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 $finish;
    end

    initial begin
        $dumpfile("a1.vcd");
        $dumpvars(0, Sliding_Window_Sequence_Detector_t);
    end
endmodule 