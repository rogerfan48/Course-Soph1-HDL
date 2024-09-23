module test();
    reg [3:0] rd = 4'b0;
    wire [3:0] n_rd;
    wire out;
    not G0(n_rd[0], rd[0]);
    not G1(n_rd[1], rd[1]);
    not G2(n_rd[2], rd[2]);
    not G3(n_rd[3], rd[3]);
    //
    and B0(Bcon0, n_rd[3], rd[2], n_rd[1], rd[0]);
    and B1(Bcon1, rd[2], rd[1], n_rd[0]);
    and B2(Bcon2, rd[3], rd[2], n_rd[0]);
    and B3(Bcon3, rd[3], rd[1], rd[0]);
    or B4(out, Bcon0, Bcon1, Bcon2, Bcon3);
    //
    initial begin
        repeat (2**4) begin
            #1
            rd = rd + 4'b1;
        end
        $finish;
    end
endmodule

module Universal_Gate(out, a, b);
    input a, b;
    output out;
    assign out = a & ~b;
endmodule