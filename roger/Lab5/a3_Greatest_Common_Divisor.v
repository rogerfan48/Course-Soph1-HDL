`timescale 1ns/1ps

module Greatest_Common_Divisor (clk, rst_n, start, a, b, done, gcd);
    input clk, rst_n;
    input start;
    input [16-1:0] a;
    input [16-1:0] b;
    output reg done;
    output reg [16-1:0] gcd;

    parameter WAIT = 2'b00;
    parameter CAL = 2'b01;
    parameter FINISH = 2'b10;
    reg [2-1:0] state;
    reg [2-1:0] next_state;
    reg [16-1:0] c;
    reg [16-1:0] d;
    reg delay;

    always @(posedge clk) begin
        if (!rst_n) state <= WAIT;
        else        state <= next_state;
    end

    always @(*) begin
        case (state)
            WAIT: begin
                next_state = (start == 1'b1) ? CAL : WAIT;
                gcd = 16'd0;
                done = 1'b0;
            end
            CAL: begin    
                next_state = (c==16'd0 || d==16'd0) ? FINISH : CAL;
                gcd = 16'd0;
                done = 1'b0;
            end
            FINISH: begin
                next_state = (delay) ? WAIT : FINISH;
                gcd = (c==16'd0) ? d : c;
                done = 1'b1;
            end
            default: begin   // just in case
                next_state = WAIT; 
                gcd = 16'd0;
                done = 1'b0;
            end
        endcase
    end

    always @(posedge clk) begin
        case (state)
            WAIT:   delay <= 1'b0;
            CAL:    delay <= 1'b0;
            FINISH: delay <= 1'b1;
            default:delay <= 1'b0;
        endcase
    end

    always @(posedge clk) begin
        case (state)
            WAIT: begin
                if (next_state == CAL) begin
                    c <= a;
                    d <= b;
                end else begin
                    c <= 16'd0;
                    d <= 16'd0;
                end
            end
            CAL: begin
                if (!(c==16'd0 || d==16'd0)) begin
                    if (c > d) begin
                        c <= c - d;
                        d <= d;
                    end else begin
                        c <= c;
                        d <= d - c;
                    end
                end else begin
                    c <= c;
                    d <= d;
                end
            end
            default: begin      // just in case
                c <= c;
                d <= d;
            end
        endcase
    end
endmodule
