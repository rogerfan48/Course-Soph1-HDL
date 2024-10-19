`timescale 1ns/1ps

module Ping_Pong_Counter (clk, rst_n, enable, direction, out);
    input clk, rst_n;
    input enable;
    output reg direction;
    output reg [4-1:0] out;

    always @(posedge clk) begin
        if (!rst_n) begin
            out <= 4'b0000;
            direction <= 1'b1;
        end else begin
            if (enable) begin
                if (out==4'b0000) begin
                    direction <= 1'b1;
                    out <= out + 1'b1;
                end else if (out==4'b1111) begin
                    direction <= 1'b0;
                    out <= out - 1'b1;
                end else if (direction) out <= out + 1'b1;
                else                    out <= out - 1'b1;
            end
        end
    end
endmodule