`timescale 1ns/1ps

module Mealy_Sequence_Detector_t();
    reg clk = 0;
    reg rst_n = 0;
    reg in = 0;
    wire dec;

    Mealy_Sequence_Detector DUT(clk, rst_n, in, dec);

    always #5 clk = ~clk;

    initial begin
        #10 rst_n = 1;
    end

    initial begin
        #20 in = !in;
        #30 in = !in;
        #10 in = !in;
        #20 in = !in;
        #10 in = !in;
        #10 in = !in;
        #20 in = !in;
        #10 in = !in;
        #10 in = !in;
        #10 in = !in;
        #10 in = !in;
        #40 in = !in;
        #30 $finish;
    end
endmodule