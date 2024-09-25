`timescale 1ns/1ps

module Multiplier_4bit_t();
    reg [3:0] a = 4'b0, b = 4'b0;
    wire [7:0] p;
    reg [7:0] test;
    wire error;
    assign error = (test != p);
    Multiplier_4bit M1(a, b, p);
    initial begin
        repeat (2**4) begin
            repeat (2**4-1) begin
                test = a * b;
                #1
                b = b + 4'b1;
            end
            test = a * b;
            #1
            a = a + 4'b1;
            b = 4'b0;
        end
        $finish;
    end
endmodule