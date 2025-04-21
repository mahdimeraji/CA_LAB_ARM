vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_2
vlib riviera/xlconstant_v1_1_5
vlib riviera/xlslice_v1_0_1
vlib riviera/xlconcat_v2_1_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_2 riviera/blk_mem_gen_v8_4_2
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5
vmap xlslice_v1_0_1 riviera/xlslice_v1_0_1
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1

vlog -work xil_defaultlib  -sv2k12 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_IF_0_0/sim/design_1_IF_0_0.v" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 \
"../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vlog -work xlconstant_v1_1_5  -v2k5 \
"../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_0/sim/design_1_xlconstant_2_0.v" \
"../../../bd/design_1/sim/design_1.v" \
"../../../bd/design_1/ip/design_1_Register_0_0/sim/design_1_Register_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_3_0/sim/design_1_xlconstant_3_0.v" \
"../../../bd/design_1/ip/design_1_Register_1_0/sim/design_1_Register_1_0.v" \
"../../../bd/design_1/ip/design_1_Register_2_0/sim/design_1_Register_2_0.v" \
"../../../bd/design_1/ip/design_1_mem_wb_2/sim/design_1_mem_wb_2.v" \
"../../../bd/design_1/ip/design_1_Control_Unit_0_0/sim/design_1_Control_Unit_0_0.v" \

vlog -work xlslice_v1_0_1  -v2k5 \
"../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_0/sim/design_1_xlslice_1_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
"../../../bd/design_1/ip/design_1_status_register_0_0/sim/design_1_status_register_0_0.v" \
"../../../bd/design_1/ip/design_1_Condition_Check_0_0/sim/design_1_Condition_Check_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_2/sim/design_1_xlslice_0_2.v" \
"../../../bd/design_1/ip/design_1_Mux_0_0/sim/design_1_Mux_0_0.v" \
"../../../bd/design_1/ip/design_1_RegisterFile_0_0/sim/design_1_RegisterFile_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_3/sim/design_1_xlslice_0_3.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_4/sim/design_1_xlslice_0_4.v" \
"../../../bd/design_1/ip/design_1_Mux_1_0/sim/design_1_Mux_1_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_1/sim/design_1_xlconstant_0_1.v" \

vlog -work xlconcat_v2_1_1  -v2k5 \
"../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/ip/design_1_not_gate_0_0/sim/design_1_not_gate_0_0.v" \
"../../../bd/design_1/ip/design_1_OR_Gate_0_0/sim/design_1_OR_Gate_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_1/sim/design_1_xlconstant_2_1.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_2/sim/design_1_xlconstant_2_2.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_3/sim/design_1_xlconstant_2_3.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_4/sim/design_1_xlconstant_2_4.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_5/sim/design_1_xlslice_0_5.v" \
"../../../bd/design_1/ip/design_1_Adder_32_0_0/sim/design_1_Adder_32_0_0.v" \
"../../../bd/design_1/ip/design_1_ALU_1_0/sim/design_1_ALU_1_0.v" \
"../../../bd/design_1/ip/design_1_Val2generate_1_0/sim/design_1_Val2generate_1_0.v" \
"../../../bd/design_1/ip/design_1_OR_Gate_1_0/sim/design_1_OR_Gate_1_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_6/sim/design_1_xlslice_0_6.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_7/sim/design_1_xlslice_0_7.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_11/sim/design_1_xlslice_0_11.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_12/sim/design_1_xlslice_0_12.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_13/sim/design_1_xlslice_0_13.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_14/sim/design_1_xlslice_0_14.v" \

vlog -work xil_defaultlib \
"glbl.v"

