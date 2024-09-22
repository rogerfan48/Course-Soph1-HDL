module Universal_Gate(out, a, b);
    input a, b;
    output out;
    wire n_b;
    and AND1(out, a, n_b);
endmodule