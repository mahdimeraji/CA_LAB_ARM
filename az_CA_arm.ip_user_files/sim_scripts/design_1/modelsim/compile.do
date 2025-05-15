vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_5
vlib modelsim_lib/msim/xlslice_v1_0_1
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/dist_mem_gen_v8_0_12

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5
vmap xlslice_v1_0_1 modelsim_lib/msim/xlslice_v1_0_1
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap dist_mem_gen_v8_0_12 modelsim_lib/msim/dist_mem_gen_v8_0_12

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/sim/design_1.v" \
"../../../bd/design_1/ip/design_1_Register_0_0/sim/design_1_Register_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 -incr \
"../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/ip/design_1_xlconstant_3_0/sim/design_1_xlconstant_3_0.v" \
"../../../bd/design_1/ip/design_1_Control_Unit_0_0/sim/design_1_Control_Unit_0_0.v" \

vlog -work xlslice_v1_0_1 -64 -incr \
"../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
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

vlog -work xlconcat_v2_1_1 -64 -incr \
"../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
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
"../../../bd/design_1/ip/design_1_val2_generator_0_0/sim/design_1_val2_generator_0_0.v" \
"../../../bd/design_1/ip/design_1_Exe_Mem_Pipeline_Reg_0_0/sim/design_1_Exe_Mem_Pipeline_Reg_0_0.v" \
"../../../bd/design_1/ip/design_1_Mem_Wb_Pipeline_Regi_0_0/sim/design_1_Mem_Wb_Pipeline_Regi_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_10/sim/design_1_xlslice_0_10.v" \

vlog -work dist_mem_gen_v8_0_12 -64 -incr \
"../../../../az_CA_arm.srcs/sources_1/bd/design_1/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/ip/design_1_dist_mem_gen_0_0/sim/design_1_dist_mem_gen_0_0.v" \
"../../../bd/design_1/ip/design_1_dist_mem_gen_1_0/sim/design_1_dist_mem_gen_1_0.v" \
"../../../bd/design_1/ip/design_1_Mux_2_0/sim/design_1_Mux_2_0.v" \
"../../../bd/design_1/ip/design_1_Hazard_unit_0_4/sim/design_1_Hazard_unit_0_4.v" \
"../../../bd/design_1/ip/design_1_not_gate_0_1/sim/design_1_not_gate_0_1.v" \
"../../../bd/design_1/ip/design_1_OR_Gate_0_1/sim/design_1_OR_Gate_0_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_15/sim/design_1_xlslice_0_15.v" \
"../../../bd/design_1/ip/design_1_Adder_0_0_1/sim/design_1_Adder_0_0.v" \
"../../../bd/design_1/ip/design_1_PC_0_0_1/sim/design_1_PC_0_0.v" \
"../../../bd/design_1/ip/design_1_Mux_3_0_1/sim/design_1_Mux_3_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_1/sim/design_1_xlconstant_1_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

