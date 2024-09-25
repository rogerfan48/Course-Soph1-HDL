`timescale 1ns/1ps

module Ripple_Carry_Adder_t();
    reg [7:0] a = 8'b0, b = 8'b0;
    reg cin = 1'b0;
    wire [7:0] sum;
    wire cout;
    Ripple_Carry_Adder R1(a, b, cin, cout, sum);
    always #1 cin = ~cin;
    initial begin
        repeat(2**8) begin
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