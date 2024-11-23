`include "clock_divisor.v"
`include "mouse.v"
`include "vga.v"
`include "pixel_gen.v"

module Top (
    input clk,
    input rst,
    input button_in_U,
    input button_in_D,
    input button_in_L,
    input button_in_R,
    input button_in_M,
    output [3:0] vgaRed,
    output [3:0] vgaGreen,
    output [3:0] vgaBlue,
    output hsync,
    output vsync,
    inout PS2_CLK,
    inout PS2_DATA
);

    wire button_U, button_D, button_L, button_R, button_M;
    Debounce DB_U (clk, button_in_U, button_U);
    Debounce DB_D (clk, button_in_D, button_D);
    Debounce DB_L (clk, button_in_L, button_L);
    Debounce DB_R (clk, button_in_R, button_R);
    Debounce DB_M (clk, button_in_M, button_M);

    wire clk_25MHz;
    Clk_Divisor_4 Clk_Div_4 (clk, clk_25MHz);

    wire valid;
    wire clk_frame;
    wire [9:0] h_cnt;  //640
    wire [9:0] v_cnt;  //480

    wire enable_mouse_display;
    wire [9:0] mouseX, mouseY;
    wire [3:0] MOUSE_RED, MOUSE_GREEN, MOUSE_BLUE;
    wire [11:0] MOUSE_PIXEL = {MOUSE_RED, MOUSE_GREEN, MOUSE_BLUE};

    Pixel_Gen Pixel_Gen (
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .mouseX(mouseX),
        .mouseY(mouseY),
        .valid(valid),
        .enable_mouse_display(enable_mouse_display),
        .mouse_pixel(MOUSE_PIXEL),
        .vgaRed(vgaRed),
        .vgaGreen(vgaGreen),
        .vgaBlue(vgaBlue)
    );

    VGA_Control VGA_Ctrl (
        .pclk(clk_25MHz),
        .reset(rst),
        .hsync(hsync),
        .vsync(vsync),
        .valid(valid),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .clk_frame(clk_frame)
    );

    Mouse Mouse_Ctrl (
        .clk(clk),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .enable_mouse_display(enable_mouse_display),
        .MOUSE_X_POS(mouseX),
        .MOUSE_Y_POS(mouseY),
        .red(MOUSE_RED),
        .green(MOUSE_GREEN),
        .blue(MOUSE_BLUE),
        .PS2_CLK(PS2_CLK),
        .PS2_DATA(PS2_DATA)
    );
endmodule

module Debounce(clk, pb, pb_d);
    input clk, pb;
    output pb_d;
    reg [8-1:0] DFF;

    assign pb_d = &DFF;
    always @(posedge clk) DFF[7:0] <= {DFF[6:0], pb};
endmodule