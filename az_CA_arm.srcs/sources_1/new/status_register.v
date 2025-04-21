module status_register (
    status , SE , statusout , clk , rst
);

input [3:0] status;
input clk , rst, SE;
output reg [3:0] statusout;

always @(negedge clk, posedge rst) begin
		if (rst == 1'b1)
			statusout <= 4'b0000;
		else begin
			if (SE == 1'b1)
				statusout <= status;
			else
				statusout <= statusout;
		end
	end
endmodule