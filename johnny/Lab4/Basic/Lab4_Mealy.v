`timescale 1ns/1ps

module Mealy (clk, rst_n, in, out, state);
    input clk, rst_n;
    input in;
    output out;
    output [3-1:0] state;

    parameter S0 = 3'b000;
    parameter S1 = 3'b001;
    parameter S2 = 3'b010;
    parameter S3 = 3'b011;
    parameter S4 = 3'b100;
    parameter S5 = 3'b101;

    reg [2:0] state;
    reg [2:0] nextstate;
    reg [1:0] out;
    
    always @(posedge clk) begin
        if(rst_n == 0) state <= S0;
        else state <= nextstate;
    end

    always @(*) begin
        case(state)
            S0:
                if(!in) nextstate <= S0;
                else nextstate <= S2;
            S1:
                if(!in) nextstate <= S0;
                else nextstate <= S4;
            S2:
                if(!in) nextstate <= S5;
                else nextstate <= S1;
            S3:
                if(!in) nextstate <= S3;
                else nextstate <= S2;
            S4:
                if(!in) nextstate <= S2;
                else nextstate <= S4;
            default:
                if(!in) nextstate <= S3;
                else nextstate <= S4;
        endcase
    end

    always @(*) begin
        case(state)
            S0: 
                if(!in) out <= 0;
                else out <= 1;
            S1: 
                out <= 1;
            S2: 
                if(!in) out <= 1;
                else out <= 0;
            S3: 
                if(!in) out <= 1;
                else out <= 0;
            S4: 
                out <= 1;
            default: 
                out <= 0;
        endcase
    end
endmodule
