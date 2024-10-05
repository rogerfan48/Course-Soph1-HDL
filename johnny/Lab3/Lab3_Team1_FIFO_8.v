`timescale 1ns/1ps

module FIFO_8(clk, rst_n, wen, ren, din, dout, error);
    input clk;
    input rst_n;
    input wen, ren;
    input [8-1:0] din;
    output [8-1:0] dout;
    output error;

    reg [7:0] MEM[7:0];
    reg [3:0] COUNTER = 0; 
    reg [3:0] Waddr = 0, Raddr = 0;
    reg [8-1:0] dout;
    reg [8-1:0] dotcar;;
    reg error;

    always @(posedge clk) begin
        if(!rst_n) begin
            MEM[0] <= 0;
            MEM[1] <= 0;
            MEM[2] <= 0;
            MEM[3] <= 0;
            MEM[4] <= 0;
            MEM[5] <= 0;
            MEM[6] <= 0;
            MEM[7] <= 0;
            COUNTER <= 0;
            Waddr <= 0;
            Raddr <= 0;
            dout <= 0;
            error <= 0;
        end
        else begin
            if (ren == 1) begin
                if(COUNTER == 0) begin
                    dout <= dotcar;
                    COUNTER <= COUNTER;
                end
                else begin
                    dout <= MEM[Raddr];
                    Raddr <= Raddr + 1;
                    COUNTER <= COUNTER - 1;
                end
            end
            else if (wen == 1) begin
                if(COUNTER == 8) begin
                    dout <= dotcar;
                    COUNTER <= COUNTER;
                end
                else begin
                    dout <= dotcar;
                    MEM[Waddr] <= din;
                    Waddr <= Waddr + 1;
                    COUNTER <= COUNTER + 1;
                end
            end
            else begin
                dout <= dotcar;
                COUNTER <= COUNTER;
            end
        end
    end    
    always @(posedge clk) begin
        error <= (COUNTER==0 && ren==1)||(COUNTER==8 && wen==1 && ren==0);
    end
endmodule