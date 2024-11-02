`timescale 1ns/1ps

module Sliding_Window_Sequence_Detector (clk, rst_n, in, dec);
    input clk, rst_n;
    input in;
    output reg dec;

    parameter S0 = 4'd0;
    parameter S1 = 4'd1;
    parameter S2 = 4'd2;
    parameter S3 = 4'd3;
    parameter S4 = 4'd4;
    parameter S5 = 4'd5;
    parameter S6 = 4'd6;
    parameter S7 = 4'd7;
    parameter S8 = 4'd8;

    reg [4-1:0] state;

    always @(*) begin
        dec = (state==S8&&in==1'b1) ? 1'b1 : 1'b0;
    end

    always @(posedge clk) begin
        if (!rst_n) begin
            state <= S0;
            dec <= 1'b0;
        end else begin
            case (state)
                S0: begin state <= (in ? S1 : S0); end
                S1: begin state <= (in ? S2 : S0); end
                S2: begin state <= (in ? S3 : S0); end
                S3: begin state <= (in ? S3 : S4); end
                S4: begin state <= (in ? S1 : S5); end
                S5: begin state <= (in ? S6 : S0); end
                S6: begin state <= (in ? S8 : S7); end
                S7: begin state <= (in ? S6 : S0); end
                S8: begin state <= (in ? S3 : S0); end
            endcase
        end
    end
endmodule 