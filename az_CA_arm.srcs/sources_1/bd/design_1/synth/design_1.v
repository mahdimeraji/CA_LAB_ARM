//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Apr 28 17:11:09 2025
//Host        : DESKTOP-GMJTJOR running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=44,numReposBlks=44,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=18,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_0,
    rst_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire [31:0]ALU_1_ALUResult1;
  wire [3:0]ALU_1_status_flags;
  wire Condition_Check_0_condition_met;
  wire Control_Unit_0_B;
  wire [3:0]Control_Unit_0_EXE_CMD;
  wire Control_Unit_0_MEM_R_EN;
  wire Control_Unit_0_MEM_W_EN;
  wire Control_Unit_0_S_Out;
  wire Control_Unit_0_WB_EN;
  wire [31:0]Exe_Mem_Pipeline_Reg_0_Alu_Res_Out;
  wire [3:0]Exe_Mem_Pipeline_Reg_0_Dest_out;
  wire Exe_Mem_Pipeline_Reg_0_MEM_R_EN_out;
  wire Exe_Mem_Pipeline_Reg_0_MEM_W_EN_out;
  wire [31:0]Exe_Mem_Pipeline_Reg_0_Val_Rm_out;
  wire Exe_Mem_Pipeline_Reg_0_WB_EN_Out;
  wire [31:0]IF_0_pc_out;
  wire [3:0]Id_Exe_Pipeline_Regi_0_Dest_out;
  wire [3:0]Id_Exe_Pipeline_Regi_0_EXE_CMD_out;
  wire Id_Exe_Pipeline_Regi_0_Im_Out;
  wire Id_Exe_Pipeline_Regi_0_MEM_R_EN_out;
  wire Id_Exe_Pipeline_Regi_0_MEM_W_EN_out;
  wire [31:0]Id_Exe_Pipeline_Regi_0_PC_out;
  wire Id_Exe_Pipeline_Regi_0_S_Out;
  wire [11:0]Id_Exe_Pipeline_Regi_0_Shifter_Operand_Out;
  wire [23:0]Id_Exe_Pipeline_Regi_0_Signed_Imm_24_Out;
  wire [31:0]Id_Exe_Pipeline_Regi_0_Val_Rm_out;
  wire [31:0]Id_Exe_Pipeline_Regi_0_Val_Rn_out;
  wire Id_Exe_Pipeline_Regi_0_WB_EN_out;
  wire [31:0]Mem_Wb_Pipeline_Regi_0_Alu_Res_Out;
  wire [31:0]Mem_Wb_Pipeline_Regi_0_Data_to_WB_Out;
  wire [3:0]Mem_Wb_Pipeline_Regi_0_Dest_out;
  wire Mem_Wb_Pipeline_Regi_0_MEM_R_EN_out;
  wire Mem_Wb_Pipeline_Regi_0_WB_EN_out;
  wire [3:0]Mux_0_out;
  wire [8:0]Mux_1_out;
  wire [31:0]Mux_2_out;
  wire OR_Gate_0_y;
  wire OR_Gate_1_y;
  wire [31:0]RegisterFile_0_readData1;
  wire [31:0]RegisterFile_0_readData2;
  wire [0:0]Register_En_dout;
  wire [0:0]Slice_S_exe_Dout;
  wire clk_0_1;
  wire [31:0]data_memory_spo;
  wire [31:0]dist_mem_gen_1_spo;
  wire [0:0]hazard_dout;
  wire [31:0]if_id_out_1;
  wire [31:0]if_id_out_2;
  wire [0:0]mux_ctl;
  wire not_gate_0_y;
  wire rst_0_1;
  wire [0:0]slice_B_Exe_Dout;
  wire [0:0]slice_Cin_Dout;
  wire [23:0]slice_Im_24_Dout;
  wire [0:0]slice_Im_Dout;
  wire [3:0]slice_Rn_Dout;
  wire [11:0]slice_ShOp_Dout;
  wire [0:0]slice_WB_En_exe_Dout;
  wire [3:0]slice_cond_Dout;
  wire [3:0]slice_exe_cmd_exe_Dout;
  wire [0:0]slice_mem_R_En_exe_Dout;
  wire [0:0]slice_mem_W_En_exe_Dout;
  wire [3:0]status_register_0_statusout;
  wire [31:0]val2_generator_0_operand_out;
  wire [8:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_0_dout1;
  wire [31:0]xlconstant_2_dout;
  wire [0:0]xlconstant_3_dout;
  wire [1:0]xlslice_0_Dout;
  wire [0:0]xlslice_0_Dout1;
  wire [3:0]xlslice_0_Dout2;
  wire [3:0]xlslice_1_Dout;

  assign clk_0_1 = clk_0;
  assign rst_0_1 = rst_0;
  design_1_ALU_1_0 ALU_1
       (.ALUResult1(ALU_1_ALUResult1),
        .ALUcnt(Id_Exe_Pipeline_Regi_0_EXE_CMD_out),
        .CarryIn(slice_Cin_Dout),
        .SrcA1(Id_Exe_Pipeline_Regi_0_Val_Rn_out),
        .SrcB1(val2_generator_0_operand_out),
        .status_flags(ALU_1_status_flags));
  design_1_Adder_32_0_0 Adder_32_0
       (.a(Id_Exe_Pipeline_Regi_0_PC_out),
        .b(Id_Exe_Pipeline_Regi_0_Signed_Imm_24_Out));
  design_1_Condition_Check_0_0 Condition_Check_0
       (.Cond(slice_cond_Dout),
        .SR(status_register_0_statusout),
        .clk(clk_0_1),
        .condition_met(Condition_Check_0_condition_met),
        .rst(rst_0_1));
  design_1_Control_Unit_0_0 Control_Unit_0
       (.B(Control_Unit_0_B),
        .EXE_CMD(Control_Unit_0_EXE_CMD),
        .MEM_R_EN(Control_Unit_0_MEM_R_EN),
        .MEM_W_EN(Control_Unit_0_MEM_W_EN),
        .Mode(xlslice_0_Dout),
        .Op_Code(xlslice_1_Dout),
        .S_In(xlslice_0_Dout1),
        .S_Out(Control_Unit_0_S_Out),
        .WB_EN(Control_Unit_0_WB_EN),
        .clk(clk_0_1),
        .rst(rst_0_1));
  design_1_Exe_Mem_Pipeline_Reg_0_0 Exe_Mem_Pipeline_Reg_0
       (.Alu_Res_In(ALU_1_ALUResult1),
        .Alu_Res_Out(Exe_Mem_Pipeline_Reg_0_Alu_Res_Out),
        .Dest(Id_Exe_Pipeline_Regi_0_Dest_out),
        .Dest_out(Exe_Mem_Pipeline_Reg_0_Dest_out),
        .MEM_R_EN(Id_Exe_Pipeline_Regi_0_MEM_R_EN_out),
        .MEM_R_EN_out(Exe_Mem_Pipeline_Reg_0_MEM_R_EN_out),
        .MEM_W_EN(Id_Exe_Pipeline_Regi_0_MEM_W_EN_out),
        .MEM_W_EN_out(Exe_Mem_Pipeline_Reg_0_MEM_W_EN_out),
        .Val_Rm_In(Id_Exe_Pipeline_Regi_0_Val_Rm_out),
        .Val_Rm_out(Exe_Mem_Pipeline_Reg_0_Val_Rm_out),
        .WB_EN(1'b0),
        .WB_EN_out(Exe_Mem_Pipeline_Reg_0_WB_EN_Out),
        .clk(clk_0_1),
        .enable(Register_En_dout),
        .reset(rst_0_1));
  design_1_xlconstant_0_0 Freez
       (.dout(xlconstant_0_dout));
  design_1_IF_0_0 IF_0
       (.Branch_Address(xlconstant_2_dout),
        .Frz(xlconstant_0_dout),
        .clk(clk_0_1),
        .mux_ctl(mux_ctl),
        .pc_out(IF_0_pc_out),
        .rst(rst_0_1));
  design_1_Id_Exe_Pipeline_Regi_0_0 Id_Exe_Pipeline_Regi_0
       (.B_In(slice_B_Exe_Dout),
        .Dest(xlslice_0_Dout2),
        .Dest_out(Id_Exe_Pipeline_Regi_0_Dest_out),
        .EXE_CMD(slice_exe_cmd_exe_Dout),
        .EXE_CMD_out(Id_Exe_Pipeline_Regi_0_EXE_CMD_out),
        .Im_In(slice_Im_Dout),
        .Im_Out(Id_Exe_Pipeline_Regi_0_Im_Out),
        .MEM_R_EN(slice_mem_R_En_exe_Dout),
        .MEM_R_EN_out(Id_Exe_Pipeline_Regi_0_MEM_R_EN_out),
        .MEM_W_EN(slice_mem_W_En_exe_Dout),
        .MEM_W_EN_out(Id_Exe_Pipeline_Regi_0_MEM_W_EN_out),
        .PC(if_id_out_2),
        .PC_out(Id_Exe_Pipeline_Regi_0_PC_out),
        .S_In(Slice_S_exe_Dout),
        .S_Out(Id_Exe_Pipeline_Regi_0_S_Out),
        .Shifter_Operand_In(slice_ShOp_Dout),
        .Shifter_Operand_Out(Id_Exe_Pipeline_Regi_0_Shifter_Operand_Out),
        .Signed_Imm_24_In(slice_Im_24_Dout),
        .Signed_Imm_24_Out(Id_Exe_Pipeline_Regi_0_Signed_Imm_24_Out),
        .Val_Rm_In(RegisterFile_0_readData2),
        .Val_Rm_out(Id_Exe_Pipeline_Regi_0_Val_Rm_out),
        .Val_Rn_In(RegisterFile_0_readData1),
        .Val_Rn_out(Id_Exe_Pipeline_Regi_0_Val_Rn_out),
        .WB_EN(slice_WB_En_exe_Dout),
        .WB_EN_out(Id_Exe_Pipeline_Regi_0_WB_EN_out),
        .clk(clk_0_1),
        .enable(Register_En_dout),
        .reset(rst_0_1));
  design_1_Mem_Wb_Pipeline_Regi_0_0 Mem_Wb_Pipeline_Regi_0
       (.Alu_Res_In(Exe_Mem_Pipeline_Reg_0_Alu_Res_Out),
        .Alu_Res_Out(Mem_Wb_Pipeline_Regi_0_Alu_Res_Out),
        .Data_to_WB_In(data_memory_spo),
        .Data_to_WB_Out(Mem_Wb_Pipeline_Regi_0_Data_to_WB_Out),
        .Dest(Exe_Mem_Pipeline_Reg_0_Dest_out),
        .Dest_out(Mem_Wb_Pipeline_Regi_0_Dest_out),
        .MEM_R_EN(Exe_Mem_Pipeline_Reg_0_MEM_R_EN_out),
        .MEM_R_EN_out(Mem_Wb_Pipeline_Regi_0_MEM_R_EN_out),
        .WB_EN(Exe_Mem_Pipeline_Reg_0_WB_EN_Out),
        .WB_EN_out(Mem_Wb_Pipeline_Regi_0_WB_EN_out),
        .clk(clk_0_1),
        .enable(Register_En_dout),
        .reset(rst_0_1));
  design_1_Mux_0_0 Mux_0
       (.input1(slice_Rn_Dout),
        .input2(xlslice_0_Dout2),
        .input3(1'b0),
        .out(Mux_0_out));
  design_1_Mux_1_0 Mux_1
       (.input1(xlconcat_0_dout),
        .input2(xlconstant_0_dout1),
        .input3(OR_Gate_0_y),
        .out(Mux_1_out));
  design_1_Mux_2_0 Mux_2
       (.input1(Mem_Wb_Pipeline_Regi_0_Alu_Res_Out),
        .input2(Mem_Wb_Pipeline_Regi_0_Data_to_WB_Out),
        .input3(Mem_Wb_Pipeline_Regi_0_MEM_R_EN_out),
        .out(Mux_2_out));
  design_1_OR_Gate_0_0 OR_Gate_0
       (.a(not_gate_0_y),
        .b(hazard_dout),
        .y(OR_Gate_0_y));
  design_1_OR_Gate_1_0 OR_Gate_1
       (.a(Id_Exe_Pipeline_Regi_0_MEM_R_EN_out),
        .b(Id_Exe_Pipeline_Regi_0_MEM_W_EN_out),
        .y(OR_Gate_1_y));
  design_1_RegisterFile_0_0 RegisterFile_0
       (.clk(clk_0_1),
        .readData1(RegisterFile_0_readData1),
        .readData2(RegisterFile_0_readData2),
        .readRegister1(slice_Rn_Dout),
        .readRegister2(Mux_0_out),
        .regWrite(Mem_Wb_Pipeline_Regi_0_WB_EN_out),
        .reset(rst_0_1),
        .writeData(Mux_2_out),
        .writeRegister(Mem_Wb_Pipeline_Regi_0_Dest_out));
  design_1_xlconstant_2_5 Register_En
       (.dout(Register_En_dout));
  design_1_xlslice_0_11 Slice_S_exe
       (.Din(Mux_1_out),
        .Dout(Slice_S_exe_Dout));
  design_1_xlconstant_2_0 branch_addr
       (.dout(xlconstant_2_dout));
  design_1_dist_mem_gen_0_0 data_memory
       (.a(Exe_Mem_Pipeline_Reg_0_Alu_Res_Out[12:0]),
        .clk(clk_0_1),
        .d(Exe_Mem_Pipeline_Reg_0_Val_Rm_out),
        .spo(data_memory_spo),
        .we(Exe_Mem_Pipeline_Reg_0_MEM_W_EN_out));
  design_1_dist_mem_gen_1_0 dist_mem_gen_1
       (.a(IF_0_pc_out[12:0]),
        .spo(dist_mem_gen_1_spo));
  design_1_xlconstant_2_4 hazard
       (.dout(hazard_dout));
  design_1_Register_0_0 if_id
       (.clk(clk_0_1),
        .en(xlconstant_3_dout),
        .in_1(IF_0_pc_out),
        .in_2(dist_mem_gen_1_spo),
        .out_1(if_id_out_2),
        .out_2(if_id_out_1),
        .rst(rst_0_1));
  design_1_not_gate_0_0 not_gate_0
       (.a(Condition_Check_0_condition_met),
        .y(not_gate_0_y));
  design_1_xlslice_0_12 slice_B_Exe
       (.Din(Mux_1_out),
        .Dout(slice_B_Exe_Dout));
  design_1_xlslice_0_10 slice_Cin
       (.Din(status_register_0_statusout),
        .Dout(slice_Cin_Dout));
  design_1_xlslice_0_8 slice_Im
       (.Din(if_id_out_1),
        .Dout(slice_Im_Dout));
  design_1_xlslice_0_5 slice_Im_24
       (.Din(if_id_out_1),
        .Dout(slice_Im_24_Dout));
  design_1_xlslice_0_4 slice_Rd
       (.Din(if_id_out_1),
        .Dout(xlslice_0_Dout2));
  design_1_xlslice_0_3 slice_Rn
       (.Din(if_id_out_1),
        .Dout(slice_Rn_Dout));
  design_1_xlslice_0_1 slice_S
       (.Din(if_id_out_1),
        .Dout(xlslice_0_Dout1));
  design_1_xlslice_0_9 slice_ShOp
       (.Din(if_id_out_1),
        .Dout(slice_ShOp_Dout));
  design_1_xlslice_0_13 slice_WB_En_exe
       (.Din(Mux_1_out),
        .Dout(slice_WB_En_exe_Dout));
  design_1_xlslice_0_2 slice_cond
       (.Din(if_id_out_1),
        .Dout(slice_cond_Dout));
  design_1_xlslice_0_7 slice_exe_cmd_exe
       (.Din(Mux_1_out),
        .Dout(slice_exe_cmd_exe_Dout));
  design_1_xlslice_0_14 slice_mem_R_En_exe
       (.Din(Mux_1_out),
        .Dout(slice_mem_R_En_exe_Dout));
  design_1_xlslice_0_6 slice_mem_W_En_exe
       (.Din(Mux_1_out),
        .Dout(slice_mem_W_En_exe_Dout));
  design_1_xlslice_0_0 slice_mode
       (.Din(if_id_out_1),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_1_0 slice_opc
       (.Din(if_id_out_1),
        .Dout(xlslice_1_Dout));
  design_1_status_register_0_0 status_register_0
       (.SE(Id_Exe_Pipeline_Regi_0_S_Out),
        .clk(clk_0_1),
        .rst(rst_0_1),
        .status(ALU_1_status_flags),
        .statusout(status_register_0_statusout));
  design_1_val2_generator_0_0 val2_generator_0
       (.is_immediate(Id_Exe_Pipeline_Regi_0_Im_Out),
        .operand_in(Id_Exe_Pipeline_Regi_0_Val_Rm_out),
        .operand_out(val2_generator_0_operand_out),
        .shift_operand(Id_Exe_Pipeline_Regi_0_Shifter_Operand_Out),
        .sign_extend(OR_Gate_1_y));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(Control_Unit_0_EXE_CMD),
        .In1(Control_Unit_0_MEM_R_EN),
        .In2(Control_Unit_0_MEM_W_EN),
        .In3(Control_Unit_0_WB_EN),
        .In4(Control_Unit_0_B),
        .In5(Control_Unit_0_S_Out),
        .dout(xlconcat_0_dout));
  design_1_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout1));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(mux_ctl));
  design_1_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
endmodule
