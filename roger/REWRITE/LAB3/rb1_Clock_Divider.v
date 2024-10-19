`timescale 1ns/1ps

module Clock_Divider (clk, rst_n, sel, clk1_2, clk1_4, clk1_8, clk1_3, dclk);
    input clk, rst_n;
    input [2-1:0] sel;
    output clk1_2;
    output clk1_4;
    output clk1_8;
    output clk1_3;
    output dclk;

    reg dclk;       // ! miss

    clk_div2 CD2(clk, rst_n, clk1_2);
    clk_div4 CD4(clk, rst_n, clk1_4);
    clk_div8 CD8(clk, rst_n, clk1_8);
    clk_div3 CD3(clk, rst_n, clk1_3);

    always @(*) begin
        case (sel)
            2'd0:       dclk = clk1_3;
            2'd1:       dclk = clk1_2;
            2'd2:       dclk = clk1_4;
            default:    dclk = clk1_8;
        endcase
    end             // ! typo
endmodule

module clk_div2 (clk, rst_n, out);
    input clk, rst_n;
    output reg out;             // ! typo
    reg cnt;

    always @(posedge clk) begin             // ! synchronous
        if (!rst_n || cnt == 0)     cnt <= 1'b1;
        else                        cnt <= cnt - 1'b1;
    end
    always @(posedge clk) begin
        if (!rst_n || cnt == 0)     out <= 1'b1;
        else                        out <= 1'b0;
    end
endmodule

module clk_div4 (clk, rst_n, out);
    input clk, rst_n;
    output reg out;
    reg [2-1:0] cnt;

    always @(posedge clk) begin
        if (!rst_n || cnt == 0)     cnt <= 2'd3;
        else                        cnt <= cnt - 1'b1;
    end
    always @(posedge clk) begin
        if (!rst_n || cnt == 0)     out <= 1'b1;
        else                        out <= 1'b0;
    end
endmodule

module clk_div8 (clk, rst_n, out);
    input clk, rst_n;
    output reg out;
    reg [3-1:0] cnt;

    always @(posedge clk) begin
        if (!rst_n || cnt == 0)     cnt <= 3'd7;
        else                        cnt <= cnt - 1'b1;
    end
    always @(posedge clk) begin
        if (!rst_n || cnt == 0)     out <= 1'b1;
        else                        out <= 1'b0;
    end
endmodule

module clk_div3 (clk, rst_n, out);
    input clk, rst_n;
    output reg out;
    reg [2-1:0] cnt;

    always @(posedge clk) begin
        if (!rst_n || cnt == 0)     cnt <= 2'd2;
        else                        cnt <= cnt - 1'b1;
    end
    always @(posedge clk) begin
        if (!rst_n || cnt == 0)     out <= 1'b1;
        else                        out <= 1'b0;
    end
endmodule