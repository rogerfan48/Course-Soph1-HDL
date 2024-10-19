`timescale 1ns/1ps

module FIFO_8(clk, rst_n, wen, ren, din, dout, error);
    input clk;
    input rst_n;
    input wen, ren;
    input [8-1:0] din;
    output reg [8-1:0] dout;            // ! reg
    output reg error;                   // ! reg

    reg [8-1:0] MEM [8-1:0];
    reg [3-1:0] raddr, waddr;
    reg [4-1:0] cnt;

    always @(posedge clk) begin                     // ! posedge
        if (!rst_n) begin
            MEM[0] <= 8'd0;
            MEM[1] <= 8'd0;
            MEM[2] <= 8'd0;
            MEM[3] <= 8'd0;
            MEM[4] <= 8'd0;
            MEM[5] <= 8'd0;
            MEM[6] <= 8'd0;
            MEM[7] <= 8'd0;
            dout <= 8'd0;
            error <= 1'b0;
            raddr <= 3'd0;
            waddr <= 3'd0;
            cnt <= 4'd0;                            // ! forget
        end else begin
            if (ren) begin
                if (cnt==4'd0) error <= 1'b1;
                else begin
                    error <= 1'b0;
                    dout <= MEM[raddr];
                    raddr <= raddr + 1'b1;
                    cnt <= cnt - 1'b1;
                end
            end else if (wen) begin
                if (cnt==4'd8) error <= 1'b1;
                else begin
                    error <= 1'b0;
                    MEM[waddr] <= din;
                    waddr <= waddr + 1'b1;
                    cnt <= cnt + 1'b1;
                end
            end else error <= 1'b0;
        end
    end
endmodule