module Universal_Gate(out, a, b);
    input a, b;
    output out;
    not UG1(n_b, b);
    and UG2(out, a, n_b);
endmodule