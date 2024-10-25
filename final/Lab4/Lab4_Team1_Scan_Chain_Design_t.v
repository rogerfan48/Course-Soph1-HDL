`timescale 1ns/1ps

module Scan_Chain_Design_t();
    reg clk = 0;
    reg rst_n = 0;
    reg scan_in = 0;
    reg scan_en = 0;
    wire scan_out;

    Scan_Chain_Design DUT(clk, rst_n, scan_in, scan_en, scan_out);

    always #5 clk = ~clk;

    initial begin
        #10 rst_n = 1;
    end

    initial begin
        #20 scan_en = 1;
        #80 scan_en = 0;
        #10 scan_en = 1;
        #80 scan_en = 0;
        #10 $finish;
    end

    initial begin
        #20 scan_in = 0;
        #10 scan_in = 1;
        #10 scan_in = 0;
        #10 scan_in = 1;
        #10 scan_in = 1;
        #10 scan_in = 1;
        #10 scan_in = 1;
        #10 scan_in = 1;
    end
endmodule