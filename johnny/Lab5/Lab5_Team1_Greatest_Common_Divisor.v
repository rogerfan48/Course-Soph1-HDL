`timescale 1ns/1ps

module Greatest_Common_Divisor (clk, rst_n, start, a, b, done, gcd);
    input clk, rst_n;
    input start;
    input [15:0] a;
    input [15:0] b;
    output reg done;
    output reg [15:0] gcd;
    reg cnt;
    reg [15:0] left, right;

    parameter WAIT = 2'b00;
    parameter CAL = 2'b01;
    parameter FINISH = 2'b10;

    reg [1:0] state, next_state = WAIT;

    always @(posedge clk) begin
        if(!rst_n) state <= WAIT;
        else state <= next_state;
    end

    always @(posedge clk) begin
        if(state == FINISH) cnt <= cnt + 1;
        else cnt <= 0;
    end

    always @(posedge clk) begin
        if(state == CAL) begin
            if(left < right) begin
                left <= right-left;
                right <= left; 
            end else begin
                left <= left-right;
                right <= right;
            end
        end else begin
            left <= a;
            right <= b;
        end
    end 

    always @(*) begin
        case(state)
            WAIT: begin
                if(start) begin
                    next_state = CAL;
                end
                else begin
                    next_state = WAIT;
                end
            end
            CAL: begin
                if(!left || !right) begin
                    next_state = FINISH;
                end
                else begin
                    next_state = CAL;
                end
            end
            FINISH: begin
                if(cnt == 1) begin
                    next_state = WAIT;
                end
                else begin
                    next_state = FINISH;
                end
            end
            default: begin
                next_state = next_state;
            end
        endcase
    end

    always @(*) begin
        case(state) 
            WAIT: begin
                done = 0;
                gcd = 0;
            end
            CAL: begin
                done = 0;
                gcd = 0;
            end
            FINISH: begin
                done = 1;
                if(next_state == WAIT) gcd = gcd;
                else gcd = left == 0 ? right : left;
            end
            default: begin
                done = done;
                gcd = gcd;
            end
        endcase
    end

endmodule
