`timescale 1ns/1ps

module Exhausted_Testing(a, b, cin, error, done);
output [4-1:0] a, b;
output cin;
output error;
output done;

// input signal to the test instance.
reg [4-1:0] a = 4'b0000;
reg [4-1:0] b = 4'b0000;
reg cin = 1'b0;

// initial value for the done and error indicator: not done, no error
reg done = 1'b0;
reg error = 1'b0;


// output from the test instance.
wire [4-1:0] sum;
wire cout;

// instantiate the test instance.
Ripple_Carry_Adder rca(
    .a (a), 
    .b (b), 
    .cin (cin),
    .cout (cout),
    .sum (sum)
);

initial begin
    repeat (2**4) begin
        repeat (2**4-1) begin
            #0.001
            error = (sum != a+b);
            #0.004
            b = b + 4'b1;
        end
        #0.001
        error = (sum != a+b);
        #0.004
        a = a + 4'b1;
        b = 4'b0;
    end
    #0.001 error = (sum != a+b);
    done = 1'b1;
end

endmodule
