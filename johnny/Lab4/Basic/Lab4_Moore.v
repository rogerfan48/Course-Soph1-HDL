`timescale 1ns/1ps

module Moore (clk, rst_n, in, out, state);
    input clk, rst_n;
    input in;
    output [2-1:0] out;
    output [3-1:0] state;

    parameter S0 = 3'b000;
    parameter S1 = 3'b001;
    parameter S2 = 3'b010;
    parameter S3 = 3'b011;
    parameter S4 = 3'b100;
    parameter S5 = 3'b101;
    
    reg [2:0] state;
    reg [2:0] nextstate = S0;
    reg [1:0] out;
    
    always @(posedge clk) begin
        if(rst_n == 0) state <= S0;
        else state <= nextstate;
    end

    always @(*) begin
        case(state)
            S0:
                if(!in) nextstate <= S1;
                else nextstate <= S2;
            S1:
                if(!in) nextstate <= S4;
                else nextstate <= S5;
            S2:
                if(!in) nextstate <= S1;
                else nextstate <= S3;
            S3:
                if(!in) nextstate <= S1;
                else nextstate <= S0;
            S4:
                if(!in) nextstate <= S4;
                else nextstate <= S5;
            default:
                if(!in) nextstate <= S3;
                else nextstate <= S0;
        endcase
    end

    always @(*) begin
        case(state)
            S0: out <= 3;
            S1: out <= 1;
            S2: out <= 3;
            S3: out <= 2;
            S4: out <= 2;
            default: out <= 0;
        endcase
    end
endmodule
