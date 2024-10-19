`timescale 1ns/1ps

module Memory (clk, ren, wen, addr, din, dout);
    input clk;
    input ren, wen;
    input [7-1:0] addr;
    input [8-1:0] din;
    output [8-1:0] dout;

    reg [8-1:0] MEM [128-1:0];

    always @(posedge clk) begin
        if (ren)    dout <= MEM[addr];
        else        dout <= 8'd0;
        
        if (wen && !ren) MEM[addr] <= din;
    end
endmodule