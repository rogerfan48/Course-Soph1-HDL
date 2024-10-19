`include "b3_Many_To_One_LFSR.v"
`timescale 1ns/1ps

module Many_To_One_LFSR_t;
reg clk = 0;
reg rst_n = 1;
wire [7:0] out;

// specify duration of a clock cycle.
parameter cyc = 10;

// generate clock.
always#(cyc/2)clk = !clk;

Many_To_One_LFSR m21lfsr(
    .clk(clk),
    .rst_n(rst_n),
    .out(out)
);

// uncommment and add "+access+r" to your nverilog command to dump fsdb waveform on NTHUCAD
// initial begin
//     $fsdbDumpfile("Many_To_One_LFSR.fsdb");
//     $fsdbDumpvars;
// end

initial begin
    @(negedge clk)
    rst_n = 1'b0;
    @(negedge clk)
    rst_n = 1'b1;
    $display("out: %b", out);
    repeat (16) begin
        #(cyc)
        $display("out: %b", out);
    end
    $finish;
end

initial begin
    $dumpfile("b3.vcd");
    $dumpvars(0, Many_To_One_LFSR_t);
end

endmodule
