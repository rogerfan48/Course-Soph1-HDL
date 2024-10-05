`timescale 1ns/1ps

module Multi_Bank_Memory (clk, ren, wen, waddr, raddr, din, dout);
    input clk;
    input ren, wen;
    input [11-1:0] waddr;
    input [11-1:0] raddr;
    input [8-1:0] din;
    output [8-1:0] dout;

    wire [8-1:0] out[3:0];
    reg [8-1:0] dotcar;
    
    Bank bank0(clk, (ren==1)&&(raddr[10:9]==2'b00), !((ren==1)&&(raddr[10:9]==2'b00)) ? ((wen==1)&&(waddr[10:9]==2'b00)) : 1'b0, waddr[8:0], raddr[8:0], din, out[0]);
    Bank bank1(clk, (ren==1)&&(raddr[10:9]==2'b01), !((ren==1)&&(raddr[10:9]==2'b01)) ? ((wen==1)&&(waddr[10:9]==2'b01)) : 1'b0, waddr[8:0], raddr[8:0], din, out[1]);
    Bank bank2(clk, (ren==1)&&(raddr[10:9]==2'b10), !((ren==1)&&(raddr[10:9]==2'b10)) ? ((wen==1)&&(waddr[10:9]==2'b10)) : 1'b0, waddr[8:0], raddr[8:0], din, out[2]);
    Bank bank3(clk, (ren==1)&&(raddr[10:9]==2'b11), !((ren==1)&&(raddr[10:9]==2'b11)) ? ((wen==1)&&(waddr[10:9]==2'b11)) : 1'b0, waddr[8:0], raddr[8:0], din, out[3]);

    assign dout = !clk ? dout : out[raddr[10:9]];
endmodule

module Bank (clk, ren, wen, waddr, raddr, din, dout);
    input clk;
    input ren, wen;
    input [8:0] waddr, raddr;
    input [8-1:0] din;
    output [8-1:0] dout;
    reg [8-1:0] dotcar;
    wire [8-1:0] out[3:0];
    reg [1:0] sel;

    Memory mem0(clk, (ren==1)&&(raddr[8:7]==2'b00), !((ren==1)&&(raddr[8:7]==2'b00)) ? ((wen==1)&&(waddr[8:7]==2'b00)) : 1'b0, (((ren==1)&&(raddr[8:7]==2'b00))) ? raddr[6:0] : waddr[6:0], din, out[0]);
    Memory mem1(clk, (ren==1)&&(raddr[8:7]==2'b01), !((ren==1)&&(raddr[8:7]==2'b01)) ? ((wen==1)&&(waddr[8:7]==2'b01)) : 1'b0, (((ren==1)&&(raddr[8:7]==2'b01))) ? raddr[6:0] : waddr[6:0], din, out[1]);
    Memory mem2(clk, (ren==1)&&(raddr[8:7]==2'b10), !((ren==1)&&(raddr[8:7]==2'b10)) ? ((wen==1)&&(waddr[8:7]==2'b10)) : 1'b0, (((ren==1)&&(raddr[8:7]==2'b10))) ? raddr[6:0] : waddr[6:0], din, out[2]);
    Memory mem3(clk, (ren==1)&&(raddr[8:7]==2'b11), !((ren==1)&&(raddr[8:7]==2'b11)) ? ((wen==1)&&(waddr[8:7]==2'b11)) : 1'b0, (((ren==1)&&(raddr[8:7]==2'b11))) ? raddr[6:0] : waddr[6:0], din, out[3]);
    
    assign dout = out[raddr[8:7]];
endmodule

module Memory (clk, ren, wen, addr, din, dout);
    input clk;
    input ren, wen;
    input [7-1:0] addr;
    input [8-1:0] din;
    output [8-1:0] dout;
    reg [7:0] dout;
    reg [7:0] dotcar;
    reg [7:0] MEM[127:0];

    always @(posedge clk) begin
        if(ren==1) begin
            dout <= MEM[addr];
        end  
        else if(wen==1) begin
            MEM[addr] <= din; 
            dout <= 0;
        end
        else dout <= 0;
    end
endmodule