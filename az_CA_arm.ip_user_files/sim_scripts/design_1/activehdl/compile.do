vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/xlconstant_v1_1_5
vlib activehdl/xlslice_v1_0_1
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/dist_mem_gen_v8_0_12

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5
vmap xlslice_v1_0_1 activehdl/xlslice_v1_0_1
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap dist_mem_gen_v8_0_12 activehdl/dist_mem_gen_v8_0_12

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" \
"../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" \
"../../../bd/design_1/ip/design_1_xlconstant_3_0/sim/design_1_xlconstant_3_0.v" \
"../../../bd/design_1/ip/design_1_Control_Unit_0_0/sim/design_1_Control_Unit_0_0.v" \

vlog -work xlslice_v1_0_1  -v2k5 "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" \
"../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_0/sim/design_1_xlslice_1_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
"../../../bd/design_1/ip/design_1_status_register_0_0/sim/design_1_status_register_0_0.v" \
"../../../bd/design_1/ip/design_1_Condition_Check_0_0/sim/design_1_Condition_Check_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_2/sim/design_1_xlslice_0_2.v" \
"../../../bd/design_1/ip/design_1_RegisterFile_0_0/sim/design_1_RegisterFile_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_3/sim/design_1_xlslice_0_3.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_4/sim/design_1_xlslice_0_4.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_1/sim/design_1_xlconstant_0_1.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" \
"../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/ip/design_1_not_gate_0_0/sim/design_1_not_gate_0_0.v" \
"../../../bd/design_1/ip/design_1_OR_Gate_0_0/sim/design_1_OR_Gate_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_5/sim/design_1_xlslice_0_5.v" \
"../../../bd/design_1/ip/design_1_Adder_32_0_0/sim/design_1_Adder_32_0_0.v" \
"../../../bd/design_1/ip/design_1_ALU_1_0/sim/design_1_ALU_1_0.v" \
"../../../bd/design_1/ip/design_1_OR_Gate_1_0/sim/design_1_OR_Gate_1_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_6/sim/design_1_xlslice_0_6.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_7/sim/design_1_xlslice_0_7.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_11/sim/design_1_xlslice_0_11.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_12/sim/design_1_xlslice_0_12.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_13/sim/design_1_xlslice_0_13.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_14/sim/design_1_xlslice_0_14.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_8/sim/design_1_xlslice_0_8.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_9/sim/design_1_xlslice_0_9.v" \
"../../../bd/design_1/ip/design_1_Id_Exe_Pipeline_Regi_0_0/sim/design_1_Id_Exe_Pipeline_Regi_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_5/sim/design_1_xlconstant_2_5.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_10/sim/design_1_xlslice_0_10.v" \

vlog -work dist_mem_gen_v8_0_12  -v2k5 "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" \
"../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" \
"../../../bd/design_1/ip/design_1_dist_mem_gen_0_0/sim/design_1_dist_mem_gen_0_0.v" \
"../../../bd/design_1/ip/design_1_dist_mem_gen_1_0/sim/design_1_dist_mem_gen_1_0.v" \
"../../../bd/design_1/ip/design_1_not_gate_0_1/sim/design_1_not_gate_0_1.v" \
"../../../bd/design_1/ip/design_1_OR_Gate_0_1/sim/design_1_OR_Gate_0_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_15/sim/design_1_xlslice_0_15.v" \
"../../../bd/design_1/ip/design_1_Adder_0_0_1/sim/design_1_Adder_0_0.v" \
"../../../bd/design_1/ip/design_1_PC_0_0_1/sim/design_1_PC_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_1/sim/design_1_xlconstant_1_1.v" \
"../../../bd/design_1/ip/design_1_Execute_Memory_Stage_0_0/sim/design_1_Execute_Memory_Stage_0_0.v" \
"../../../bd/design_1/ip/design_1_Memory_WriteBack_Sta_0_0/sim/design_1_Memory_WriteBack_Sta_0_0.v" \
"../../../bd/design_1/ip/design_1_Val2_Generator_1_0/sim/design_1_Val2_Generator_1_0.v" \
"../../../bd/design_1/ip/design_1_My_mux_0_0/sim/design_1_My_mux_0_0.v" \
"../../../bd/design_1/ip/design_1_My_mux_1_0/sim/design_1_My_mux_1_0.v" \
"../../../bd/design_1/ip/design_1_My_mux_2_0/sim/design_1_My_mux_2_0.v" \
"../../../bd/design_1/ip/design_1_If_Id_Register_0_0/sim/design_1_If_Id_Register_0_0.v" \
"../../../bd/design_1/ip/design_1_My_mux_3_0/sim/design_1_My_mux_3_0.v" \
"../../../bd/design_1/ip/design_1_ForwardingUnit_0_0/sim/design_1_ForwardingUnit_0_0.v" \
"../../../bd/design_1/ip/design_1_Mux3To1_0_2/sim/design_1_Mux3To1_0_2.v" \
"../../../bd/design_1/ip/design_1_Mux3To1_1_0/sim/design_1_Mux3To1_1_0.v" \
"../../../bd/design_1/ip/design_1_HazardUnit_0_0/sim/design_1_HazardUnit_0_0.v" \
"../../../bd/design_1/ip/design_1_debouncer_0_0/sim/design_1_debouncer_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_16/sim/design_1_xlslice_0_16.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_1/sim/design_1_xlslice_1_1.v" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
"../../../bd/design_1/ip/design_1_vio_0_0/sim/design_1_vio_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

