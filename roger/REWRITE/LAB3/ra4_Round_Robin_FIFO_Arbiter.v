`timescale 1ns/1ps

module Round_Robin_FIFO_Arbiter(clk, rst_n, wen, a, b, c, d, dout, valid);
    input clk;
    input rst_n;
    input [4-1:0] wen;
    input [8-1:0] a, b, c, d;
    output [8-1:0] dout;
    output valid;

    wire [8-1:0] out [4-1:0];
    wire [4-1:0] error;             // ! 4-bit
    reg [2-1:0] cnt;
    reg [2-1:0] cnt_delay;          // ! 2-bit
    reg rst_n_stable;

    FIFO_8 Q0 (clk, rst_n, wen[0], cnt==2'd0, a, out[0], error[0]);
    FIFO_8 Q1 (clk, rst_n, wen[1], cnt==2'd1, a, out[1], error[1]);
    FIFO_8 Q2 (clk, rst_n, wen[2], cnt==2'd2, a, out[2], error[2]);
    FIFO_8 Q3 (clk, rst_n, wen[3], cnt==2'd3, a, out[3], error[3]);

    assign valid = (rst_n_stable) ? !error[cnt[1:0]]: 1'b0;
    assign dout = (valid) ? out[cnt_delay[1:0]] : 8'd0;

    always @(posedge clk) rst_n_stable <= rst_n;
    always @(posedge clk) cnt_delay <= cnt;
    always @(posedge clk) begin
        if (!rst_n) cnt <= 2'b0;
        else        cnt <= cnt + 2'b1;
    end
endmodule

module FIFO_8 (clk, rst_n, wen, ren, din, dout, error);
    input clk, rst_n;
    input wen, ren;
    input [8-1:0] din;
    output reg [8-1:0] dout;
    output reg error;

    reg [8-1:0] MEM [8-1:0];
    reg [4-1:0] cnt;
    reg [3-1:0] waddr, raddr;

    always @(posedge clk) begin
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
            cnt <= 4'b0;
            waddr <= 3'b0;
            raddr <= 3'b0;
        end else begin
            if (wen) begin
                if (cnt==4'd8) error <= 1'b1;       // ! cnt==8 error
                else begin
                    error <= ren;                   // ! wen && ren -> error
                    MEM[waddr] <= din;
                    waddr <= waddr + 1'b1;
                    cnt <= cnt + 1'b1;
                end
            end else if (ren) begin
                if (cnt==4'd0) error <= 1'b1;
                else begin
                    error <= 1'b0;
                    dout <= MEM[raddr];
                    raddr <= raddr + 1'b1;
                    cnt <= cnt - 1'b1;
                end
            end else error <= 1'b0;
        end
    end
endmodule