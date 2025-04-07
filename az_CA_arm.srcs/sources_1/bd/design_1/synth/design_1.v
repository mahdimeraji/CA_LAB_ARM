//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Apr  7 13:17:43 2025
//Host        : DESKTOP-GMJTJOR running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (Prog_cnter_0,
    WB_Dest,
    WB_PC,
    clk_0,
    douta_0,
    rst_0);
  output [31:0]Prog_cnter_0;
  output [31:0]WB_Dest;
  output [31:0]WB_PC;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  output [31:0]douta_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire [31:0]IF_0_Prog_cnter;
  wire [31:0]IF_0_pc_out;
  wire [31:0]blk_mem_gen_0_douta;
  wire clk_0_1;
  wire [31:0]ex_mem_out_1;
  wire [31:0]ex_mem_out_2;
  wire [31:0]id_exe_out_1;
  wire [31:0]id_exe_out_2;
  wire [31:0]if_id_out_1;
  wire [31:0]if_id_out_2;
  wire [31:0]mem_wb1_out;
  wire [31:0]mem_wb_out_2;
  wire [0:0]mux_ctl;
  wire rst_0_1;
  wire [0:0]xlconstant_0_dout;
  wire [31:0]xlconstant_2_dout;
  wire [0:0]xlconstant_3_dout;

  assign Prog_cnter_0[31:0] = IF_0_Prog_cnter;
  assign WB_Dest[31:0] = mem_wb_out_2;
  assign WB_PC[31:0] = mem_wb1_out;
  assign clk_0_1 = clk_0;
  assign douta_0[31:0] = blk_mem_gen_0_douta;
  assign rst_0_1 = rst_0;
  design_1_xlconstant_0_0 Freez
       (.dout(xlconstant_0_dout));
  design_1_IF_0_0 IF_0
       (.Branch_Address(xlconstant_2_dout),
        .Frz(xlconstant_0_dout),
        .Prog_cnter(IF_0_Prog_cnter),
        .clk(clk_0_1),
        .mux_ctl(mux_ctl),
        .pc_out(IF_0_pc_out),
        .rst(rst_0_1));
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
  design_1_Register_1_0 id_exe
       (.clk(clk_0_1),
        .en(xlconstant_3_dout),
        .in_1(if_id_out_1),
        .in_2(if_id_out_2),
        .out_1(id_exe_out_1),
        .out_2(id_exe_out_2),
        .rst(rst_0_1));
  design_1_Register_0_0 if_id
       (.clk(clk_0_1),
        .en(xlconstant_3_dout),
        .in_1(IF_0_pc_out),
        .in_2(blk_mem_gen_0_douta),
        .out_1(if_id_out_1),
        .out_2(if_id_out_2),
        .rst(rst_0_1));
  design_1_mem_wb_2 mem_wb
       (.clk(clk_0_1),
        .en(xlconstant_3_dout),
        .in_1(ex_mem_out_1),
        .in_2(ex_mem_out_2),
        .out_1(mem_wb1_out),
        .out_2(mem_wb_out_2),
        .rst(rst_0_1));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(mux_ctl));
  design_1_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
endmodule
