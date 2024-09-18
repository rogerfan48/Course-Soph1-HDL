`timescale 1ns/1ps

module Crossbar_4x4_4bit_t;
    reg [4-1:0] in1 = 4'b0001;
    reg [4-1:0] in2 = 4'b0011;
    reg [4-1:0] in3 = 4'b0101;
    reg [4-1:0] in4 = 4'b0111;
    reg [5-1:0] control = 5'b00000;
    wire [4-1:0] out1, out2, out3, out4;

    Crossbar_4x4_4bit CB4x4_0(in1, in2, in3, in4, out1, out2, out3, out4, control);

    initial begin
        $monitor("%h%h%h%h", out1, out2, out3, out4);
        repeat (2 ** 5) begin
            #1;
            control = control + 5'b00001;
            in1 = in1 + 4'b0001;
            in2 = in2 + 4'b0001;
            in3 = in3 + 4'b0001;
            in4 = in4 + 4'b0001;
        end
        #1 $finish;
    end
endmodule


// module Crossbar_4x4_4bit_t;
//     reg [3:0] in1 = 4'b0001;
//     reg [3:0] in2 = 4'b0010;
//     reg [3:0] in3 = 4'b0100;
//     reg [3:0] in4 = 4'b1000;
//     reg [4:0] control = 5'b00000;
//     wire [3:0] out1, out2, out3, out4;

//     Crossbar_4x4_4bit CB4x4_0(in1, in2, in3, in4, out1, out2, out3, out4, control);

//     initial begin
//         repeat (2 ** 2) begin
//             repeat (2 ** 5) begin
//                 #1
//                 control = control + 5'b00001;
//             end
//             in1 = in1 + 4'b0001;
//             in2 = in2 + 4'b0001;
//             in3 = in3 + 4'b0001;
//             in4 = in4 + 4'b0001;
//         end
//         #1 $finish;
//     end
// endmodule