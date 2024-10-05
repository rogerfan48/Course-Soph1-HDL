`timescale 1ns/1ps

module Clock_Divider (clk, rst_n, sel, clk1_2, clk1_4, clk1_8, clk1_3, dclk);
    input clk, rst_n;
    input [2-1:0] sel;
    output clk1_2;
    output clk1_4;
    output clk1_8;
    output clk1_3;
    output dclk;

    reg dclk;

    div_2 D2(clk1_2, clk, rst_n);
    div_3 D3(clk1_3, clk, rst_n);
    div_4 D4(clk1_4, clk, rst_n);
    div_8 D8(clk1_8, clk, rst_n);

    always @(*) begin
        if(sel == 0) dclk = clk1_3;    
        else if(sel == 1) dclk = clk1_2;    
        else if(sel == 2) dclk = clk1_4;    
        else dclk = clk1_8;    
    end
endmodule

module div_2(out, clk, rst_n);
    input clk, rst_n;
    output out;
    reg out;
    reg cnt = 1'b0;
    always @(posedge clk) begin
        if(!rst_n) cnt <= 1;
        else if(cnt == 1) cnt <= 0;
        else cnt <= cnt+1;
    end
    always @(posedge clk) begin
        if(!rst_n) out <= 1;
        else if(cnt < 1) out <= 1;
        else out <= 0;
    end
endmodule

module div_3(out, clk, rst_n);
    input clk, rst_n;
    output out;
    reg out;
    reg [1:0] cnt = 0;
    always @(posedge clk) begin
        if(!rst_n) cnt <= 1;
        else if(cnt == 2) cnt <= 0;
        else cnt <= cnt+1;
    end
    always @(posedge clk) begin
        if(!rst_n) out <= 1;
        else if(cnt < 1) out <= 1;
        else out <= 0;
    end
endmodule

module div_4(out, clk, rst_n);
    input clk, rst_n;
    output out;
    reg out;
    reg [1:0] cnt = 0;
    always @(posedge clk) begin
        if(!rst_n) cnt <= 1;
        else if(cnt == 3) cnt <= 0;
        else cnt <= cnt+1;
    end
    always @(posedge clk) begin
        if(!rst_n) out <= 1;
        else if(cnt < 1) out <= 1;
        else out <= 0;
    end
endmodule

module div_8(out, clk, rst_n);
    input clk, rst_n;
    output out;
    reg out;
    reg [2:0] cnt = 0;
    always @(posedge clk) begin
        if(!rst_n) cnt <= 1;
        else if(cnt == 7) cnt <= 0;
        else cnt <= cnt+1;
    end
    always @(posedge clk) begin
        if(!rst_n) out <= 1;
        else if(cnt < 1) out <= 1;
        else out <= 0;
    end
endmodule

