`timescale 1ns/1ps

module Round_Robin_FIFO_Arbiter(clk, rst_n, wen, a, b, c, d, dout, valid);
    input clk;
    input rst_n;
    input [4-1:0] wen;
    input [8-1:0] a, b, c, d;
    output [8-1:0] dout;
    output valid;

    wire [8-1:0] out [4-1:0];
    wire [4-1:0] error;
    reg [2-1:0] cnt;
    reg [2-1:0] cnt_delay;
    reg rst_n_c;

    FIFO_8 queue_a (clk, rst_n, wen[0], cnt[1:0]==2'd0, a, out[0], error[0]);
    FIFO_8 queue_b (clk, rst_n, wen[1], cnt[1:0]==2'd1, b, out[1], error[1]);
    FIFO_8 queue_c (clk, rst_n, wen[2], cnt[1:0]==2'd2, c, out[2], error[2]);
    FIFO_8 queue_d (clk, rst_n, wen[3], cnt[1:0]==2'd3, d, out[3], error[3]);

    assign valid = (rst_n_c) ? !(|error) : 1'b0;
    assign dout = (valid) ? out[cnt_delay[1:0]] : 8'b0;

    always @(posedge clk) rst_n_c <= rst_n;
    always @(posedge clk) cnt_delay <= cnt;
    always @(posedge clk) begin
        if (!rst_n) cnt <= 2'b0;
        else cnt <= cnt + 2'b1;
    end
endmodule

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
            MEM[0] <= 8'b0;
            MEM[1] <= 8'b0;
            MEM[2] <= 8'b0;
            MEM[3] <= 8'b0;
            MEM[4] <= 8'b0;
            MEM[5] <= 8'b0;
            MEM[6] <= 8'b0;
            MEM[7] <= 8'b0;
            R_ptr <= 3'b0;
            W_ptr <= 3'b0;
            cnt <= 3'b0;
            error <= 1'b0;
            dout <= 8'b0;
        end else if (wen) begin
            if (cnt == 4'd8) error <= 1'b1;
            else begin
                error <= ren;       // if wen && ren => error
                MEM[W_ptr] <= din;
                W_ptr <= W_ptr + 3'b1;
                cnt <= cnt + 1'b1;
            end
        end else if (ren) begin
            if (cnt == 4'b0) error <= 1'b1;
            else begin
                error <= 1'b0;
                dout <= MEM[R_ptr];
                R_ptr <= R_ptr + 3'b1;
                cnt <= cnt - 1'b1;
            end
        end else error <= 1'b0;
    end
endmodule