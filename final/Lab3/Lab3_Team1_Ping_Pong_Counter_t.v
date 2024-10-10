`timescale 1ns/1ps

module Ping_Pong_Counter_t;
    reg clk = 1'b1;
    reg rst_n = 1'b1;
    reg enable = 1'b1;
    wire direction;
    wire [4-1:0] out;

    parameter cyc = 10;
    always #(cyc/2) clk = !clk;

    Ping_Pong_Counter PPC1(clk, rst_n, enable, direction, out);

    initial begin
        @ (negedge clk) rst_n = 1'b0;
        @ (negedge clk) rst_n = 1'b1;
        @ (negedge clk) #(cyc*32) rst_n = 1'b0;
        @ (negedge clk) #(cyc*2) rst_n = 1'b1;
        @ (negedge clk) 
        repeat (32) begin
            #(cyc) enable = 1'b0;
            #(cyc) enable = 1'b1;
        end
        repeat (32) begin
            #(cyc*2) enable = 1'b0;
            #(cyc*2) enable = 1'b1;
        end
        $finish;
    end
endmodule