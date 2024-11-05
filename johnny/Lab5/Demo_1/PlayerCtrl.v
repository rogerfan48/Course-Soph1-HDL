//
//
//
//

module PlayerCtrl (
	input clk,
	input reset,
	input sel,
	output reg [7:0] ibeat
);
parameter BEATLEAGTH = 28;

always @(posedge clk, posedge reset) begin
	if (reset) begin
		ibeat <= 0;
	end else begin
		if(!sel) begin
			if(ibeat < BEATLEAGTH || ibeat == 0) ibeat <= ibeat + 1;
			else ibeat <= 28;
		end else begin
			if((ibeat <= BEATLEAGTH && ibeat > 0) || ibeat == 28) ibeat <= ibeat - 1;
			else ibeat <= 0;
		end
	end
end
endmodule