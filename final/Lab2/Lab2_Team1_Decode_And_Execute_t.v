`include "Lab2_Team1_Decode_And_Execute.v"
`timescale 1ns/1ps

module Decode_And_Execute_t();
    reg [3:0] rs = 4'b0, rt = 4'b0;
    wire [3:0] rd;
    reg [2:0] sel = 3'b000;
    wire error;
    reg [3:0] test;
    Decode_And_Execute G1(rs, rt, sel, rd);
    assign error = !(rd == test);
    initial begin
        //SUB
        repeat(2**4)begin
            repeat(2**4-1)begin
                test = rs - rt;
                #1
                rt = rt + 4'b1;
            end
            test = rs - rt;
            #1 
            rs = rs + 4'b1;
            rt = 4'b0;
        end
        rt = 4'b0;
        sel = sel + 3'b1;
        //ADD
        repeat(2**4)begin
            repeat(2**4-1)begin
                test = rs + rt;
                #1
                rt = rt + 4'b1;
            end
            test = rs + rt;
            #1 
            rs = rs + 4'b1;
            rt = 4'b0;
        end
        rt = 4'b0;
        sel = sel + 3'b1;
        //Bitwise OR
        repeat(2**4)begin
            repeat(2**4-1)begin
                test = rs | rt;
                #1
                rt = rt + 4'b1;
            end
            test = rs | rt;
            #1 
            rs = rs + 4'b1;
            rt = 4'b0;
        end
        rt = 4'b0;
        sel = sel + 3'b1;
        //Bitwise AND
        repeat(2**4)begin
            repeat(2**4-1)begin
                test = rs & rt;
                #1
                rt = rt + 4'b1;
            end
            test = rs & rt;
            #1 
            rs = rs + 4'b1;
            rt = 4'b0;
        end 
        rt = 4'b0;
        sel = sel + 3'b1;
        //Right shift
        repeat(2**4)begin
            repeat(2**4-1)begin
                test = {rt[3], rt[3], rt[2], rt[1]};
                #1
                rt = rt + 4'b1;
            end
            test = {rt[3], rt[3], rt[2], rt[1]};
            #1 
            rs = rs + 4'b1;
            rt = 4'b0;
        end
        rt = 4'b0;
        sel = sel + 3'b1;
        //Left Shift
        repeat(2**4)begin
            repeat(2**4-1)begin
                test = {rs[2], rs[1], rs[0], rs[3]};
                #1
                rt = rt + 4'b1;
            end
            test = {rs[2], rs[1], rs[0], rs[3]};
            #1 
            rs = rs + 4'b1;
            rt = 4'b0;
        end
        rt = 4'b0;
        sel = sel + 3'b1;
        //Compare LT
        repeat(2**4)begin
            repeat(2**4-1)begin
                test = {1'b1, 1'b0, 1'b1, rs < rt};
                #1
                rt = rt + 4'b1;
            end
            test = {1'b1, 1'b0, 1'b1, rs < rt};
            #1 
            rs = rs + 4'b1;
            rt = 4'b0;
        end
        rt = 4'b0;
        sel = sel + 3'b1;
        //Compare EQ
        repeat(2**4)begin
            repeat(2**4-1)begin
                test = {1'b1, 1'b1, 1'b1, rt == rs};
                #1
                rt = rt + 4'b1;
            end
            test = {1'b1, 1'b1, 1'b1, rt == rs};
            #1 
            rs = rs + 4'b1;
            rt = 4'b0;
        end
        $finish;
    end
endmodule