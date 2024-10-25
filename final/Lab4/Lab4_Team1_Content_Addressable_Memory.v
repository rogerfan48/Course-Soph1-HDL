`timescale 1ns/1ps

module Content_Addressable_Memory(clk, wen, ren, din, addr, dout, hit);
    input clk;
    input wen, ren;
    input [8-1:0] din;
    input [4-1:0] addr;
    output reg [4-1:0] dout;
    output reg hit;

    reg [8-1:0] CAM [16-1:0];
    wire [16-1:0] match;

    assign match[0] = (CAM[0] === din);
    assign match[1] = (CAM[1] === din);
    assign match[2] = (CAM[2] === din);
    assign match[3] = (CAM[3] === din);
    assign match[4] = (CAM[4] === din);
    assign match[5] = (CAM[5] === din);
    assign match[6] = (CAM[6] === din);
    assign match[7] = (CAM[7] === din);
    assign match[8] = (CAM[8] === din);
    assign match[9] = (CAM[9] === din);
    assign match[10] = (CAM[10] === din);
    assign match[11] = (CAM[11] === din);
    assign match[12] = (CAM[12] === din);
    assign match[13] = (CAM[13] === din);
    assign match[14] = (CAM[14] === din);
    assign match[15] = (CAM[15] === din);

    always @(posedge clk) begin
        if (ren) begin
            hit <= |match;
            casez(match)
                16'b1???????????????: dout <= 4'd15;
                16'b01??????????????: dout <= 4'd14;
                16'b001?????????????: dout <= 4'd13;
                16'b0001????????????: dout <= 4'd12;
                16'b00001???????????: dout <= 4'd11;
                16'b000001??????????: dout <= 4'd10;
                16'b0000001?????????: dout <= 4'd9;
                16'b00000001????????: dout <= 4'd8;
                16'b000000001???????: dout <= 4'd7;
                16'b0000000001??????: dout <= 4'd6;
                16'b00000000001?????: dout <= 4'd5;
                16'b000000000001????: dout <= 4'd4;
                16'b0000000000001???: dout <= 4'd3;
                16'b00000000000001??: dout <= 4'd2;
                16'b000000000000001?: dout <= 4'd1;
                16'b0000000000000001: dout <= 4'd0;
                default: dout <= 4'd0;
            endcase
        end else if (wen) begin
            CAM[addr] <= din;
            hit <= 1'b0;
            dout <= 4'b0;
        end else begin
            hit <= 1'b0;
            dout <= 4'b0;
        end
    end
endmodule