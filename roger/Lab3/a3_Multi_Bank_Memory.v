`timescale 1ns/1ps

module Multi_Bank_Memory (clk, ren, wen, waddr, raddr, din, dout);
    input clk;
    input ren, wen;
    input [11-1:0] waddr;
    input [11-1:0] raddr;
    input [8-1:0] din;
    output [8-1:0] dout;

    wire [8-1:0] out [4-1:0];
    reg [2-1:0] raddr_;

    Memory_Bank M1(clk, ren, wen && waddr[10:9]==2'd0, waddr[8:0], raddr[8:0], din, out[0]);
    Memory_Bank M2(clk, ren, wen && waddr[10:9]==2'd1, waddr[8:0], raddr[8:0], din, out[1]);
    Memory_Bank M3(clk, ren, wen && waddr[10:9]==2'd2, waddr[8:0], raddr[8:0], din, out[2]);
    Memory_Bank M4(clk, ren, wen && waddr[10:9]==2'd3, waddr[8:0], raddr[8:0], din, out[3]);

    always @(posedge clk) raddr_[1:0] <= raddr[10:9];
    assign dout = out[raddr_[1:0]];
endmodule

module Memory_Bank (clk, ren, wen, waddr, raddr, din, dout);
    input clk;
    input ren, wen;
    input [9-1:0] waddr;
    input [9-1:0] raddr;
    input [8-1:0] din;
    output [8-1:0] dout;

    wire [8-1:0] out [4-1:0];
    reg [2-1:0] raddr_;

    Memory_Unit M1(clk, ren, wen && waddr[8:7]==2'd0, waddr[6:0], raddr[6:0], din, out[0]);     // ren no need to be filtered since dout will do it
    Memory_Unit M2(clk, ren, wen && waddr[8:7]==2'd1, waddr[6:0], raddr[6:0], din, out[1]);
    Memory_Unit M3(clk, ren, wen && waddr[8:7]==2'd2, waddr[6:0], raddr[6:0], din, out[2]);
    Memory_Unit M4(clk, ren, wen && waddr[8:7]==2'd3, waddr[6:0], raddr[6:0], din, out[3]);

    always @(posedge clk) raddr_[1:0] <= raddr[8:7];
    assign dout = out[raddr_[1:0]];
endmodule

module Memory_Unit (clk, ren, wen, waddr, raddr, din, dout);
    input clk;
    input ren, wen;
    input [7-1:0] waddr;
    input [7-1:0] raddr;
    input [8-1:0] din;
    output [8-1:0] dout;

    reg [8-1:0] dout;
    reg [8-1:0] MEM [128-1:0];

    always @(posedge clk) begin
        if (ren)        dout <= MEM[raddr];
        else            dout <= 8'b0;
        if (wen && !ren) MEM[waddr] <= din;
    end
endmodule