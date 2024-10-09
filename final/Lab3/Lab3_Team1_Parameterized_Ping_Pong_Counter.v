module Parameterized_Ping_Pong_Counter (clk, rst_n, enable, flip, max, min, direction, out);
    input clk, rst_n;
    input enable;
    input flip;
    input [4-1:0] max;
    input [4-1:0] min;
    output reg direction;
    output reg [4-1:0] out;

    always @(posedge clk) begin
        if(!rst_n) begin //case 0
            out <= min;
            direction <= 1'b1;
        end
        else if(enable == 1) begin //case 1
            if(min > max) begin
                out <= out;
                direction <= direction;
            end else if(out < max && out > min) begin //case 1-1
                if(direction == 1) begin
                    if(flip == 1) begin
                        direction <= !direction;
                        out <= out-1;
                    end else begin
                        out <= out+1;
                        direction <= direction;
                    end
                end
                else begin 
                    if(flip == 1) begin
                        direction <= !direction;
                        out <= out+1;
                    end else begin
                        out <= out-1;
                        direction <= direction;
                    end
                end
            end else if(out > max || out < min) begin
                out <= out; //case 1-2
                direction <= direction;
            end
            else if(out == min && out != max) begin //case 1-3
                out <= out+1;
                if(direction == 0) direction <= !direction;
                else direction <= direction;
            end
            else if(out == max && out != min) begin //case 1-4
                out <= out-1;
                if(direction == 1) direction <= !direction;
                else direction <= direction;
            end else begin 
                out <= out;
                direction <= direction;
            end
        end else begin
            out <= out;
            direction <= direction;
        end
    end
endmodule