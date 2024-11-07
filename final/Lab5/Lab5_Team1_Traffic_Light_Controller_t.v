`timescale 1ns / 1ps

module Traffic_Light_Controller_t ();
    reg clk = 0, rst_n = 0, lr_has_car = 0;
    wire [2:0] hw_light, lr_light;
    Traffic_Light_Controller TLC(clk, rst_n, lr_has_car, hw_light, lr_light);

    always #5 clk = ~clk;

    initial begin
        #5 rst_n = 1;
    end

    initial begin
        #350 lr_has_car = 1;
        #3000 lr_has_car = 0;
        #1500 lr_has_car = 1;
        #100 $finish;
    end
endmodule