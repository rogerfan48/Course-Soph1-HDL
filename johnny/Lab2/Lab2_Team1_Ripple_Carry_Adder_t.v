`timescale 1ns/1ps

module Ripple_Carry_Adder_t();
    reg [7:0] a = 8'b0, b = 8'b0;
    reg cin = 1'b0;
    wire [7:0] sum;
    wire cout;
    Ripple_Carry_Adder R1(a, b, cin, cout, sum);
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


//Bq3

module Ripple_Carry_Adder(a, b, cin, cout, sum);
    input [8-1:0] a, b;
    input cin;
    output cout;
    output [8-1:0] sum;
    Full_Adder F0(a[0], b[0], cin, cout0, sum[0]);
    Full_Adder F1(a[1], b[1], cout0, cout1, sum[1]);
    Full_Adder F2(a[2], b[2], cout1, cout2, sum[2]);
    Full_Adder F3(a[3], b[3], cout2, cout3, sum[3]);
    Full_Adder F4(a[4], b[4], cout3, cout4, sum[4]);
    Full_Adder F5(a[5], b[5], cout4, cout5, sum[5]);
    Full_Adder F6(a[6], b[6], cout5, cout6, sum[6]);
    Full_Adder F7(a[7], b[7], cout6, cout, sum[7]);
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