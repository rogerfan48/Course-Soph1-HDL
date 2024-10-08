`timescale 1ns/1ps

module Parameterized_Ping_Pong_Counter (clk, rst_n, enable, flip, max, min, direction, out);
    input clk, rst_n;
    input enable;
    input flip;
    input [4-1:0] max;
    input [4-1:0] min;
    output direction;
    output [4-1:0] out;
    reg direction;
    reg [4-1:0] out;

    reg next_direction;
    always @(*) begin
        if (out==min)       next_direction = 1'b1;
        else if (out==max)  next_direction = 1'b0;
        else if (flip)      next_direction = !direction;
        else                next_direction = direction;
    end

    always @(posedge clk) begin
        if (!rst_n) begin
            out <= min;
            direction <= 1'b1;
        end else if (enable && max >= out && out >= min && max != min) begin
            direction <= next_direction;
            if (next_direction) out <= out + 4'b1;
            else                out <= out - 4'b1;
        end
    end
endmodule