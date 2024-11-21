`timescale 1ns/1ps
module tracker_sensor(clk, rst, left_signal, right_signal, mid_signal, state);
    input clk, rst;
    input left_signal, right_signal, mid_signal;
    output reg [2:0] state;
    reg [2:0] next_state = 3'b111;

    // [TO-DO] Receive three signals and make your own policy.
    // Hint: You can use output state to change your action.
    always @(posedge clk, negedge rst) begin
        if(rst) state <= 3'b111;
        else state <= next_state;
    end
    always @(*) begin
        case(state)
            3'b000:
                begin
                    if({left_signal, mid_signal, right_signal} != 3'b111) next_state = 3'b000;
                    else next_state = 3'b111;
                end
            default:
                begin
                    next_state = {left_signal, mid_signal, right_signal};
                end
        endcase
    end

endmodule
