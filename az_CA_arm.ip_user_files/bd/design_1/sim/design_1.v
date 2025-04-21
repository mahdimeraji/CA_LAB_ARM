//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Apr 21 17:21:10 2025
//Host        : DESKTOP-GMJTJOR running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=41,numReposBlks=41,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=17,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_0,
    rst_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire Condition_Check_0_condition_met;
  wire Control_Unit_0_B;
  wire [3:0]Control_Unit_0_EXE_CMD;
  wire Control_Unit_0_MEM_R_EN;
  wire Control_Unit_0_MEM_W_EN;
  wire Control_Unit_0_S_Out;
  wire Control_Unit_0_WB_EN;
  wire [31:0]IF_0_pc_out;
  wire [3:0]Mux_0_out;
  wire [8:0]Mux_1_out;
  wire OR_Gate_0_y;
  wire [31:0]blk_mem_gen_0_douta;
  wire clk_0_1;
  wire [31:0]ex_mem_out_1;
  wire [31:0]ex_mem_out_2;
  wire [0:0]hazard_dout;
  wire [31:0]id_exe_out_1;
  wire [31:0]id_exe_out_2;
  wire [31:0]if_id_out_1;
  wire [31:0]if_id_out_2;
  wire [0:0]mux_ctl;
  wire not_gate_0_y;
  wire [0:0]reg_write_dout;
  wire rst_0_1;
  wire [3:0]slice_Rn_Dout;
  wire [3:0]slice_cond_Dout;
  wire [3:0]status_register_0_statusout;
  wire [8:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_0_dout1;
  wire [31:0]xlconstant_2_dout;
  wire [3:0]xlconstant_2_dout1;
  wire [31:0]xlconstant_2_dout2;
  wire [0:0]xlconstant_3_dout;
  wire [1:0]xlslice_0_Dout;
  wire [0:0]xlslice_0_Dout1;
  wire [3:0]xlslice_0_Dout2;
  wire [3:0]xlslice_1_Dout;

  assign clk_0_1 = clk_0;
  assign rst_0_1 = rst_0;
  design_1_ALU_1_0 ALU_1
       (.ALUcnt({1'b0,1'b0,1'b0,1'b0}),
        .CarryIn(1'b0),
        .SrcA1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SrcB1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  design_1_Adder_32_0_0 Adder_32_0
       (.a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
  design_1_xlconstant_0_0 Freez
       (.dout(xlconstant_0_dout));
  design_1_IF_0_0 IF_0
       (.Branch_Address(xlconstant_2_dout),
        .Frz(xlconstant_0_dout),
        .clk(clk_0_1),
        .mux_ctl(mux_ctl),
        .pc_out(IF_0_pc_out),
        .rst(rst_0_1));
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
  design_1_OR_Gate_0_0 OR_Gate_0
       (.a(not_gate_0_y),
        .b(hazard_dout),
        .y(OR_Gate_0_y));
  design_1_OR_Gate_1_0 OR_Gate_1
       (.a(1'b0),
        .b(1'b0));
  design_1_RegisterFile_0_0 RegisterFile_0
       (.clk(clk_0_1),
        .readRegister1(slice_Rn_Dout),
        .readRegister2(Mux_0_out),
        .regWrite(reg_write_dout),
        .reset(rst_0_1),
        .writeData(xlconstant_2_dout2),
        .writeRegister(xlconstant_2_dout1));
  design_1_xlslice_0_11 Slice_S_exe
       (.Din(Mux_1_out));
  design_1_Val2generate_1_0 Val2generate_1
       (.MEM_EN(1'b0),
        .VAL2in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(IF_0_pc_out[12:0]),
        .clka(clk_0_1),
        .douta(blk_mem_gen_0_douta));
  design_1_xlconstant_2_0 branch_addr
       (.dout(xlconstant_2_dout));
  design_1_Register_2_0 ex_mem
       (.clk(clk_0_1),
        .en(xlconstant_3_dout),
        .in_1(id_exe_out_1),
        .in_2(id_exe_out_2),
        .out_1(ex_mem_out_1),
        .out_2(ex_mem_out_2),
        .rst(rst_0_1));
  design_1_xlconstant_2_4 hazard
       (.dout(hazard_dout));
  design_1_Register_1_0 id_exe
       (.clk(clk_0_1),
        .en(xlconstant_3_dout),
        .in_1(if_id_out_2),
        .in_2(if_id_out_1),
        .out_1(id_exe_out_1),
        .out_2(id_exe_out_2),
        .rst(rst_0_1));
  design_1_Register_0_0 if_id
       (.clk(clk_0_1),
        .en(xlconstant_3_dout),
        .in_1(IF_0_pc_out),
        .in_2(blk_mem_gen_0_douta),
        .out_1(if_id_out_2),
        .out_2(if_id_out_1),
        .rst(rst_0_1));
  design_1_mem_wb_2 mem_wb
       (.clk(clk_0_1),
        .en(xlconstant_3_dout),
        .in_1(ex_mem_out_1),
        .in_2(ex_mem_out_2),
        .rst(rst_0_1));
  design_1_not_gate_0_0 not_gate_0
       (.a(Condition_Check_0_condition_met),
        .y(not_gate_0_y));
  design_1_xlconstant_2_1 reg_write
       (.dout(reg_write_dout));
  design_1_xlslice_0_12 slice_B_Exe
       (.Din(Mux_1_out));
  design_1_xlslice_0_5 slice_Im
       (.Din(if_id_out_1));
  design_1_xlslice_0_4 slice_Rd
       (.Din(if_id_out_1),
        .Dout(xlslice_0_Dout2));
  design_1_xlslice_0_3 slice_Rn
       (.Din(if_id_out_1),
        .Dout(slice_Rn_Dout));
  design_1_xlslice_0_1 slice_S
       (.Din(if_id_out_1),
        .Dout(xlslice_0_Dout1));
  design_1_xlslice_0_13 slice_WB_En_exe
       (.Din(Mux_1_out));
  design_1_xlslice_0_2 slice_cond
       (.Din(if_id_out_1),
        .Dout(slice_cond_Dout));
  design_1_xlslice_0_7 slice_exe_cmd_exe
       (.Din(Mux_1_out));
  design_1_xlslice_0_14 slice_mem_R_En_exe
       (.Din(Mux_1_out));
  design_1_xlslice_0_6 slice_mem_W_En_exe
       (.Din(Mux_1_out));
  design_1_xlslice_0_0 slice_mode
       (.Din(if_id_out_1),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_1_0 slice_opc
       (.Din(if_id_out_1),
        .Dout(xlslice_1_Dout));
  design_1_status_register_0_0 status_register_0
       (.SE(1'b0),
        .clk(clk_0_1),
        .rst(rst_0_1),
        .status({1'b0,1'b0,1'b0,1'b0}),
        .statusout(status_register_0_statusout));
  design_1_xlconstant_2_3 write_data
       (.dout(xlconstant_2_dout2));
  design_1_xlconstant_2_2 write_register
       (.dout(xlconstant_2_dout1));
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
