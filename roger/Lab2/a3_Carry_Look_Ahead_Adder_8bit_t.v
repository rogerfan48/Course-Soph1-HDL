`timescale 1ns/1ps

module Carry_Look_Ahead_Adder_8bit_t();
    reg [8-1:0] a = 8'b0;
    reg [8-1:0] b = 8'b0;
    reg cin = 1'b0;

    wire cout;
    wire [8-1:0] sum;
    
    Carry_Look_Ahead_Adder_8bit CLA8bit(a, b, cin, sum, cout);
    
    always #1 cin = ~cin;
    initial begin
        repeat(2**8-1) begin
            repeat(2**8-1) begin
                #2 b = b + 8'b1;
            end
            #2 
            a = a + 8'b1;
            b = 8'b0;
        end
        $finish;
    end
endmodule