module Universal_Gate(out, a, b);
    input a, b;
    output out;
    wire n_b;
    not NOT1(n_b, b);
    and AND1(out, a, n_b);
endmodule