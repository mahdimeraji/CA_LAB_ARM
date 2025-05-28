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


// IP VLNV: xilinx.com:module_ref:Memory_WriteBack_Stage_Register:1.0
// IP Revision: 1

(* X_CORE_INFO = "Memory_WriteBack_Stage_Register,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "design_1_Memory_WriteBack_Sta_0_0,Memory_WriteBack_Stage_Register,{}" *)
(* CORE_GENERATION_INFO = "design_1_Memory_WriteBack_Sta_0_0,Memory_WriteBack_Stage_Register,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Memory_WriteBack_Stage_Register,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_Memory_WriteBack_Sta_0_0 (
  clock,
  reset_signal,
  en,
  writeback_enable,
  memory_read_enable,
  destination_reg,
  alu_result_input,
  memory_data_input,
  writeback_enable_out,
  memory_read_enable_out,
  destination_reg_out,
  alu_result_output,
  memory_data_output
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *)
input wire clock;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_signal, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_signal RST" *)
input wire reset_signal;
input wire en;
input wire writeback_enable;
input wire memory_read_enable;
input wire [3 : 0] destination_reg;
input wire [31 : 0] alu_result_input;
input wire [31 : 0] memory_data_input;
output wire writeback_enable_out;
output wire memory_read_enable_out;
output wire [3 : 0] destination_reg_out;
output wire [31 : 0] alu_result_output;
output wire [31 : 0] memory_data_output;

  Memory_WriteBack_Stage_Register inst (
    .clock(clock),
    .reset_signal(reset_signal),
    .en(en),
    .writeback_enable(writeback_enable),
    .memory_read_enable(memory_read_enable),
    .destination_reg(destination_reg),
    .alu_result_input(alu_result_input),
    .memory_data_input(memory_data_input),
    .writeback_enable_out(writeback_enable_out),
    .memory_read_enable_out(memory_read_enable_out),
    .destination_reg_out(destination_reg_out),
    .alu_result_output(alu_result_output),
    .memory_data_output(memory_data_output)
  );
endmodule
