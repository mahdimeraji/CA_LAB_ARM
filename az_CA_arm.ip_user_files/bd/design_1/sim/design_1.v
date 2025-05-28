//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon May 26 18:13:10 2025
//Host        : DESKTOP-GMJTJOR running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=52,numReposBlks=52,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=26,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_0,
    rst_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire [31:0]ALU_1_ALUResult1;
  wire [3:0]ALU_1_status_flags;
  wire [31:0]Adder_32_0_w;
  wire [0:0]Cin_0_dout;
  wire Condition_Check_0_condition_met;
  wire Control_Unit_0_B;
  wire [3:0]Control_Unit_0_EXE_CMD;
  wire Control_Unit_0_MEM_R_EN;
  wire Control_Unit_0_S_Out;
  wire Control_Unit_0_WB_EN;
  wire Control_Unit_0_memWrite;
  wire [31:0]Exe_Mem_Pipeline_Reg_0_Alu_Res_Out;
  wire [3:0]Exe_Mem_Pipeline_Reg_0_Dest_out;
  wire Exe_Mem_Pipeline_Reg_0_MEM_W_EN_out;
  wire Exe_Mem_Pipeline_Reg_0_WB_EN_Out;
  wire [31:0]Execute_Memory_Stage_0_Rm_value_Out;
  wire Execute_Memory_Stage_0_memory_read_enable_out;
  wire [1:0]ForwardingUnit_0_selSrc1;
  wire [1:0]ForwardingUnit_0_selSrc2;
  wire Hazard_unit_0_hazard_Detected;
  wire [31:0]IF_0_pc_out;
  wire Id_Exe_Pipeline_Regi_0_Alu_Carry_In_Exe;
  wire Id_Exe_Pipeline_Regi_0_B_Out;
  wire [3:0]Id_Exe_Pipeline_Regi_0_EXE_CMD_out;
  wire Id_Exe_Pipeline_Regi_0_Im_Out;
  wire Id_Exe_Pipeline_Regi_0_MEM_R_EN_out;
  wire Id_Exe_Pipeline_Regi_0_MEM_W_EN_out;
  wire [31:0]Id_Exe_Pipeline_Regi_0_PC_out;
  wire Id_Exe_Pipeline_Regi_0_S_Out;
  wire [11:0]Id_Exe_Pipeline_Regi_0_Shifter_Operand_Out;
  wire [23:0]Id_Exe_Pipeline_Regi_0_Signed_Imm_24_Out;
  wire [3:0]Id_Exe_Pipeline_Regi_0_Src1_Out;
  wire [3:0]Id_Exe_Pipeline_Regi_0_Src2_Out;
  wire [31:0]Id_Exe_Pipeline_Regi_0_Val_Rm_out;
  wire [31:0]Id_Exe_Pipeline_Regi_0_Val_Rn_out;
  wire Id_Exe_Pipeline_Regi_0_WB_EN_out;
  wire [31:0]If_Id_Register_0_PC_Id;
  wire [31:0]Memory_WriteBack_Sta_0_alu_result_output;
  wire [3:0]Memory_WriteBack_Sta_0_destination_reg_out;
  wire [31:0]Memory_WriteBack_Sta_0_memory_data_output;
  wire Memory_WriteBack_Sta_0_memory_read_enable_out;
  wire Memory_WriteBack_Sta_0_writeback_enable_out;
  wire [31:0]Mux3To1_0_Mux_out;
  wire [31:0]Mux3To1_1_Mux_out1;
  wire [3:0]Mux_0_out;
  wire [8:0]Mux_1_out;
  wire [31:0]My_mux_0_Mux_out;
  wire [31:0]My_mux_1_out;
  wire [3:0]Net;
  wire [31:0]Net1;
  wire OR_Gate_0_y;
  wire OR_Gate_1_y;
  wire OR_Gate_2_y;
  wire [31:0]RegisterFile_0_readData1;
  wire [31:0]RegisterFile_0_readData2;
  wire [0:0]Register_En_dout;
  wire [0:0]Slice_S_exe_Dout;
  wire [31:0]Val2_Generator_1_operand_out;
  wire clk_0_1;
  wire [31:0]data_memory_spo;
  wire [31:0]dist_mem_gen_1_spo;
  wire [31:0]if_id_out_1;
  wire not_gate_0_y;
  wire not_gate_1_y;
  wire rst_0_1;
  wire [0:0]slice_B_Exe_Dout;
  wire [0:0]slice_Cin_Dout;
  wire [23:0]slice_Im_24_Dout;
  wire [0:0]slice_Im_Dout;
  wire [3:0]slice_Rm_Dout;
  wire [3:0]slice_Rn_Dout;
  wire [11:0]slice_ShOp_Dout;
  wire [0:0]slice_WB_En_exe_Dout;
  wire [3:0]slice_cond_Dout;
  wire [3:0]slice_exe_cmd_exe_Dout;
  wire [0:0]slice_mem_R_En_exe_Dout;
  wire [0:0]slice_mem_W_En_exe_Dout;
  wire [3:0]status_register_0_statusout;
  wire [8:0]xlconcat_0_dout;
  wire [8:0]xlconstant_0_dout1;
  wire [31:0]xlconstant_1_dout;
  wire [0:0]xlconstant_1_dout1;
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
        .CarryIn(Id_Exe_Pipeline_Regi_0_Alu_Carry_In_Exe),
        .SrcA1(Mux3To1_0_Mux_out),
        .SrcB1(Val2_Generator_1_operand_out),
        .status_flags(ALU_1_status_flags));
  design_1_Adder_0_0 Adder_0
       (.A(Net1),
        .B(xlconstant_1_dout),
        .Cin(Cin_0_dout),
        .Sum(IF_0_pc_out));
  design_1_Adder_32_0_0 Adder_32_0
       (.a(Id_Exe_Pipeline_Regi_0_PC_out),
        .b(Id_Exe_Pipeline_Regi_0_Signed_Imm_24_Out),
        .w(Adder_32_0_w));
  design_1_xlconstant_1_0 Cin_0
       (.dout(Cin_0_dout));
  design_1_Condition_Check_0_0 Condition_Check_0
       (.Cond(slice_cond_Dout),
        .SR(status_register_0_statusout),
        .clk(clk_0_1),
        .condition_met(Condition_Check_0_condition_met),
        .rst(rst_0_1));
  design_1_Control_Unit_0_0 Control_Unit_0
       (.aluCmd(Control_Unit_0_EXE_CMD),
        .branch(Control_Unit_0_B),
        .memRead(Control_Unit_0_MEM_R_EN),
        .memWrite(Control_Unit_0_memWrite),
        .mode(xlslice_0_Dout),
        .opcode(xlslice_1_Dout),
        .sIn(xlslice_0_Dout1),
        .sOut(Control_Unit_0_S_Out),
        .wbEn(Control_Unit_0_WB_EN));
  design_1_Execute_Memory_Stage_0_0 Execute_Memory_Stage_0
       (.Rm_value_In(Mux3To1_1_Mux_out1),
        .Rm_value_Out(Execute_Memory_Stage_0_Rm_value_Out),
        .alu_result_input(ALU_1_ALUResult1),
        .alu_result_output(Exe_Mem_Pipeline_Reg_0_Alu_Res_Out),
        .clock(clk_0_1),
        .destination(Net),
        .destination_output(Exe_Mem_Pipeline_Reg_0_Dest_out),
        .en(Register_En_dout),
        .memory_read_enable(Id_Exe_Pipeline_Regi_0_MEM_R_EN_out),
        .memory_read_enable_out(Execute_Memory_Stage_0_memory_read_enable_out),
        .memory_write_enable(Id_Exe_Pipeline_Regi_0_MEM_W_EN_out),
        .memory_write_enable_out(Exe_Mem_Pipeline_Reg_0_MEM_W_EN_out),
        .rst(rst_0_1),
        .write_back_enable(Id_Exe_Pipeline_Regi_0_WB_EN_out),
        .write_back_enable_out(Exe_Mem_Pipeline_Reg_0_WB_EN_Out));
  design_1_ForwardingUnit_0_0 ForwardingUnit_0
       (.destMem(Exe_Mem_Pipeline_Reg_0_Dest_out),
        .destWb(Memory_WriteBack_Sta_0_destination_reg_out),
        .forwardEn(xlconstant_1_dout1),
        .selSrc1(ForwardingUnit_0_selSrc1),
        .selSrc2(ForwardingUnit_0_selSrc2),
        .src1(Id_Exe_Pipeline_Regi_0_Src1_Out),
        .src2(Id_Exe_Pipeline_Regi_0_Src2_Out),
        .wbEnMem(Exe_Mem_Pipeline_Reg_0_WB_EN_Out),
        .wbEnWb(Memory_WriteBack_Sta_0_writeback_enable_out));
  design_1_Hazard_unit_0_4 Hazard_unit_0
       (.Exe_Dest(Net),
        .Exe_Mem_R_En(Id_Exe_Pipeline_Regi_0_MEM_R_EN_out),
        .Exe_WB_EN(Id_Exe_Pipeline_Regi_0_WB_EN_out),
        .Fw_En(xlconstant_1_dout1),
        .Mem_Dest(Exe_Mem_Pipeline_Reg_0_Dest_out),
        .Mem_WB_EN(Exe_Mem_Pipeline_Reg_0_WB_EN_Out),
        .Two_Src(OR_Gate_2_y),
        .hazard_Detected(Hazard_unit_0_hazard_Detected),
        .src1(slice_Rn_Dout));
  design_1_Id_Exe_Pipeline_Regi_0_0 Id_Exe_Pipeline_Regi_0
       (.Alu_Carry_In_Exe(Id_Exe_Pipeline_Regi_0_Alu_Carry_In_Exe),
        .Alu_Carry_In_Id(slice_Cin_Dout),
        .B_In(slice_B_Exe_Dout),
        .B_Out(Id_Exe_Pipeline_Regi_0_B_Out),
        .Dest(xlslice_0_Dout2),
        .Dest_out(Net),
        .EXE_CMD(slice_exe_cmd_exe_Dout),
        .EXE_CMD_out(Id_Exe_Pipeline_Regi_0_EXE_CMD_out),
        .Im_In(slice_Im_Dout),
        .Im_Out(Id_Exe_Pipeline_Regi_0_Im_Out),
        .MEM_R_EN(slice_mem_R_En_exe_Dout),
        .MEM_R_EN_out(Id_Exe_Pipeline_Regi_0_MEM_R_EN_out),
        .MEM_W_EN(slice_mem_W_En_exe_Dout),
        .MEM_W_EN_out(Id_Exe_Pipeline_Regi_0_MEM_W_EN_out),
        .PC(If_Id_Register_0_PC_Id),
        .PC_out(Id_Exe_Pipeline_Regi_0_PC_out),
        .S_In(Slice_S_exe_Dout),
        .S_Out(Id_Exe_Pipeline_Regi_0_S_Out),
        .Shifter_Operand_In(slice_ShOp_Dout),
        .Shifter_Operand_Out(Id_Exe_Pipeline_Regi_0_Shifter_Operand_Out),
        .Signed_Imm_24_In(slice_Im_24_Dout),
        .Signed_Imm_24_Out(Id_Exe_Pipeline_Regi_0_Signed_Imm_24_Out),
        .Src1_In(slice_Rn_Dout),
        .Src1_Out(Id_Exe_Pipeline_Regi_0_Src1_Out),
        .Src2_In(Mux_0_out),
        .Src2_Out(Id_Exe_Pipeline_Regi_0_Src2_Out),
        .Val_Rm_In(RegisterFile_0_readData2),
        .Val_Rm_out(Id_Exe_Pipeline_Regi_0_Val_Rm_out),
        .Val_Rn_In(RegisterFile_0_readData1),
        .Val_Rn_out(Id_Exe_Pipeline_Regi_0_Val_Rn_out),
        .WB_EN(slice_WB_En_exe_Dout),
        .WB_EN_out(Id_Exe_Pipeline_Regi_0_WB_EN_out),
        .clk(clk_0_1),
        .enable(Register_En_dout),
        .flush(Id_Exe_Pipeline_Regi_0_B_Out),
        .reset(rst_0_1));
  design_1_If_Id_Register_0_0 If_Id_Register_0
       (.Inst_Id(if_id_out_1),
        .Inst_If(dist_mem_gen_1_spo),
        .PC_Id(If_Id_Register_0_PC_Id),
        .PC_If(IF_0_pc_out),
        .clk(clk_0_1),
        .en(xlconstant_3_dout),
        .flush(Id_Exe_Pipeline_Regi_0_B_Out),
        .freeze(Hazard_unit_0_hazard_Detected),
        .rst(rst_0_1));
  design_1_Memory_WriteBack_Sta_0_0 Memory_WriteBack_Sta_0
       (.alu_result_input(Exe_Mem_Pipeline_Reg_0_Alu_Res_Out),
        .alu_result_output(Memory_WriteBack_Sta_0_alu_result_output),
        .clock(clk_0_1),
        .destination_reg(Exe_Mem_Pipeline_Reg_0_Dest_out),
        .destination_reg_out(Memory_WriteBack_Sta_0_destination_reg_out),
        .en(Register_En_dout),
        .memory_data_input(data_memory_spo),
        .memory_data_output(Memory_WriteBack_Sta_0_memory_data_output),
        .memory_read_enable(Execute_Memory_Stage_0_memory_read_enable_out),
        .memory_read_enable_out(Memory_WriteBack_Sta_0_memory_read_enable_out),
        .reset_signal(rst_0_1),
        .writeback_enable(Exe_Mem_Pipeline_Reg_0_WB_EN_Out),
        .writeback_enable_out(Memory_WriteBack_Sta_0_writeback_enable_out));
  design_1_Mux3To1_0_2 Mux3To1_0
       (.Mux_out(Mux3To1_0_Mux_out),
        .a0(Id_Exe_Pipeline_Regi_0_Val_Rn_out),
        .a1(Exe_Mem_Pipeline_Reg_0_Alu_Res_Out),
        .a2(My_mux_1_out),
        .sel(ForwardingUnit_0_selSrc1));
  design_1_Mux3To1_1_0 Mux3To1_1
       (.Mux_out(Mux3To1_1_Mux_out1),
        .a0(Id_Exe_Pipeline_Regi_0_Val_Rm_out),
        .a1(Exe_Mem_Pipeline_Reg_0_Alu_Res_Out),
        .a2(My_mux_1_out),
        .sel(ForwardingUnit_0_selSrc2));
  design_1_My_mux_0_0 My_mux_0
       (.Mux_out(My_mux_0_Mux_out),
        .input1(IF_0_pc_out),
        .input2(Adder_32_0_w),
        .s(Id_Exe_Pipeline_Regi_0_B_Out));
  design_1_My_mux_1_0 My_mux_1
       (.Mux_out(My_mux_1_out),
        .input1(Memory_WriteBack_Sta_0_alu_result_output),
        .input2(Memory_WriteBack_Sta_0_memory_data_output),
        .s(Memory_WriteBack_Sta_0_memory_read_enable_out));
  design_1_My_mux_2_0 My_mux_2
       (.Mux_out(Mux_0_out),
        .input1(slice_Rm_Dout),
        .input2(xlslice_0_Dout2),
        .s(slice_mem_W_En_exe_Dout));
  design_1_My_mux_3_0 My_mux_3
       (.Mux_out(Mux_1_out),
        .input1(xlconcat_0_dout),
        .input2(xlconstant_0_dout1),
        .s(OR_Gate_0_y));
  design_1_OR_Gate_0_0 OR_Gate_0
       (.a(not_gate_0_y),
        .b(Hazard_unit_0_hazard_Detected),
        .y(OR_Gate_0_y));
  design_1_OR_Gate_1_0 OR_Gate_1
       (.a(Id_Exe_Pipeline_Regi_0_MEM_R_EN_out),
        .b(Id_Exe_Pipeline_Regi_0_MEM_W_EN_out),
        .y(OR_Gate_1_y));
  design_1_OR_Gate_0_1 OR_Gate_2
       (.a(not_gate_1_y),
        .b(Exe_Mem_Pipeline_Reg_0_MEM_W_EN_out),
        .y(OR_Gate_2_y));
  design_1_PC_0_0 PC_0
       (.Pc_in(My_mux_0_Mux_out),
        .Pc_out(Net1),
        .clk(clk_0_1),
        .freez(Hazard_unit_0_hazard_Detected),
        .rst(rst_0_1));
  design_1_RegisterFile_0_0 RegisterFile_0
       (.clk(clk_0_1),
        .readData1(RegisterFile_0_readData1),
        .readData2(RegisterFile_0_readData2),
        .readRegister1(slice_Rn_Dout),
        .readRegister2(Mux_0_out),
        .regWrite(Memory_WriteBack_Sta_0_writeback_enable_out),
        .reset(rst_0_1),
        .writeData(My_mux_1_out),
        .writeRegister(Memory_WriteBack_Sta_0_destination_reg_out));
  design_1_xlconstant_2_5 Register_En
       (.dout(Register_En_dout));
  design_1_Val2_Generator_1_0 Val2_Generator_1
       (.is_immediate(Id_Exe_Pipeline_Regi_0_Im_Out),
        .operand_in(Mux3To1_1_Mux_out1),
        .operand_out(Val2_Generator_1_operand_out),
        .shift_operand(Id_Exe_Pipeline_Regi_0_Shifter_Operand_Out),
        .sign_extend(OR_Gate_1_y));
  design_1_xlconstant_1_1 adder_in_B
       (.dout(xlconstant_1_dout));
  design_1_dist_mem_gen_0_0 data_memory
       (.a(Exe_Mem_Pipeline_Reg_0_Alu_Res_Out[12:0]),
        .clk(clk_0_1),
        .d(Execute_Memory_Stage_0_Rm_value_Out),
        .spo(data_memory_spo),
        .we(Exe_Mem_Pipeline_Reg_0_MEM_W_EN_out));
  design_1_dist_mem_gen_1_0 dist_mem_gen_1
       (.a(Net1[12:0]),
        .spo(dist_mem_gen_1_spo));
  design_1_not_gate_0_0 not_gate_0
       (.a(Condition_Check_0_condition_met),
        .y(not_gate_0_y));
  design_1_not_gate_0_1 not_gate_1
       (.a(slice_Im_Dout),
        .y(not_gate_1_y));
  design_1_xlslice_0_12 slice_B
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
  design_1_xlslice_0_14 slice_Mem_R
       (.Din(Mux_1_out),
        .Dout(slice_mem_R_En_exe_Dout));
  design_1_xlslice_0_4 slice_Rd
       (.Din(if_id_out_1),
        .Dout(xlslice_0_Dout2));
  design_1_xlslice_0_15 slice_Rm
       (.Din(if_id_out_1),
        .Dout(slice_Rm_Dout));
  design_1_xlslice_0_3 slice_Rn
       (.Din(if_id_out_1),
        .Dout(slice_Rn_Dout));
  design_1_xlslice_0_1 slice_S
       (.Din(if_id_out_1),
        .Dout(xlslice_0_Dout1));
  design_1_xlslice_0_11 slice_S_ex
       (.Din(Mux_1_out),
        .Dout(Slice_S_exe_Dout));
  design_1_xlslice_0_9 slice_ShOp
       (.Din(if_id_out_1),
        .Dout(slice_ShOp_Dout));
  design_1_xlslice_0_13 slice_WB
       (.Din(Mux_1_out),
        .Dout(slice_WB_En_exe_Dout));
  design_1_xlslice_0_6 slice_W_En
       (.Din(Mux_1_out),
        .Dout(slice_mem_W_En_exe_Dout));
  design_1_xlslice_0_7 slice_cmd
       (.Din(Mux_1_out),
        .Dout(slice_exe_cmd_exe_Dout));
  design_1_xlslice_0_2 slice_cond
       (.Din(if_id_out_1),
        .Dout(slice_cond_Dout));
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
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(Control_Unit_0_EXE_CMD),
        .In1(Control_Unit_0_MEM_R_EN),
        .In2(Control_Unit_0_memWrite),
        .In3(Control_Unit_0_WB_EN),
        .In4(Control_Unit_0_B),
        .In5(Control_Unit_0_S_Out),
        .dout(xlconcat_0_dout));
  design_1_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout1));
  design_1_xlconstant_1_2 xlconstant_1
       (.dout(xlconstant_1_dout1));
  design_1_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
endmodule
