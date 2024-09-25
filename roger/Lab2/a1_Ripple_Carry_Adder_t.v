`timescale 1ns/1ps

module Ripple_Carry_Adder_t();
    reg [8-1:0] a = 8'b0;
    reg [8-1:0] b = 8'b0;
    reg cin = 1'b0;

    wire cout;
    wire [8-1:0] sum;
    
    Ripple_Carry_Adder RCA(a, b, cin, cout, sum);
    
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