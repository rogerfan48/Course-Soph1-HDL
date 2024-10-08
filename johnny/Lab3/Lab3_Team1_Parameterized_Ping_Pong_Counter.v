module Parameterized_Ping_Pong_Counter (clk, rst_n, enable, flip, max, min, direction, out);
    input clk = 0, rst_n = 0;
    input enable = 0;
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