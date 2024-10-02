`timescale 1ns/1ps

module Memory (clk, ren, wen, addr, din, dout);
    input clk;
    input ren, wen;
    input [7-1:0] addr;
    input [8-1:0] din;
    output [8-1:0] dout;

    reg [7:0] dout;

    reg [7:0] MEM[127:0];
    always @(negedge clk) begin
        if(ren && wen) dout <= MEM[addr]?MEM[addr]:0;  
        else if(ren) dout <= MEM[addr]?MEM[addr]:0;  
        else if(wen) begin
            MEM[addr] <= din; 
            dout <= 0;
        end
        else dout <= 0;
    end
endmodule
