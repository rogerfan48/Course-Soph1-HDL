`timescale 1ns/1ps

module FIFO_8(clk, rst_n, wen, ren, din, dout, error);
    input clk;
    input rst_n;
    input wen, ren;
    input [8-1:0] din;
    output [8-1:0] dout;
    output error;

    reg [8-1:0] dout;
    reg error;

    reg [8-1:0] MEM [8-1:0];
    reg [3-1:0] R_ptr;
    reg [3-1:0] W_ptr;
    reg [4-1:0] cnt;

    always @(posedge clk) begin
        if (!rst_n) begin
            // MEM[0] <= 8'b0;      // can be omitted
            // MEM[1] <= 8'b0;
            // MEM[2] <= 8'b0;
            // MEM[3] <= 8'b0;
            // MEM[4] <= 8'b0;
            // MEM[5] <= 8'b0;
            // MEM[6] <= 8'b0;
            // MEM[7] <= 8'b0;
            R_ptr <= 3'b0;
            W_ptr <= 3'b0;
            cnt <= 3'b0;
            error <= 1'b0;
            dout <= 8'b0;
        end else if (ren) begin
            if (cnt == 4'b0) error <= 1'b1;
            else begin
                error <= 1'b0;
                dout <= MEM[R_ptr];
                R_ptr <= R_ptr + 3'b1;
                cnt <= cnt - 1'b1;
            end
        end else if (wen) begin
            if (cnt == 4'd8) error <= 1'b1;
            else begin
                error <= 1'b0;
                MEM[W_ptr] <= din;
                W_ptr <= W_ptr + 3'b1;
                cnt <= cnt + 1'b1;
            end
        end else error <= 1'b0;
    end
endmodule