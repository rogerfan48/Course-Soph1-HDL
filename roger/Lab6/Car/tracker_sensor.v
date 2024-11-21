`timescale 1ns/1ps
module tracker_sensor(clk, rst, left_signal, right_signal, mid_signal, state, dir);
    input clk, rst;
    input left_signal, right_signal, mid_signal;
    output reg [3:0] state;
    output reg dir;             // 1'b0: need left
    reg [3:0] next_state = 3'b111;

    parameter STAY_L = 4'b1000;
    parameter STAY_R = 4'b1001;
    reg [25:0] cnt;

    wire left_signal_d, right_signal_d, mid_signal_d;
    Debounce DB0(clk, left_signal, left_signal_d);
    Debounce DB1(clk, right_signal, right_signal_d);
    Debounce DB2(clk, mid_signal, mid_signal_d);

    // [TO-DO] Receive three signals and make your own policy.
    // Hint: You can use output state to change your action.
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            state <= 4'b0111;
            dir <= 1'b0;
        end else begin
            state <= next_state;
            if (state == 4'b0100 || state == 4'b0110)       dir <= 1'b0; // need left
            else if (state == 4'b0001 || state == 4'b0011)  dir <= 1'b1; // need right
            else                                            dir <= dir;
        end
    end

    // always @(posedge clk, negedge rst) begin
    //     if (rst) begin
    //         cnt <= 26'b0;
    //     end else begin
    //         case (state)
    //             4'b0000: begin
    //                 if (cnt == 26'd40000000) cnt <= 26'b0;
    //                 else begin
    //                     if (state != 4'b0000) begin
    //                         cnt <= 26'b0;
    //                     end else begin
    //                         cnt <= cnt + 1'b1;
    //                     end
    //                 end
    //             end
    //             default: cnt <= cnt;
    //         endcase
    //     end
    // end

    always @(*) begin
        case(state)
            4'b0000: next_state = (dir ? STAY_R : STAY_L);
            STAY_L, STAY_R: begin
                if ({left_signal_d, mid_signal_d, right_signal_d} == 3'b111) begin
                    next_state = {1'b0, left_signal_d, mid_signal_d, right_signal_d};
                end else begin
                    next_state = state;
                end
            end
            default:
                begin
                    next_state = {1'b0, left_signal, mid_signal, right_signal};
                end
        endcase
    end
endmodule

module Debounce (clk, pb, pb_d);
    input clk, pb;
    output pb_d;
    reg [19:0] DFF;

    assign pb_d = &DFF;
    always @(posedge clk) DFF[19:0] <= {DFF[18:0], pb};
endmodule