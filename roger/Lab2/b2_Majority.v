`timescale 1ns/1ps

module Majority(a, b, c, out);
    input a, b, c;
    output out;

    wire con1, con2, con3, con4;

    AND_w_NAND AND1 (con1, a, b);
    AND_w_NAND AND2 (con2, a, c);
    OR_w_NAND OR1 (con3, con1, con2);
    AND_w_NAND AND4 (con4, b, c);
    OR_w_NAND OR2 (out, con3, con4);
endmodule


// ---- ---- COPY ---- ----

module AND_w_NAND (out, a, b);
    input a, b;
    output out;
    wire con1;
    nand NAND1(con1, a, b);
    nand NAND2(out, con1, con1);
endmodule

module OR_w_NAND (out, a, b);
    input a, b;
    output out;
    wire con1, con2;
    nand NAND1(con1, a, a);
    nand NAND2(con2, b, b);
    nand NAND3(out, con1, con2);
endmodule