`include "Lab5_Team1_Sliding_Window_Sequence_Detector.v"
`timescale 1ns / 1ps

module Sliding_Window_Sequence_Detector_t ();
    reg clk = 0, rst_n = 0, in = 0;
    wire dec;
    Sliding_Window_Sequence_Detector SWSD(clk, rst_n, in, dec);

    always #5 clk = ~clk;

    initial begin
        #10 rst_n = 1;
    end

    initial begin
        #10 in = 1;
        #30 in = 0;
        #20 in = 1;
        #40 in = 0;
        #20 in = 1;
        #10 in = 0;
        #10 in = 1;
        #30 in = 0;
        #30 in = 1;
        #30 in = 0;
        #10 in = 1;
        #30 in = 0;
        #20 in = 1;
        #30 in = 0;
        #30 $finish;
    end

    initial begin
        $dumpfile("Sliding_Window_Sequence_Detector_t.vcd");
        $dumpvars(0, Sliding_Window_Sequence_Detector_t);
    end
endmodule