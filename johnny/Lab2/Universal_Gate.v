module Universal_Gate(out, a, b);
    input a, b;
    output out;
    assign out = a & ~b;
endmodule