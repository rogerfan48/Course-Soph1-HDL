`timescale 1ns/1ps

module Half_Adder(a, b, cout, sum);
input a, b;
output cout, sum;

AND_w_NAND AND1 (cout, a, b);
XOR_w_NAND XOR1 (sum, a, b);

endmodule

module Full_Adder (a, b, cin, cout, sum);
input a, b, cin;
output cout, sum;

wire con1;

XOR_w_NAND XOR1 (con1, a, b);
XOR_w_NAND XOR2 (sum, cin, con1);
Majority MJ1 (a, b, cin, cout);

endmodule

