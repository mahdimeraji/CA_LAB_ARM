module Hazard_unit(src1, src2, Two_Src, Exe_Dest, Exe_WB_EN, Mem_Dest, Mem_WB_EN, hazard_Detected);	
	input [3:0] src1, src2, Exe_Dest, Mem_Dest;
	input Exe_WB_EN, Mem_WB_EN, Two_Src;
	output reg hazard_Detected;
	
	always @(Exe_WB_EN, Mem_WB_EN, Two_Src, src1, src2, Exe_Dest, Mem_Dest) begin
		hazard_Detected = 1'b0;
		if (Exe_WB_EN == 1'b1) begin
			if (Two_Src == 1'b1) begin
				if (Exe_Dest == src1 || Exe_Dest == src2) begin
					hazard_Detected = 1'b1;
				end
			end
			else begin
				if (Exe_Dest == src1) begin
					hazard_Detected = 1'b1;
				end
			end
		end
		if (Mem_WB_EN == 1'b1) begin
			if (Two_Src == 1'b1) begin
				if (Mem_Dest == src1 || Mem_Dest == src2) begin
					hazard_Detected = 1'b1;
				end
			end
			else begin
				if (Mem_Dest == src1) begin
					hazard_Detected = 1'b1;
				end
			end
		end
	end
				 
endmodule