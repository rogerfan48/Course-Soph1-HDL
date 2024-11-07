`timescale 1ns/1ps 

module Booth_Multiplier_4bit(clk, rst_n, start, a, b, p);
    input clk;
    input rst_n; 
    input start;
    input signed [3:0] a, b;
    output reg signed [7:0] p;
    wire signed [7:0] out;
    
    parameter WAIT = 3'b001;
    parameter CAL = 3'b010;
    parameter FINISH = 3'b100;
    reg [2:0] cnt_CAL;
    reg [2:0] cnt_FIN;
    reg [2:0] state, next_state = WAIT;

    booth_MUL BM(clk, state == CAL, a, b, out);

    always @(posedge clk) begin
        if(!rst_n) state <= WAIT;
        else state <= next_state;
    end

    always @(posedge clk) begin
        if(state == CAL) cnt_CAL <= cnt_CAL + 1;
        else cnt_CAL <= 0;
    end

    always @(posedge clk) begin
        if(state == FINISH) cnt_FIN <= cnt_FIN + 1;
        else cnt_FIN <= 0;
    end

    always @(*) begin
        case(state)
            WAIT:
                if(!start) next_state = WAIT;
                else next_state = CAL;
            CAL:
                if(cnt_CAL == 3) next_state = FINISH;
                else next_state = CAL;
            FINISH:
                if(cnt_FIN == 1) next_state = WAIT;
                else next_state = FINISH;
        endcase
    end

    always @(*) begin
        if(state == FINISH) begin
            if(!cnt_FIN) p = out;
            else p = p;
        end else begin
            p = 0;
        end
    end
endmodule

module booth_MUL(clk, rst_n, a, b, p);
    input clk, rst_n;
    input signed [3:0] a, b;
    output signed [7:0] p;
    reg [2:0] cnt;
    reg signed [9:0] P, A, S;
    wire signed [9:0] ADD, SUB;

    assign p = {P[8:1]};
    assign ADD = P + A;
    assign SUB = P + S;

    always @(posedge clk) begin
        if(!rst_n) begin
            A <= {a[3], a, 5'd0};
            if(a == 4'b1000) S <= {5'b01000, 5'd0};
            else if(a == 4'd0) S <= {10'd0};
            else S <= {/*n_A*/~a[3], -a, 5'd0};
            P <= {5'd0, b, 1'b0};
            cnt <= 3'd4;
        end else begin
            case ({P[1], P[0]})
                2'b01: begin
                    A <= A;
                    S <= S;
                    P <= {ADD[9], ADD[9:1]};
                    cnt <= cnt - 1;
                end
                2'b10: begin
                    A <= A;
                    S <= S;
                    P <= {SUB[9], SUB[9:1]};
                    cnt <= cnt - 1;
                end
                default: begin
                    A <= A;
                    S <= S;
                    P <= {P[9], P[9:1]};
                    cnt <= cnt - 1;
                end
            endcase
        end
    end
endmodule