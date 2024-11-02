`include "a2_Traffic_Light_Controller.v"
`timescale 1ns/1ps

module Traffic_Light_Controller_t ();
    reg clk = 1'b0;
    reg rst_n = 1'b0;
    reg lr_has_car = 1'b0;
    wire [3-1:0] hw_light;
    wire [3-1:0] lr_light;

    Traffic_Light_Controller #(.time_green(2), .time_yellow(1)) TLC(clk, rst_n, lr_has_car, hw_light, lr_light);

    always #5 clk = ~clk;

    initial begin
        #10 rst_n = 1'b1;
        #10 lr_has_car = 1'b1;
        #150 rst_n = 1'b0; lr_has_car = 1'b0;
        #10 rst_n = 1'b1;
        #50 lr_has_car = 1'b1;
        #150 $finish;
    end

    initial begin
        $dumpfile("a2.vcd");
        $dumpvars(0, Traffic_Light_Controller_t);
    end
endmodule