`include "tutorial.v"
module test_tb;
    reg in;
    wire out;
    reg [3:0] count;
    test t1(in, out);
    initial begin
        $dumpfile("test_tb.vcd");
        $dumpvars(0, test_tb);
        in = 0;
        for(count = 0; count < 15; count = count + 1) begin
            #10 in = ~in;
        end
        #10 $finish;
    end
endmodule