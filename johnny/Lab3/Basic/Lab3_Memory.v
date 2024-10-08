`timescale 1ns/1ps

module Memory (clk, ren, wen, addr, din, dout);
    input clk;
    input ren, wen;
    input [7-1:0] addr;
    input [8-1:0] din;
    output [8-1:0] dout;

    reg [7:0] dout;
    reg [7:0] dotcar;

    reg [7:0] MEM[127:0];
    always @(posedge clk) begin
        if(ren) dout <= MEM[addr];  
        else if(wen) begin
            MEM[addr] <= din; 
            dout <= dotcar;
        end
        else dout <= dotcar;
    end
endmodule
