`timescale 1ns/1ps

module Mealy_Sequence_Detector (clk, rst_n, in, dec);
    input clk, rst_n;
    input in;
    output dec;
    reg [1:0] counter;
    reg [2:0] arr;

    assign dec = rst_n && (counter == 2'd3 && ((arr == 3'b011 && in == 1'b1) || (arr == 3'b100 && in == 1'b1) || (arr == 3'b111 && in == 1'b0)));

    always @(posedge clk) begin
        if(!rst_n) begin
            counter <= 2'd0;
            arr <= 3'b000;
        end else begin
            if(counter == 2'd3) begin
                counter <= 2'd0;
                arr <= 3'b000;
            end else begin
                counter <= counter + 1;
                arr <= {arr[1:0], in};
            end
        end
    end
endmodule
