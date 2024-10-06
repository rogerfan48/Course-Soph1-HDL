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

    reg [3-1:0] state;
    reg [3-1:0] nextstate;
    reg [1:0] out;

    always @(posedge clk) begin
        if (rst_n == 0)     state <= S0;
        else                state <= nextstate;
    end

    always @(*) begin
        case (state)
            S0:
                if (!in) begin nextstate <= S0; out <= 0; end
                else     begin nextstate <= S2; out <= 1; end
            S1:
                if (!in) begin nextstate <= S0; out <= 1; end
                else     begin nextstate <= S4; out <= 1; end
            S2:
                if (!in) begin nextstate <= S5; out <= 1; end
                else     begin nextstate <= S1; out <= 0; end
            S3:
                if (!in) begin nextstate <= S3; out <= 1; end
                else     begin nextstate <= S2; out <= 0; end
            S4:
                if (!in) begin nextstate <= S2; out <= 1; end
                else     begin nextstate <= S4; out <= 1; end
            default:
                if (!in) begin nextstate <= S3; out <= 0; end
                else     begin nextstate <= S4; out <= 0; end
        endcase
    end
endmodule
