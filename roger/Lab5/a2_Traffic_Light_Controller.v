`timescale 1ns/1ps

module Traffic_Light_Controller (clk, rst_n, lr_has_car, hw_light, lr_light);
    input clk, rst_n;
    input lr_has_car;
    output reg [3-1:0] hw_light;
    output reg [3-1:0] lr_light;

    parameter time_yellow = 7'd24;
    parameter time_green = 7'd69;
    reg [7-1:0] cnt;

    parameter S1 = 3'd1;
    parameter S2 = 3'd2;
    parameter S3 = 3'd3;
    parameter S4 = 3'd4;
    parameter S5 = 3'd5;
    parameter S6 = 3'd6;
    reg [3-1:0] state;
    reg [3-1:0] next_state;

    always @(posedge clk) begin
        if (!rst_n) state <= S1;
        else        state <= next_state;
    end

    always @(posedge clk) begin
        if (!rst_n || state!=next_state) cnt <= 7'd0;   // state changing;
        else begin
            case (state)
                S1, S4: if (cnt != time_green)  cnt <= cnt + 1'b1;
                S2, S5: if (cnt != time_yellow) cnt <= cnt + 1'b1;
                default: cnt <= 7'd0;
            endcase
        end
    end

    always @(*) begin
        case (state)
            S1: begin
                hw_light = 3'b100;
                lr_light = 3'b001;
                next_state = (cnt == time_green && lr_has_car) ? S2 : S1;
            end
            S2: begin
                hw_light = 3'b010;
                lr_light = 3'b001;
                next_state = (cnt == time_yellow) ? S3 : S2;
            end
            S3: begin
                hw_light = 3'b001;
                lr_light = 3'b001;
                next_state = S4;
            end
            S4: begin
                hw_light = 3'b001;
                lr_light = 3'b100;
                next_state = (cnt == time_green) ? S5 : S4;
            end
            S5: begin
                hw_light = 3'b001;
                lr_light = 3'b010;
                next_state = (cnt == time_yellow) ? S6 : S5;
            end
            S6: begin
                hw_light = 3'b001;
                lr_light = 3'b001;
                next_state = S1;
            end
        endcase
    end
endmodule