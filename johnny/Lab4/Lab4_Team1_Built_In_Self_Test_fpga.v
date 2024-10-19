`timescale 1ns/1ps

module BIST_FPGA(clk, dclk, rst_n, scan_en, LFSR_INIT, AN, seg, point);
    input clk;
    input d_clk;
    input rst_n;
    input [7:0] LFSR_INIT;
    input scan_en;
    output reg [3:0] AN;
    output reg [6:0] seg;
    output reg point;

    reg scan_in;
    reg scan_out;
    wire [3:0] LEFT_4;
    wire [3:0] RIGHT_4;
    wire [7:0] DFF_out;

    assign LEFT_4 = DFF_out[7:4];
    assign RIGHT_4 = DFF_out[3:0];

    Many_To_One_LFSR LFSR(d_clk, rst_n, scan_in);
    Scan_Chain_Design DUT(d_clk, rst_n, scan_in, scan_en, scan_out, DFF_out);

endmodule

module Built_In_Self_Test(clk, rst_n, scan_en, scan_in, scan_out);
    input clk;
    input rst_n;
    input scan_en;
    output scan_in;
    output scan_out;

    Many_To_One_LFSR LFSR(clk, rst_n, scan_in);
    Scan_Chain_Design DUT(clk, rst_n, scan_in, scan_en, scan_out);
endmodule

module Scan_Chain_Design(clk, rst_n, scan_in, scan_en, scan_out, DFF_out);
    input clk;
    input rst_n;
    input scan_in;
    input scan_en;
    output scan_out;
    output [7:0] DFF_out;

    wire [7:0] p;
    wire [3:0] a, b;

    assign p = a * b;
    Scan_DFF DFF_7(clk, rst_n, scan_in, scan_en, p[7], DFF_out[7]);
    Scan_DFF DFF_6(clk, rst_n, DFF_out[7], scan_en, p[6], DFF_out[6]);
    Scan_DFF DFF_5(clk, rst_n, DFF_out[6], scan_en, p[5], DFF_out[5]);
    Scan_DFF DFF_4(clk, rst_n, DFF_out[5], scan_en, p[4], DFF_out[4]);
    Scan_DFF DFF_3(clk, rst_n, DFF_out[4], scan_en, p[3], DFF_out[3]);
    Scan_DFF DFF_2(clk, rst_n, DFF_out[3], scan_en, p[2], DFF_out[2]);
    Scan_DFF DFF_1(clk, rst_n, DFF_out[2], scan_en, p[1], DFF_out[1]);
    Scan_DFF DFF_0(clk, rst_n, DFF_out[1], scan_en, p[0], DFF_out[0]);

    assign a[3] = DFF_out[7];
    assign a[2] = DFF_out[6];
    assign a[1] = DFF_out[5];
    assign a[0] = DFF_out[4];
    assign b[3] = DFF_out[3];
    assign b[2] = DFF_out[2];
    assign b[1] = DFF_out[1];
    assign b[0] = DFF_out[0];
    assign scan_out = DFF_out[0];
endmodule

module Scan_DFF(clk, rst_n, in, en, data, out);
    input clk;
    input rst_n;
    input in;
    input en;
    input data;
    output reg out;

    wire temp_1, temp_2;
    assign temp_1 = en ? in : data;
    assign temp_2 = rst_n ? temp_1 : 1'b0;
    always @(posedge clk) out <= temp_2;
endmodule

module Many_To_One_LFSR(clk, rst_n, out);
    input clk;
    input rst_n;
    output out;
    reg [8-1:0] tempout;

    parameter S0 = 8'b10111101;

    assign out = tempout[7];

    always @(posedge clk) begin
        if(!rst_n) begin
            tempout <= S0;
        end
        else begin
            tempout[7] <= tempout[6];
            tempout[6] <= tempout[5];
            tempout[5] <= tempout[4];
            tempout[4] <= tempout[3];
            tempout[3] <= tempout[2];
            tempout[2] <= tempout[1];
            tempout[1] <= tempout[0];
            tempout[0] <= (tempout[1] ^ tempout[2]) ^ (tempout[3] ^ tempout[7]);
        end
    end
endmodule

module debounce (pbd, clk, pb);
    input clk, pb;
    output pbd;
    reg [9:0] DFF;

    assign pbd = (DFF == 10'b1111111111) ? 1'b1 : 1'b0 ;

    always @(posedge clk) begin
        DFF[9:1] <= DFF[8:0];
        DFF[0] <= pb;
    end
endmodule

module one_pulse (DFF2, clk, pbd);
    input clk, pbd;
    output DFF2;
    
    reg DFF1, DFF2;

    always @(posedge clk) begin
        DFF1 <= pbd;
        DFF2 <= pbd & !DFF1;
    end
endmodule