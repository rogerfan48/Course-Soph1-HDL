`include "Lab4_Team1_Built_In_Self_Test.v"
`timescale 1ns/1ps

module BIST_t();
    reg clk = 0;
    reg rst_n = 0;
    reg scan_en = 0;
    wire scan_in;
    wire scan_out;
    Built_In_Self_Test BIST(clk, rst_n, scan_en, scan_in, scan_out);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("BIST_t.vcd");
        $dumpvars(0, BIST_t);
    end

    initial begin
        #10 rst_n = 1;
    end

    initial begin
        #10 scan_en = 1;
        #80 scan_en = 0;
        #10 scan_en = 1;
        #80 scan_en = 0;
        #10 $finish;
    end
endmodule