//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Apr  7 13:17:43 2025
//Host        : DESKTOP-GMJTJOR running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (Prog_cnter_0,
    WB_Dest,
    WB_PC,
    clk_0,
    douta_0,
    rst_0);
  output [31:0]Prog_cnter_0;
  output [31:0]WB_Dest;
  output [31:0]WB_PC;
  input clk_0;
  output [31:0]douta_0;
  input rst_0;

  wire [31:0]Prog_cnter_0;
  wire [31:0]WB_Dest;
  wire [31:0]WB_PC;
  wire clk_0;
  wire [31:0]douta_0;
  wire rst_0;

  design_1 design_1_i
       (.Prog_cnter_0(Prog_cnter_0),
        .WB_Dest(WB_Dest),
        .WB_PC(WB_PC),
        .clk_0(clk_0),
        .douta_0(douta_0),
        .rst_0(rst_0));
endmodule
