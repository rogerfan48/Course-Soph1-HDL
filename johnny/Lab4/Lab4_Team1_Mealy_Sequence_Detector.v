`timescale 1ns/1ps

module Mealy_Sequence_Detector (clk, rst_n, in, dec);
    input clk, rst_n;
    input in;
    output dec;
    reg [2:0] counter;
    reg [3:0] arr;

    assign dec = (rst_n && (counter == 3'd3 && (arr == 4'b0011 && in == 1'b1) || (arr == 4'b0100 && in == 1'b1) || (arr == 4'b0111 && in == 1'b0)));

    always @(posedge clk) begin
        if(!rst_n) begin
            counter <= 3'd0;
            arr <= 4'b0000;
        end else begin
            if(counter == 3'd3) begin
                counter <= 3'd0;
                arr <= 4'b0000;
            end else begin
                counter <= counter + 1;
                arr <= {arr[2:0], in};
            end
        end
    end
endmodule
