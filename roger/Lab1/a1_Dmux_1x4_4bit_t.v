`timescale 1ns/1ps

module Dmux_1x4_4bit_t();
    reg  [4-1:0] in;
    wire [4-1:0] a, b, c, d;
    reg  [2-1:0] sel = 2'b0000;

    Dmux_1x4_4bit DMUX1(in, a, b, c, d, sel);

    initial begin
        repeat (2**2) begin
            in = 4'b0000;
            repeat (2**4 - 1) #1 in = in + 4'b0001;
            #1 sel = sel + 2'b01;
        end
        #1 $finish;
    end
endmodule

// module Dmux_1x4_4bit_t;
//     reg [3:0] in = 4'b0001;
//     reg [1:0] sel = 2'b00;
//     wire [3:0] a, b, c, d;

//     Dmux_1x4_4bit DMUX1(in, a, b, c, d, sel);

//     initial begin
//         repeat (2 ** 4) begin
//             #1
//             sel = sel + 2'b01;
//             in = in + 4'b0001;
//         end
//         #1 $finish;
//     end
// endmodule