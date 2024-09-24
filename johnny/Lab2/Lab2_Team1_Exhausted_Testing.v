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
    repeat(2) begin
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
        cin = 4'b1;
    end
    done = 1'b1;
    #0.001 error = (sum != a+b);
    #0.005 done = 1'b0;
end

endmodule

module Ripple_Carry_Adder(a, b, cin, cout, sum);
    input [4-1:0] a, b;
    input cin;
    output cout;
    output [4-1:0] sum;
    Full_Adder F0(a[0], b[0], cin, cout0, sum[0]);
    Full_Adder F1(a[1], b[1], cout0, cout1, sum[1]);
    Full_Adder F2(a[2], b[2], cout1, cout2, sum[2]);
    Full_Adder F3(a[3], b[3], !cout2, cout, sum[3]);
endmodule

module Half_Adder(a, b, cout, sum);
    input a, b;
    output cout, sum;
    XOR H1(sum, a, b);
    AND H2(cout, a, b);
endmodule

module Full_Adder (a, b, cin, cout, sum);
    input a, b, cin;
    output cout, sum;
    XOR F1(aout, a, b);
    XOR F2(sum, aout, cin);
    Majority F3(a, b, cin, cout);
endmodule

module Majority(a, b, c, out);
    input a, b, c;
    output out;
    AND G1(aout, a, b);
    AND G2(bout, b, c);
    AND G3(cout, a, c);
    OR G4(dout, aout, cout);
    OR G5(out, dout, bout);
endmodule

module XNOR(out, a, b);
    input a, b;
    output out;
    XOR XNOR1(out1, a, b);
    NOT XNOR2(out, out1);
endmodule

module NOR(out, a, b);
    input a, b;
    output out;
    OR NOR1(out1, a, b);
    NOT NOR2(out, out1);
endmodule
    

module XOR (out, a, b);
    input a, b;
    output out;
    NOT XOR1(aout, a);
    NOT XOR2(bout, b);
    AND XOR3(cout, aout, b);
    AND XOR4(dout, bout, a);
    OR XOR5(out, cout, dout); 
endmodule

module OR (out, a, b);
    input a, b;
    output out;
    NOT OR1 (aout, a);
    NOT OR2 (bout, b);
    nand (out, aout, bout);
endmodule

module AND (out, a, b);
    input a, b;
    output out;
    nand AND1(temp, a, b);
    NOT AND2(out, temp);
endmodule

module NOT (out, in);
    input in;
    output out;
    nand NOT1(out, in, in);
endmodule