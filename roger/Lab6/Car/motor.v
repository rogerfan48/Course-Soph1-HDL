module motor(
    input clk,
    input rst,
    input [3:0]mode,
    output [1:0]pwm
);

    reg [9:0]next_left_motor, next_right_motor;
    reg [9:0]left_motor, right_motor;
    wire left_pwm, right_pwm;
    wire clk_sl, clk_fa;

    motor_pwm m0(clk, rst, left_motor, left_pwm);
    motor_pwm m1(clk, rst, right_motor, right_pwm);

    parameter STAY_L = 4'b1000;
    parameter STAY_R = 4'b1001;

    always@(posedge clk) begin
        if (rst) begin
            left_motor <= 10'd0;
            right_motor <= 10'd0;
        end else begin
            left_motor <= next_left_motor;
            right_motor <= next_right_motor;
        end
    end
    
    // [TO-DO] take the right speed for different situation
    always @(*) begin
        case(mode)
            4'b0011: {next_left_motor, next_right_motor} = {10'd1023, 10'd700};
            4'b0001: {next_left_motor, next_right_motor} = {10'd1023, 10'd600};
            4'b0110: {next_left_motor, next_right_motor} = {10'd700,  10'd1023};
            4'b0100: {next_left_motor, next_right_motor} = {10'd600,  10'd1023};
            // 4'b0011: {next_left_motor, next_right_motor} = {10'd1023, 10'd750};
            // 4'b0001: {next_left_motor, next_right_motor} = {10'd1023, 10'd750};
            // 4'b0110: {next_left_motor, next_right_motor} = {10'd750,  10'd1023};
            // 4'b0100: {next_left_motor, next_right_motor} = {10'd650,  10'd1023};
            STAY_L: {next_left_motor, next_right_motor} = {10'd580, 10'd1023};
            STAY_R: {next_left_motor, next_right_motor} = {10'd1023, 10'd580};
            default: {next_left_motor, next_right_motor} = {10'd1023,  10'd1023};
        endcase
    end

    assign pwm = {left_pwm, right_pwm};
endmodule

module motor_pwm (
    input clk,
    input reset,
    input [9:0]duty,
	output pmod_1 //PWM
);
        
    PWM_gen pwm_0 ( 
        .clk(clk), 
        .reset(reset), 
        .freq(32'd25000),
        .duty(duty), 
        .PWM(pmod_1)
    );
endmodule

//generte PWM by input frequency & duty
module PWM_gen (
    input wire clk,
    input wire reset,
	input [31:0] freq,
    input [9:0] duty,
    output reg PWM
);
    wire [31:0] count_max = 32'd100_000_000 / freq;
    wire [31:0] count_duty = count_max * duty / 32'd1024;
    reg [31:0] count;
        
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            count <= 32'b0;
            PWM <= 1'b0;
        end else if (count < count_max) begin
            count <= count + 32'd1;
            if(count < count_duty)
                PWM <= 1'b1;
            else
                PWM <= 1'b0;
        end else begin
            count <= 32'b0;
            PWM <= 1'b0;
        end
    end
endmodule




            // 4'b0011: begin
            //     if (clk_sl) begin
            //         next_left_motor = left_motor;
            //         next_right_motor = ((right_motor<=10'd512) ? 10'd512 : (right_motor - 1'b1));
            //     end else begin
            //         next_left_motor = left_motor;
            //         next_right_motor = right_motor;
            //     end
            // end
            // 4'b0001: begin
            //     if (clk_fa) begin
            //         next_left_motor = left_motor;
            //         next_right_motor = ((right_motor<=10'd512) ? 10'd512 : (right_motor - 1'b1));
            //     end else begin
            //         next_left_motor = left_motor;
            //         next_right_motor = right_motor;
            //     end
            // end
            // 4'b0110: begin
            //     if (clk_sl) begin
            //         next_left_motor = ((left_motor<=10'd512) ? 10'd512 : (left_motor - 1'b1));
            //         next_right_motor = right_motor;
            //     end else begin
            //         next_left_motor = left_motor;
            //         next_right_motor = right_motor;
            //     end
            // end
            // 4'b0100: begin
            //     if (clk_fa) begin
            //         next_left_motor = ((left_motor<=10'd512) ? 10'd512 : (left_motor - 1'b1));
            //         next_right_motor = right_motor;
            //     end else begin
            //         next_left_motor = left_motor;
            //         next_right_motor = right_motor;
            //     end
            // end