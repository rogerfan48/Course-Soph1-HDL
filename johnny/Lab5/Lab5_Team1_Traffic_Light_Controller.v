`timescale 1ns/1ps

module Traffic_Light_Controller (clk, rst_n, lr_has_car, hw_light, lr_light);
    input clk, rst_n;
    input lr_has_car;
    output reg [2:0] hw_light;
    output reg [2:0] lr_light;
    
    parameter A = 3'b000;
    parameter B = 3'b001;
    parameter C = 3'b010;
    parameter D = 3'b011;
    parameter E = 3'b100;
    parameter F = 3'b101;

    parameter greentime = 8'd69;
    parameter yellowtime = 8'd24;

    reg [7:0] cnt;
    reg [2:0] state, next_state = A;

    always @(posedge clk) begin
        if(!rst_n) state <= A;
        else state <= next_state;
    end

    always @(posedge clk) begin
        if(!rst_n || state != next_state) cnt <= 0;
        else begin
            case(state) 
                A:
                    if(cnt == greentime) begin
                        cnt <= cnt;
                    end else begin
                        cnt <= cnt + 1;
                    end
                B:
                    if(cnt == yellowtime) begin
                        cnt <= cnt;
                    end else begin
                        cnt <= cnt + 1;
                    end
                D:
                    if(cnt == greentime) begin
                        cnt <= cnt;
                    end else begin
                        cnt <= cnt + 1;
                    end
                E:
                    if(cnt == yellowtime) begin
                        cnt <= cnt;
                    end else begin
                        cnt <= cnt + 1;
                    end
                default:
                    cnt <= 0;
            endcase
        end
    end

    always @(*) begin
        case(state)
            A: begin
                hw_light = 3'b100;
                lr_light = 3'b001;
                if(cnt == greentime && lr_has_car) next_state = B;
                else next_state = A;
            end
            B: begin
                hw_light = 3'b010;
                lr_light = 3'b001;
                if(cnt == yellowtime) next_state = C;
                else next_state = B;
            end
            C: begin
                hw_light = 3'b001;
                lr_light = 3'b001;
                next_state = D;
            end
            D: begin
                hw_light = 3'b001;
                lr_light = 3'b100;
                if(cnt == greentime) next_state = E;
                else next_state = D;
            end
            E: begin
                hw_light = 3'b001;
                lr_light = 3'b010;
                if(cnt == yellowtime) next_state = F;
                else next_state = E;
            end
            default: begin
                hw_light = 3'b001;
                lr_light = 3'b001;
                next_state = A;
            end
        endcase
    end
endmodule
