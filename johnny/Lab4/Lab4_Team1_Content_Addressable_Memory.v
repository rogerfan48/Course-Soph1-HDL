`timescale 1ns/1ps

module Content_Addressable_Memory(clk, wen, ren, din, addr, dout, hit);
    input clk;
    input wen, ren;
    input [7:0] din;
    input [3:0] addr;
    output reg [3:0] dout;
    output reg hit;

    reg [3:0] tempout;
    wire temphit;
    wire [7:0] out[15:0]; 
    wire [15:0] addr_matching = {addr == 4'd15, addr == 4'd14, addr == 4'd13, addr == 4'd12, 
                                 addr == 4'd11, addr == 4'd10, addr == 4'd9, addr == 4'd8, 
                                 addr == 4'd7, addr == 4'd6, addr == 4'd5, addr == 4'd4, 
                                 addr == 4'd3, addr == 4'd2, addr == 4'd1, addr == 4'd0};
    
    data_line line_0(clk, ren, wen && addr_matching[0], din, out[0]);
    data_line line_1(clk, ren, wen && addr_matching[1], din, out[1]);
    data_line line_2(clk, ren, wen && addr_matching[2], din, out[2]);
    data_line line_3(clk, ren, wen && addr_matching[3], din, out[3]);
    data_line line_4(clk, ren, wen && addr_matching[4], din, out[4]);
    data_line line_5(clk, ren, wen && addr_matching[5], din, out[5]);
    data_line line_6(clk, ren, wen && addr_matching[6], din, out[6]);
    data_line line_7(clk, ren, wen && addr_matching[7], din, out[7]);
    data_line line_8(clk, ren, wen && addr_matching[8], din, out[8]);
    data_line line_9(clk, ren, wen && addr_matching[9], din, out[9]);
    data_line line_10(clk, ren, wen && addr_matching[10], din, out[10]);
    data_line line_11(clk, ren, wen && addr_matching[11], din, out[11]);
    data_line line_12(clk, ren, wen && addr_matching[12], din, out[12]);
    data_line line_13(clk, ren, wen && addr_matching[13], din, out[13]);
    data_line line_14(clk, ren, wen && addr_matching[14], din, out[14]);
    data_line line_15(clk, ren, wen && addr_matching[15], din, out[15]);

    always @(posedge clk) begin
        if(ren) begin
            dout <= tempout;
        end else begin
            dout <= 8'd0;
        end
    end
    always @(posedge clk) begin
        if(ren) begin
            hit <= temphit;
        end else begin
            hit <= 1'd0;
        end
    end

    always @(*) begin
        if(out[15] == din) begin
            tempout = 4'd15;
        end else begin
            if(out[14] == din) begin
                tempout = 4'd14;
            end else begin
                if(out[13] == din) begin
                    tempout = 4'd13;
                end else begin
                    if(out[12] == din) begin
                        tempout = 4'd12;
                    end else begin
                        if(out[11] == din) begin
                            tempout = 4'd11;
                        end else begin
                            if(out[10] == din) begin
                                tempout = 4'd10;
                            end else begin
                                if(out[9] == din) begin
                                    tempout = 4'd9;
                                end else begin
                                    if(out[8] == din) begin
                                        tempout = 4'd8;
                                    end else begin
                                        if(out[7] == din) begin
                                            tempout = 4'd7;
                                        end else begin
                                            if(out[6] == din) begin
                                                tempout = 4'd6;
                                            end else begin
                                                if(out[5] == din) begin
                                                    tempout = 4'd5;
                                                end else begin
                                                    if(out[4] == din) begin
                                                        tempout = 4'd4;
                                                    end else begin
                                                        if(out[3] == din) begin
                                                            tempout = 4'd3;
                                                        end else begin
                                                            if(out[2] == din) begin
                                                                tempout = 4'd2;
                                                            end else begin
                                                                if(out[1] == din) begin
                                                                    tempout = 4'd1;
                                                                end else begin
                                                                    if(out[0] == din) begin
                                                                        tempout = 4'd0;
                                                                    end else begin
                                                                        tempout = 4'd0;
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end          
            end
        end
    end

    assign temphit = ren && (out[15] == din || out[14] == din || out[13] == din || out[12] == din || 
                             out[11] == din || out[10] == din || out[9] == din || out[8] == din || 
                             out[7] == din || out[6] == din || out[5] == din || out[4] == din || 
                             out[3] == din || out[2] == din || out[1] == din || out[0] == din);
endmodule

module data_line(clk, ren, wen, din, dout);
    input clk, ren, wen;
    input [7:0] din;
    output [7:0] dout;
    assign dout = data;

    reg [7:0] data = 8'b0;

    always @(posedge clk) begin
        if(ren) begin
            data <= data;
        end else begin
            if(wen) begin
                data <= din;
            end else begin
                data <= data;
            end
        end
    end
endmodule
