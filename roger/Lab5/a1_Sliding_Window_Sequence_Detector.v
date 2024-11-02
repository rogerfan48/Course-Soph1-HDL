`timescale 1ns/1ps

module Sliding_Window_Sequence_Detector (clk, rst_n, in, dec);
    input clk, rst_n;
    input in;
    output dec;

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
    reg [4-1:0] next_state;

    assign dec = (state==S8 & in==1'b1) ? 1'b1 : 1'b0;

    always @(*) begin
        case (state)
            S0: next_state = (in ? S1 : S0);
            S1: next_state = (in ? S2 : S0);
            S2: next_state = (in ? S3 : S0);
            S3: next_state = (in ? S3 : S4);
            S4: next_state = (in ? S1 : S5);
            S5: next_state = (in ? S6 : S0);
            S6: next_state = (in ? S8 : S7);
            S7: next_state = (in ? S6 : S0);
            S8: next_state = (in ? S3 : S0);
        endcase
    end

    always @(posedge clk) begin
        if (!rst_n) state <= S0;
        else        state <= next_state;
    end
endmodule 