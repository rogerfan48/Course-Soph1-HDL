`timescale 1ns/1ps

module Mealy_Sequence_Detector (clk, rst_n, in, dec);
    input clk, rst_n;
    input in;
    output reg dec;

    parameter S0 = 3'b000;
    parameter S1 = 3'b001;
    parameter S2 = 3'b010;
    parameter S3 = 3'b011;
    parameter S4 = 3'b100;
    parameter S5 = 3'b101;
    parameter S6 = 3'b110;
    parameter S7 = 3'b111;

    reg [3:0] state = S0, next_state;

    always @(posedge clk) begin
        if(!rst_n) state <= S0;
        else state <= next_state;
    end

    always @(*) begin
        case (state)
            S0: 
                if(in) next_state = S4;
                else next_state = S1;
            
            S1: 
                if(in) next_state = S2;
                else next_state = S0;
            S2: 
                if(in) next_state = S3;
                else next_state = S0;
            S3: 
                if(in) next_state = S0;
                else next_state = S0;
            S4: 
                if(in) next_state = S6;
                else next_state = S5;
            S5: 
                if(in) next_state = S0;
                else next_state = S3;
            S6: 
                if(in) next_state = S7;
                else next_state = S0;
            default: 
                if(in) next_state = S0;
                else next_state = S0;
        endcase
    end

    always @(*) begin
        case(state)
            S3: 
                if(in) dec = 1;
                else dec = 0;
            S7: 
                if(in) dec = 0;
                else dec = 1;
            default: 
                dec = 0;
        endcase
    end
endmodule
