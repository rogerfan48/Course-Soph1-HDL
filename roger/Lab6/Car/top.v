module Top(
    input clk,
    input rst,
    input echo,
    input left_signal,
    input right_signal,
    input mid_signal,
    input stop_b,
    output trig,
    output left_motor,
    output reg [1:0]left,
    output right_motor,
    output reg [1:0]right,
    output LED_L,
    output LED_M,
    output LED_R
);

    assign LED_L = left_signal;
    assign LED_M = mid_signal;
    assign LED_R = right_signal;

    wire rst_op, rst_pb, stop;
    debounce d0(rst_pb, rst, clk);
    onepulse d1(rst_pb, clk, rst_op);
    wire [3:0] state;

    // state:
    // 4'b0000~4'b0111: default
    parameter STAY_L = 4'b1000;
    parameter STAY_R = 4'b1001;

    motor A(
        .clk(clk),
        .rst(rst_op),
        .mode(state),
        .pwm({left_motor, right_motor})
    );
    sonic_top B(
        .clk(clk), 
        .rst(rst_op), 
        .Echo(echo), 
        .Trig(trig),
        .stop(stop)
    );
    tracker_sensor C(
        .clk(clk), 
        .rst(rst_op), 
        .left_signal(left_signal), 
        .right_signal(right_signal),
        .mid_signal(mid_signal), 
        .state(state)
    );

    always @(*) begin
        // [TO-DO] Use left and right to set your pwm
        if (stop || stop_b) {left, right} = 4'd0;
        else if (state == STAY_L) {left, right} = 4'b0110;
        else if (state == STAY_R) {left, right} = 4'b1001;
        else      {left, right} = 4'b1010;
    end

endmodule

module debounce (pb_debounced, pb, clk);
    output pb_debounced; 
    input pb;
    input clk;
    reg [4:0] DFF;
    
    always @(posedge clk) begin
        DFF[4:1] <= DFF[3:0];
        DFF[0] <= pb; 
    end
    assign pb_debounced = (&(DFF)); 
endmodule

module onepulse (PB_debounced, clk, PB_one_pulse);
    input PB_debounced;
    input clk;
    output reg PB_one_pulse;
    reg PB_debounced_delay;

    always @(posedge clk) begin
        PB_one_pulse <= PB_debounced & (! PB_debounced_delay);
        PB_debounced_delay <= PB_debounced;
    end 
endmodule

