`timescale 1ns/1ps

module Memory_t;
reg clk = 0;
reg ren = 1'b0;
reg wen = 1'b0;
reg [6:0] addr = 7'd0;
reg [7:0] din = 8'd0;
wire [7:0] dout;

// specify duration of a clock cycle.
parameter cyc = 10;

// generate clock.
always#(cyc/2)clk = !clk;

Memory mem(
    .clk(clk),
    .ren(ren),
    .wen(wen),
    .din(din),
    .addr(addr),
    .dout(dout)
);

// uncommment and add "+access+r" to your nverilog command to dump fsdb waveform on NTHUCAD
// initial begin
//     $fsdbDumpfile("Memory.fsdb");
//     $fsdbDumpvars;
// end

initial begin
    @(negedge clk)
    addr = 7'd87;
    din = 8'd87;
    ren = 1'b0;
    wen = 1'b1;
    @(negedge clk)
    addr = 7'd87;
    din = 8'd87;
    ren = 1'b1;
    wen = 1'b1;
    @(negedge clk)
    addr = 7'd87;
    din = 8'd87;
    ren = 1'b1;
    wen = 1'b0;
    @(negedge clk)
    addr = 7'd15;
    din = 8'd85;
    ren = 1'b1;
    wen = 1'b1;
    @(negedge clk)
    addr = 7'd15;
    din = 8'd0;
    ren = 1'b0;
    wen = 1'b1;
    @(negedge clk)
    addr = 7'd127;
    din = 8'd77;
    ren = 1'b1;
    wen = 1'b0;
    @(negedge clk)
    addr = 7'd15;
    din = 8'd66;
    ren = 1'b0;
    wen = 1'b1;
    @(negedge clk)
    addr = 7'd127;
    din = 8'd89;
    ren = 1'b1;
    wen = 1'b1;
    @(negedge clk)
    addr = 7'd127;
    din = 8'd89;
    ren = 1'b0;
    wen = 1'b1;
    @(negedge clk)
    addr = 7'd15;
    din = 8'd66;
    ren = 1'b1;
    wen = 1'b1;
    @(negedge clk)
    addr = 7'd127;
    din = 8'd0;
    ren = 1'b1;
    wen = 1'b0;
    @(negedge clk)
    $finish;
end

initial begin
    $dumpfile("Memory_t.vcd");
    $dumpvars;
end

endmodule

`timescale 1ns/1ps

module Memory (clk, ren, wen, addr, din, dout);
    input clk;
    input ren, wen;
    input [7-1:0] addr;
    input [8-1:0] din;
    output [8-1:0] dout;

    reg [7:0] dout;
    reg [7:0] dotcar;

    reg [7:0] MEM[127:0];
    always @(posedge clk) begin
        if(ren) dout <= MEM[addr];  
        else if(wen) begin
            MEM[addr] <= din; 
            dout <= dotcar;
        end
        else dout <= dotcar;
    end
endmodule
