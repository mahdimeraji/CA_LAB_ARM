// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:Id_Exe_Pipeline_Register:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_Id_Exe_Pipeline_Regi_0_0 (
  clk,
  reset,
  enable,
  flush,
  Alu_Carry_In_Id,
  B_In,
  S_In,
  WB_EN,
  MEM_R_EN,
  MEM_W_EN,
  Im_In,
  EXE_CMD,
  Val_Rn_In,
  Val_Rm_In,
  PC,
  Dest,
  Signed_Imm_24_In,
  Shifter_Operand_In,
  Src1_In,
  Src2_In,
  B_Out,
  S_Out,
  WB_EN_out,
  MEM_R_EN_out,
  MEM_W_EN_out,
  Im_Out,
  Alu_Carry_In_Exe,
  EXE_CMD_out,
  Val_Rn_out,
  Val_Rm_out,
  PC_out,
  Dest_out,
  Signed_Imm_24_Out,
  Shifter_Operand_Out,
  Src1_Out,
  Src2_Out
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
input wire enable;
input wire flush;
input wire Alu_Carry_In_Id;
input wire B_In;
input wire S_In;
input wire WB_EN;
input wire MEM_R_EN;
input wire MEM_W_EN;
input wire Im_In;
input wire [3 : 0] EXE_CMD;
input wire [31 : 0] Val_Rn_In;
input wire [31 : 0] Val_Rm_In;
input wire [31 : 0] PC;
input wire [3 : 0] Dest;
input wire [23 : 0] Signed_Imm_24_In;
input wire [11 : 0] Shifter_Operand_In;
input wire [3 : 0] Src1_In;
input wire [3 : 0] Src2_In;
output wire B_Out;
output wire S_Out;
output wire WB_EN_out;
output wire MEM_R_EN_out;
output wire MEM_W_EN_out;
output wire Im_Out;
output wire Alu_Carry_In_Exe;
output wire [3 : 0] EXE_CMD_out;
output wire [31 : 0] Val_Rn_out;
output wire [31 : 0] Val_Rm_out;
output wire [31 : 0] PC_out;
output wire [3 : 0] Dest_out;
output wire [23 : 0] Signed_Imm_24_Out;
output wire [11 : 0] Shifter_Operand_Out;
output wire [3 : 0] Src1_Out;
output wire [3 : 0] Src2_Out;

  Id_Exe_Pipeline_Register inst (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .flush(flush),
    .Alu_Carry_In_Id(Alu_Carry_In_Id),
    .B_In(B_In),
    .S_In(S_In),
    .WB_EN(WB_EN),
    .MEM_R_EN(MEM_R_EN),
    .MEM_W_EN(MEM_W_EN),
    .Im_In(Im_In),
    .EXE_CMD(EXE_CMD),
    .Val_Rn_In(Val_Rn_In),
    .Val_Rm_In(Val_Rm_In),
    .PC(PC),
    .Dest(Dest),
    .Signed_Imm_24_In(Signed_Imm_24_In),
    .Shifter_Operand_In(Shifter_Operand_In),
    .Src1_In(Src1_In),
    .Src2_In(Src2_In),
    .B_Out(B_Out),
    .S_Out(S_Out),
    .WB_EN_out(WB_EN_out),
    .MEM_R_EN_out(MEM_R_EN_out),
    .MEM_W_EN_out(MEM_W_EN_out),
    .Im_Out(Im_Out),
    .Alu_Carry_In_Exe(Alu_Carry_In_Exe),
    .EXE_CMD_out(EXE_CMD_out),
    .Val_Rn_out(Val_Rn_out),
    .Val_Rm_out(Val_Rm_out),
    .PC_out(PC_out),
    .Dest_out(Dest_out),
    .Signed_Imm_24_Out(Signed_Imm_24_Out),
    .Shifter_Operand_Out(Shifter_Operand_Out),
    .Src1_Out(Src1_Out),
    .Src2_Out(Src2_Out)
  );
endmodule
