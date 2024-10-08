`timescale 1ns/1ps

module Parameterized_Ping_Pong_Counter_fpga(clk, rst_n, enable, flip, max, min, c_light, segment);

    input clk, rst_n;
    input enable;
    input flip;
    input [4-1:0] max;
    input [4-1:0] min;
    wire direction;
    wire [4-1:0] out;

    output reg [3:0] c_light = 4'b1110;
    output wire [6:0] segment;

    wire rst_pbd, out_rst_n;
    wire flip_pbd, out_flip;
    reg [16:0] timer_counter;
    reg timer;
    reg [23:0] timer2_counter;
    reg timer2;

    debounce DE1(rst_pbd, clk, rst_n);
    one_pulse OP1(out_rst_n, timer2, rst_pbd);
    debounce DE2(flip_pbd, clk, flip);
    one_pulse OP2(out_flip, timer2, flip_pbd);
    Parameterized_Ping_Pong_Counter PPPC(timer2, !out_rst_n, enable, out_flip, max, min, direction, out);

    always @(posedge clk) begin
        if(timer_counter == 17'b11111111111111111) timer <= !timer;
        if(timer2_counter == 24'b111111111111111111111111) timer2 <= !timer2;
        timer_counter <= timer_counter+1;
        timer2_counter <= timer2_counter+1;
    end

    always @(posedge timer) begin
        c_light[3] <= c_light[2];
        c_light[2] <= c_light[1];
        c_light[1] <= c_light[0];
        c_light[0] <= c_light[3];
    end

    assign segment[0] = !((!c_light[0] & direction) | (!c_light[1] & direction) | (!c_light[2] & !(out==1 || out==4 || out==11 || out==14)) | (!c_light[3] & !(out==10 || out==11 || out==12 || out==13 || out==14 || out==15))) ;
    assign segment[1] = !((!c_light[0] & direction) | (!c_light[1] & direction) | (!c_light[2] & !(out==5 || out==6 || out==15)) | (!c_light[3]));
    assign segment[2] = !((!c_light[0] & !direction) | (!c_light[1] & !direction) | (!c_light[2] & !(out==2 || out==12)) | (!c_light[3]));
    assign segment[3] = !((!c_light[0] & !direction) | (!c_light[1] & !direction) | (!c_light[2] & !(out==1 || out==4 || out==7 || out==11 || out==14)) | (!c_light[3] & !(out==10 || out==11 || out==12 || out==13 || out==14 || out==15)));
    assign segment[4] = !((!c_light[0] & !direction) | (!c_light[1] & !direction) | (!c_light[2] & (out==0 || out==2 || out==6 || out==8 || out==10 || out==12)) | (!c_light[3] & !(out==10 || out==11 || out==12 || out==13 || out==14 || out==15)));
    assign segment[5] = !((!c_light[0] & direction) | (!c_light[1] & direction) | (!c_light[2] & !(out==1 || out==2 || out==3 || out==7 || out==11 || out==12 || out==13)) | (!c_light[3] & !(out==10 || out==11 || out==12 || out==13 || out==14 || out==15)));
    assign segment[6] = !(!c_light[2] & !(out==0 || out==1 || out==7 || out==10 || out==11));

endmodule

module Parameterized_Ping_Pong_Counter (clk, rst_n, enable, flip, max, min, direction, out);
    input clk, rst_n;
    input enable;
    input flip;
    input [4-1:0] max;
    input [4-1:0] min;
    output reg direction = 1'b1;
    output reg [4-1:0] out;

    always @(posedge clk) begin
        if(!rst_n) begin //case 0
            out <= min;
            direction <= 1'b1;
        end
        else if(enable == 1) begin //case 1
            if(min > max) out <= out;
            else if(out < max && out > min) begin //case 1-1
                if(direction == 1) begin
                    if(flip == 1) begin
                        direction <= !direction;
                        out <= out-1;
                    end
                    else out <= out+1;
                end
                else begin 
                    if(flip == 1) begin
                        direction <= !direction;
                        out <= out+1;
                    end
                    else out <= out-1;
                end
            end
            else if(out > max || out < min) out <= out; //case 1-2
            else if(out == min && out != max) begin //case 1-3
                out <= out+1;
                if(direction == 0) direction <= !direction;
            end
            else if(out == max && out != min) begin //case 1-4
                out <= out-1;
                if(direction == 1) direction <= !direction;
            end
            else out <= out;
        end
        else out <= out;
    end
endmodule

module debounce (pbd, clk, pb);

    input clk, pb;
    output pbd;
    reg [3:0] DFF;

    assign pbd = (DFF == 4'b1111) ? 1'b1 : 1'b0 ;

    always @(posedge clk) begin
        DFF[3:1] <= DFF[2:0];
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