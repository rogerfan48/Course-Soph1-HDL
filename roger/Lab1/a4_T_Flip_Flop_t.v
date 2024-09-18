`timescale 1ns/1ps

module Toggle_Flip_Flop_t;
    reg clk = 1'b0;
    reg rst_n = 1'b0;
    reg t = 1'b0;
    wire q;

    Toggle_Flip_Flop TFF1(clk, q, t, rst_n);

    initial begin
        repeat (185) #4 clk = ~clk;
        $finish;
    end
    always #37 rst_n = ~rst_n;
    always #10 t = ~t;
endmodule


// module Toggle_Flip_Flop_t;
//     reg clk = 1'b0;
//     reg rst_n = 1'b0;
//     reg t = 1'b0;
//     wire q;

//     Toggle_Flip_Flop TFF1(clk, q, t, rst_n);

//     initial begin
//         #100 $finish;
//     end

//     always begin
//         #1
//         clk <= clk + 1'b1;
//     end

//     always begin
//         #3 
//         t <= t + 1'b1;
//     end

//     always begin
//         #15
//         rst_n <= 0;
//         #1
//         rst_n <= 1;
//     end
// endmodule