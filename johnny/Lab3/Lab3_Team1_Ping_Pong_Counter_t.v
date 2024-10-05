`timescale 1ns/1ps

module Ping_Pong_Counter_t ();
    reg clk = 1'b1;
    reg rst_n = 1'b0;
    wire direction;
    reg enable = 1'b1;
    wire [3:0] out;
    Ping_Pong_Counter PPC(clk, rst_n, enable, direction, out);
    
    always #5 clk = !clk;

    initial begin
        #10 rst_n = !rst_n;
        #(5*16*2*2) rst_n = !rst_n;
        #10 rst_n = !rst_n;
        #100 rst_n = !rst_n;
        #10 rst_n = !rst_n;
        #300 rst_n = !rst_n;
        #10 rst_n = !rst_n;
        #30 rst_n = !rst_n;
        #20 rst_n = !rst_n;
        
    end
    initial begin
        #20
        #(5*16*2*2) enable = !enable;
        #(5*16*2*2) enable = !enable;
        #(5*16*2*2) enable = !enable;
        $finish; 
    end
endmodule