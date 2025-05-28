module Id_Exe_Pipeline_Register (
    input wire clk,            
    input wire reset,         
    input wire enable,         
    input wire flush,          // New flush input signal

    input wire Alu_Carry_In_Id, 
    input wire B_In,  
    input wire S_In, 
    input wire WB_EN,          
    input wire MEM_R_EN,      
    input wire MEM_W_EN,
    input wire Im_In,      
    input wire [3:0] EXE_CMD,  

    input wire [31:0] Val_Rn_In,     
    input wire [31:0] Val_Rm_In,     
    input wire [31:0] PC,      
    input wire [3:0] Dest,     
    input wire [23:0] Signed_Imm_24_In,
    input wire [11:0] Shifter_Operand_In,
    input wire [3:0] Src1_In,
    input wire [3:0] Src2_In,
    
    output reg B_Out,  
    output reg S_Out, 
    output reg WB_EN_out,
    output reg MEM_R_EN_out,
    output reg MEM_W_EN_out,
    output reg Im_Out,
    output reg Alu_Carry_In_Exe,
    output reg [3:0] EXE_CMD_out,
    output reg [31:0] Val_Rn_out,
    output reg [31:0] Val_Rm_out,
    output reg [31:0] PC_out,
    output reg [3:0] Dest_out,
    output reg [23:0] Signed_Imm_24_Out,
    output reg [11:0] Shifter_Operand_Out,
    output reg [3:0] Src1_Out,
    output reg [3:0] Src2_Out
);

always @(posedge clk) begin
    if (reset || flush) begin  // Added flush condition here
        B_Out         <= 0;
        S_Out         <= 0;
        WB_EN_out     <= 0;
        MEM_R_EN_out  <= 0;
        MEM_W_EN_out  <= 0;
        Im_Out        <= 0;
        EXE_CMD_out   <= 0;
        Val_Rn_out    <= 0;
        Val_Rm_out    <= 0;
        PC_out        <= 0;
        Dest_out      <= 0;
        Signed_Imm_24_Out <= 0;
        Shifter_Operand_Out <= 0;
        Alu_Carry_In_Exe    <= 0;
        Src1_Out          <= 0;
        Src2_Out          <= 0;   
    end
    else if (enable) begin
        B_Out         <= B_In;
        S_Out         <= S_In;
        WB_EN_out     <= WB_EN;
        MEM_R_EN_out  <= MEM_R_EN;
        MEM_W_EN_out  <= MEM_W_EN;
        Im_Out        <= Im_In;
        EXE_CMD_out   <= EXE_CMD;
        Val_Rn_out    <= Val_Rn_In;
        Val_Rm_out    <= Val_Rm_In;
        PC_out        <= PC;
        Dest_out      <= Dest;
        Signed_Imm_24_Out <= Signed_Imm_24_In;
        Shifter_Operand_Out <= Shifter_Operand_In;
        Alu_Carry_In_Exe    <= Alu_Carry_In_Id;
        Src1_Out      <= Src1_In;
        Src2_Out      <= Src2_In;
    end
end

endmodule