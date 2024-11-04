//
//
//
//

`define NM1 32'd466 //bB_freq
`define NM2 32'd523 //C_freq
`define NM3 32'd587 //D_freq
`define NM4 32'd622 //bE_freq
`define NM5 32'd698 //F_freq
`define NM6 32'd784 //G_freq
`define NM7 32'd880 //A_freq
`define NM0 32'd20000 //slience (over freq.)

module Music (
	input [5:0] ibeatNum,	
	output reg [31:0] tone
);

always @(*) begin
	case (ibeatNum)
		6'd0 : tone = `NM1;
		6'd1 : tone = `NM2;
		6'd2 : tone = `NM3;
		6'd3 : tone = `NM4;
		6'd4 : tone = `NM5;
		6'd5 : tone = `NM6;
		6'd6 : tone = `NM7;

		6'd7 : tone = `NM1 << 1;
        6'd8 : tone = `NM2 << 1;
		6'd9 : tone = `NM3 << 1;
		6'd10 : tone = `NM4 << 1;
		6'd11 : tone = `NM5 << 1;
		6'd12 : tone = `NM6 << 1;
		6'd13 : tone = `NM7 << 1;

		6'd14 : tone = `NM1 << 2;
        6'd15 : tone = `NM2 << 2;
		6'd16 : tone = `NM3 << 2;
		6'd17 : tone = `NM4 << 2;
		6'd18 : tone = `NM5 << 2;
		6'd19 : tone = `NM6 << 2;
		6'd20 : tone = `NM7 << 2;
        
        6'd21 : tone = `NM1 << 3;
        6'd22 : tone = `NM2 << 3;
		6'd23 : tone = `NM3 << 3;
		6'd24 : tone = `NM4 << 3;
		6'd25 : tone = `NM5 << 3;
		6'd26 : tone = `NM6 << 3;
		6'd27 : tone = `NM7 << 3;
        
        6'd28 : tone = `NM1 << 4;
		
		default : tone = `NM0;
	endcase
end

endmodule