`timescale 1ns/1ps

module Round_Robin_FIFO_Arbiter(clk, rst_n, wen, a, b, c, d, dout, valid);
    input clk;
    input rst_n;
    input [4-1:0] wen;
    input [8-1:0] a, b, c, d;
    output [8-1:0] dout;
    output valid;

    reg [1:0] counter;
    wire [7:0] dout;
    wire [7:0] out[3:0];
    wire [3:0] error;
    wire valid;
    reg [1:0] sel;
    reg [1:0] dotcar;

    FIFO_8 FFA(clk, rst_n, wen[0], counter==0, a, out[0], error[0]);
    FIFO_8 FFB(clk, rst_n, wen[1], counter==1, b, out[1], error[1]);
    FIFO_8 FFC(clk, rst_n, wen[2], counter==2, c, out[2], error[2]);
    FIFO_8 FFD(clk, rst_n, wen[3], counter==3, d, out[3], error[3]);
    
    assign dout = (!clk ? dout : (!rst_n ? 0 : (!(error[sel]==1 || wen[sel]==1)) ? out[sel] : 0));
    assign valid = (!clk ? valid : (!rst_n ? 0 : (!(error[sel]==1 || wen[sel]==1)) ? 1 : 0));

    always @(posedge clk) begin
        sel <= counter;
    end

    always @(posedge clk) begin
        if(rst_n) counter <= counter +1;
        else counter <= 0;
    end

endmodule

module FIFO_8(clk, rst_n, wen, ren, din, dout, error);
    input clk;
    input rst_n;
    input wen, ren;
    input [8-1:0] din;
    output [8-1:0] dout;
    output error;

    reg [7:0] MEM[7:0];
    reg [3:0] COUNTER = 0; 
    reg [2:0] Waddr = 0, Raddr = 0;
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
            if (wen == 1) begin
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
            else if (ren == 1) begin
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
            else begin
                dout <= dotcar;
                COUNTER <= COUNTER;
            end
        end
    end    
    always @(posedge clk) begin
        error <= (COUNTER==0 && wen==0 && ren==1)||(COUNTER==8 && wen==1);
    end
endmodule

