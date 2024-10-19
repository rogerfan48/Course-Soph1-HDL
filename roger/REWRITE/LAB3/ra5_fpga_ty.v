`timescale 1ns/1ps

module Top(clk, rst, en, max, min, flip, AN, segs);
    input clk, rst;
    input en;
    input flip;
    input [4-1:0] max, min;
    output reg [4-1:0] AN;
    output reg [7-1:0] segs;
    wire [2-1:0] seg_clk;
    wire flip_debounced, flip_pulse;
    wire [7-1:0] segs_LSB;
    wire [4-1:0] PPPC_out;
    wire rst_n, direction;
    assign rst_n = ~rst;
    Debounce DB(clk, rst_n, flip, flip_debounced);
    One_Pulse OP(clk, rst_n, flip_debounced, flip_pulse);
    Parameterized_Ping_Pong_Counter PPPC(clk, rst_n, en, flip_pulse, max, min, direction, PPPC_out);
    Clock_Divider_Segs CDS(clk, rst_n, seg_clk);
    Seven_Segs_Decoder SSD(PPPC_out, segs_LSB);

    always @(*) begin
        case(seg_clk)
            2'b00: begin
                AN = 4'b1110;
                segs = segs_LSB;
            end
            2'b01: begin
                AN = 4'b1101;
                segs = (PPPC_out>4'd9) ? 7'b1111001 : 7'b1000000;
            end
            2'b10: begin
                AN = 4'b1011;
                segs = direction ? 7'b1011100 : 7'b1100011;
            end
            2'b11: begin
                AN = 4'b0111;
                segs = direction ? 7'b1011100 : 7'b1100011;
            end
            default: begin
                AN = 4'b1111;
                segs = 7'b1111111;
            end
        endcase
    end
endmodule

module Clock_Divider_Segs(clk, rst_n, out);
    input clk, rst_n;
    output [2-1:0] out;
    reg [19-1:0] counter;

    always @(posedge clk) begin
        if(!rst_n) begin
            counter <= 19'b0;
        end
        else begin
            counter <= counter + 19'd1;
        end
    end

    assign out = counter[18:17];
endmodule

module Clock_Divider_Ping_Pong(clk, rst_n, out);
    input clk, rst_n;
    output out;
    reg [26-1:0] counter;

    always @(posedge clk) begin
        if(!rst_n) begin
            counter <= 26'b0;
        end
        else begin
            counter <= counter + 26'd1;
        end
    end

    assign out = (counter == ~26'd0) ? 1'b1 : 1'b0;
endmodule

module Debounce(clk, rst_n, in, out);
    input clk, in, rst_n;
    output out;

    reg [3:0] count;

    reg [13-1:0] div_clk;

    assign out = (count == ~4'd0);

    always @(posedge clk) begin
        if(!rst_n) begin
            div_clk <= 13'b0;
        end
        else begin
            div_clk <= div_clk + 13'd1;
        end
        if(div_clk == ~13'd0) begin
            count <= {count[2:0],in};
        end
        else begin
            count <= count;
        end
    end
endmodule

module One_Pulse(clk, rst_n, in, out);
    input clk, in, rst_n;
    output reg out;

    reg A;
    wire B;

    assign B = ~A & in;

    always @(posedge clk) begin
        if(!rst_n) begin
            A <= 1'b0;
            out <= 1'b0;
        end
        else begin
            A <= in;
            out <= B;
        end
    end
endmodule

module Seven_Segs_Decoder(in, out);
    input [4-1:0] in;
    output reg [7-1:0] out;
   
    always @(*) begin
        case(in)
            4'd0, 4'd10: out = 7'b1000000;
            4'd1, 4'd11: out = 7'b1111001;
            4'd2, 4'd12: out = 7'b0100100;
            4'd3, 4'd13: out = 7'b0110000;
            4'd4, 4'd14: out = 7'b0011001;
            4'd5, 4'd15: out = 7'b0010010;
            4'd6: out = 7'b0000010;
            4'd7: out = 7'b1111000;
            4'd8: out = 7'b0000000;
            4'd9: out = 7'b0010000;
            default: out = 7'b1111111;
        endcase
    end
endmodule

module Parameterized_Ping_Pong_Counter (clk, rst_n, enable, flip, max, min, direction, out);
    input clk, rst_n;
    input enable;
    input flip;
    input [4-1:0] max;
    input [4-1:0] min;
    output reg direction;
    output reg [4-1:0] out;

    reg [4-1:0] next_out;
    reg next_dir; // 0 = decrement, 1 = increment

    wire _enable;
    assign _enable = enable && !(out > max || out < min || max == min);

    wire clk_div;
    Clock_Divider_Ping_Pong CDP(clk, rst_n, clk_div);

    always @(posedge clk) begin
        if(clk_div) begin
            out <= next_out;
            if(flip & _enable) begin
                direction <= ~next_dir;
            end
            else begin
                direction <= next_dir;
            end
        end
        else begin
            if(flip & _enable) begin
                direction <= ~direction;
            end
            else begin
                direction <= direction;
            end
            out <= out;
        end
    end

    always @(*) begin
        if(!rst_n) begin
            next_out = min;
            next_dir = 1;
        end
        else begin 
            if(_enable) begin
                if(out == max) begin
                    next_out = out - 4'b1;
                    next_dir = 0;
                end
                else if(out == min) begin
                    next_out = out + 4'b1;
                    next_dir = 1;
                end
                else begin
                    next_out = direction ? out + 4'b1 : out - 4'b1;
                    next_dir = direction;
                end
            end
            else begin
                next_out = out;
                next_dir = direction;
            end
        end
    end
endmodule
