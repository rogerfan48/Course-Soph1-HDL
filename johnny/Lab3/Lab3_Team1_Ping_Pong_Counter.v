`timescale 1ns/1ps

module Ping_Pong_Counter (clk, rst_n, enable, direction, out);
    input clk, rst_n;
    input enable;
    output reg direction;
    output [4-1:0] out;
    
    reg [3:0] out;

    always @(posedge clk) begin
        if(!rst_n) begin
            out <= 4'b0000;
            direction <= 1;
        end
        else begin
            if(!enable) begin
                out <= out;
            end
            else begin
                if(direction == 1) begin
                    if(out == 15) begin
                        out <= out-1;
                        direction = 0;
                    end
                    else begin
                        out <= out+1;
                    end
                end
                else begin
                    if(out == 0) begin
                        out <= out+1;
                        direction = 1;
                    end
                    else begin
                        out <= out-1;
                    end
                end
            end
        end
    end
endmodule
