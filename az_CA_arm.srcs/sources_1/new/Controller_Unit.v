`define MOV 6'b001101
`define MVN 6'b001111
`define ADD 6'b000100
`define ADC 6'b000101
`define SUB 6'b000010
`define SBC 6'b000110
`define AND 6'b000000
`define ORR 6'b001100
`define EOR 6'b000001
`define CMP 6'b001010
`define TST 6'b001000
`define LDR_STR 6'b010100
module Control_Unit(clk, rst, Mode, Op_Code, S_In, EXE_CMD, MEM_R_EN, MEM_W_EN, WB_EN, B, S_Out);
	input clk, rst, S_In;
	input [1:0] Mode;
	input [3:0] Op_Code;
	output reg [3:0] EXE_CMD;
	output reg MEM_R_EN, MEM_W_EN, WB_EN, B;
	output S_Out;

	wire[5:0] OPC = {Mode, Op_Code};

	always@(OPC, S_In, Mode) begin 
		{MEM_R_EN, MEM_W_EN, WB_EN, B, EXE_CMD} = 8'd0;
		case(OPC)
			`MOV: begin 
				EXE_CMD = 4'b0001;
				WB_EN = 1'b1;
			end
			`MVN: begin
				EXE_CMD = 4'b1001;
				WB_EN = 1'b1;
			end
			`ADD: begin
				EXE_CMD = 4'b0010;
				WB_EN = 1'b1;
			end
			`ADC: begin
				EXE_CMD = 4'b0011;
				WB_EN = 1'b1;
			end
			`SUB: begin 
				EXE_CMD = 4'b0100;
				WB_EN = 1'b1;
			end
			`SBC: begin 
				EXE_CMD = 4'b0101;
				WB_EN = 1'b1;
			end
			`AND: begin 
			  WB_EN = 1'd1;
				EXE_CMD = 4'b0110;
			end
			`ORR: begin 
				EXE_CMD = 4'b0111;
				WB_EN = 1'b1;
			end
			`EOR: begin 
				EXE_CMD = 4'b1000;
				WB_EN = 1'b1;
			end
			`CMP: begin 
				EXE_CMD = 4'b0100;
				WB_EN = 1'b0;
			end
			`TST: begin 
				EXE_CMD = 4'b0110;
				WB_EN = 1'b0;
			end
			`LDR_STR: begin 
			  if (S_In == 1) begin
			    EXE_CMD = 4'b0010;
			    MEM_R_EN = 1'b1;
			    WB_EN = 1'b1;
			  end else begin
			    EXE_CMD = 4'b0010;
			    MEM_W_EN = 1'b1;
			    WB_EN = 1'b0;
			  end
			end
		endcase
		if (Mode == 2'b10) begin
		  EXE_CMD = 4'bxxxx;
		  WB_EN = 1'b0;
		  B = Mode[1];
		end
	end
	
	assign S_Out = (Mode == 2'b01 | Mode == 2'b10) ? 1'b0 :
                   (Op_Code == 4'b1010 | Op_Code == 4'b1000) ? 1'b1 : S_In;
	
endmodule
