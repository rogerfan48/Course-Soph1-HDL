`timescale 1ns/1ps

module Mealy_Sequence_Detector (clk, rst_n, in, dec);
    input clk, rst_n;
    input in;
    output dec;

    wire [4-1:0] num;
    assign num = {MEM, in};
    reg [3-1:0] MEM;

    assign dec = ((num==4'b0111)||(num==4'b1001)||(num==4'b1110));

    always @(posedge clk) begin
        if (!rst_n) begin
            MEM <= 4'b0;
        end else begin
            MEM[2:0] <= {MEM[1:0], in};
        end
    end
endmodule
