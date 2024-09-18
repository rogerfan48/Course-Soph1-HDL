`timescale 1ns/1ps

module Crossbar_2x2_4bit_t;
    reg [4-1:0] in1 = 4'b0001;
    reg [4-1:0] in2 = 4'b0100;
    reg control = 1'b0;
    wire [3:0] out1, out2;

    Crossbar_2x2_4bit CB2x2_0(in1, in2, control, out1, out2);

    initial begin
        repeat (2 ** 4) begin
            #1;
            control = control + 2'b01;
            in1 = in1 + 4'b0001;
            in2 = in2 + 4'b0001;
        end
        #1 $finish;
    end
endmodule


// module Crossbar_2x2_4bit_t;
//     reg [3:0] in1 = 4'b0001;
//     reg [3:0] in2 = 4'b0100;
//     reg control = 1'b0;
//     wire [3:0] out1, out2;

//     Crossbar_2x2_4bit CB2x2_0(in1, in2, control, out1, out2);

//     initial begin
//         repeat (2 ** 4) begin
//             #1
//             control = control + 2'b01;
//             in1 = in1 + 4'b0001;
//             in2 = in2 + 4'b0001;
//         end
//         #1 $finish;
//     end
// endmodule