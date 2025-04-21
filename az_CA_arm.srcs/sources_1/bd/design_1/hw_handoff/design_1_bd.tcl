
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Condition_Check, Control_Unit, IF, Mux, Mux, OR_Gate, RegisterFile, Register, Register, Register, Register, not_gate, status_register

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set clk_0 [ create_bd_port -dir I -type clk clk_0 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {rst_0} \
 ] $clk_0
  set rst_0 [ create_bd_port -dir I -type rst rst_0 ]

  # Create instance: Condition_Check_0, and set properties
  set block_name Condition_Check
  set block_cell_name Condition_Check_0
  if { [catch {set Condition_Check_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Condition_Check_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Control_Unit_0, and set properties
  set block_name Control_Unit
  set block_cell_name Control_Unit_0
  if { [catch {set Control_Unit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Control_Unit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Freez, and set properties
  set Freez [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Freez ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $Freez

  # Create instance: IF_0, and set properties
  set block_name IF
  set block_cell_name IF_0
  if { [catch {set IF_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $IF_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Mux_0, and set properties
  set block_name Mux
  set block_cell_name Mux_0
  if { [catch {set Mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Mux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.WIDTH {4} \
 ] $Mux_0

  # Create instance: Mux_1, and set properties
  set block_name Mux
  set block_cell_name Mux_1
  if { [catch {set Mux_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Mux_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: OR_Gate_0, and set properties
  set block_name OR_Gate
  set block_cell_name OR_Gate_0
  if { [catch {set OR_Gate_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $OR_Gate_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RegisterFile_0, and set properties
  set block_name RegisterFile
  set block_cell_name RegisterFile_0
  if { [catch {set RegisterFile_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RegisterFile_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../OneDrive/Desktop/output.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: branch_addr, and set properties
  set branch_addr [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 branch_addr ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $branch_addr

  # Create instance: ex_mem, and set properties
  set block_name Register
  set block_cell_name ex_mem
  if { [catch {set ex_mem [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ex_mem eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: hazard, and set properties
  set hazard [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 hazard ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $hazard

  # Create instance: id_exe, and set properties
  set block_name Register
  set block_cell_name id_exe
  if { [catch {set id_exe [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $id_exe eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: if_id, and set properties
  set block_name Register
  set block_cell_name if_id
  if { [catch {set if_id [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $if_id eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mem_wb, and set properties
  set block_name Register
  set block_cell_name mem_wb
  if { [catch {set mem_wb [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mem_wb eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: not_gate_0, and set properties
  set block_name not_gate
  set block_cell_name not_gate_0
  if { [catch {set not_gate_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $not_gate_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: reg_write, and set properties
  set reg_write [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 reg_write ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $reg_write

  # Create instance: slice_Im, and set properties
  set slice_Im [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_Im ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {23} \
   CONFIG.DOUT_WIDTH {24} \
 ] $slice_Im

  # Create instance: slice_Rd, and set properties
  set slice_Rd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_Rd ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {12} \
   CONFIG.DOUT_WIDTH {4} \
 ] $slice_Rd

  # Create instance: slice_Rn, and set properties
  set slice_Rn [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_Rn ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {19} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {4} \
 ] $slice_Rn

  # Create instance: slice_S, and set properties
  set slice_S [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_S ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {20} \
   CONFIG.DIN_TO {20} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_S

  # Create instance: slice_cond, and set properties
  set slice_cond [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_cond ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {28} \
   CONFIG.DOUT_WIDTH {4} \
 ] $slice_cond

  # Create instance: slice_mode, and set properties
  set slice_mode [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_mode ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {27} \
   CONFIG.DIN_TO {26} \
   CONFIG.DOUT_WIDTH {2} \
 ] $slice_mode

  # Create instance: slice_opc, and set properties
  set slice_opc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_opc ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {24} \
   CONFIG.DIN_TO {21} \
   CONFIG.DOUT_WIDTH {4} \
 ] $slice_opc

  # Create instance: status_register_0, and set properties
  set block_name status_register
  set block_cell_name status_register_0
  if { [catch {set status_register_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $status_register_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: write_data, and set properties
  set write_data [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 write_data ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $write_data

  # Create instance: write_register, and set properties
  set write_register [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 write_register ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {4} \
 ] $write_register

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.NUM_PORTS {6} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $xlconstant_1

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]

  # Create port connections
  connect_bd_net -net Condition_Check_0_condition_met [get_bd_pins Condition_Check_0/condition_met] [get_bd_pins not_gate_0/a]
  connect_bd_net -net Control_Unit_0_B [get_bd_pins Control_Unit_0/B] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net Control_Unit_0_EXE_CMD [get_bd_pins Control_Unit_0/EXE_CMD] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net Control_Unit_0_MEM_R_EN [get_bd_pins Control_Unit_0/MEM_R_EN] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net Control_Unit_0_MEM_W_EN [get_bd_pins Control_Unit_0/MEM_W_EN] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net Control_Unit_0_S_Out [get_bd_pins Control_Unit_0/S_Out] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net Control_Unit_0_WB_EN [get_bd_pins Control_Unit_0/WB_EN] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net IF_0_pc_out [get_bd_pins IF_0/pc_out] [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins if_id/in_1]
  connect_bd_net -net Mux_0_out [get_bd_pins Mux_0/out] [get_bd_pins RegisterFile_0/readRegister2]
  connect_bd_net -net OR_Gate_0_y [get_bd_pins Mux_1/input3] [get_bd_pins OR_Gate_0/y]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins if_id/in_2]
  connect_bd_net -net clk_0_1 [get_bd_ports clk_0] [get_bd_pins Condition_Check_0/clk] [get_bd_pins Control_Unit_0/clk] [get_bd_pins IF_0/clk] [get_bd_pins RegisterFile_0/clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins ex_mem/clk] [get_bd_pins id_exe/clk] [get_bd_pins if_id/clk] [get_bd_pins mem_wb/clk] [get_bd_pins status_register_0/clk]
  connect_bd_net -net ex_mem_out_1 [get_bd_pins ex_mem/out_1] [get_bd_pins mem_wb/in_1]
  connect_bd_net -net ex_mem_out_2 [get_bd_pins ex_mem/out_2] [get_bd_pins mem_wb/in_2]
  connect_bd_net -net hazard_dout [get_bd_pins OR_Gate_0/b] [get_bd_pins hazard/dout]
  connect_bd_net -net id_exe_out_1 [get_bd_pins ex_mem/in_1] [get_bd_pins id_exe/out_1]
  connect_bd_net -net id_exe_out_2 [get_bd_pins ex_mem/in_2] [get_bd_pins id_exe/out_2]
  connect_bd_net -net if_id_out_1 [get_bd_pins id_exe/in_2] [get_bd_pins if_id/out_2] [get_bd_pins slice_Im/Din] [get_bd_pins slice_Rd/Din] [get_bd_pins slice_Rn/Din] [get_bd_pins slice_S/Din] [get_bd_pins slice_cond/Din] [get_bd_pins slice_mode/Din] [get_bd_pins slice_opc/Din]
  connect_bd_net -net if_id_out_2 [get_bd_pins id_exe/in_1] [get_bd_pins if_id/out_1]
  connect_bd_net -net mux_ctl [get_bd_pins IF_0/mux_ctl] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net not_gate_0_y [get_bd_pins OR_Gate_0/a] [get_bd_pins not_gate_0/y]
  connect_bd_net -net reg_write_dout [get_bd_pins RegisterFile_0/regWrite] [get_bd_pins reg_write/dout]
  connect_bd_net -net rst_0_1 [get_bd_ports rst_0] [get_bd_pins Condition_Check_0/rst] [get_bd_pins Control_Unit_0/rst] [get_bd_pins IF_0/rst] [get_bd_pins RegisterFile_0/reset] [get_bd_pins ex_mem/rst] [get_bd_pins id_exe/rst] [get_bd_pins if_id/rst] [get_bd_pins mem_wb/rst] [get_bd_pins status_register_0/rst]
  connect_bd_net -net slice_Rn_Dout [get_bd_pins Mux_0/input1] [get_bd_pins RegisterFile_0/readRegister1] [get_bd_pins slice_Rn/Dout]
  connect_bd_net -net slice_cond_Dout [get_bd_pins Condition_Check_0/Cond] [get_bd_pins slice_cond/Dout]
  connect_bd_net -net status_register_0_statusout [get_bd_pins Condition_Check_0/SR] [get_bd_pins status_register_0/statusout]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins Mux_1/input1] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins Freez/dout] [get_bd_pins IF_0/Frz]
  connect_bd_net -net xlconstant_0_dout1 [get_bd_pins Mux_1/input2] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins IF_0/Branch_Address] [get_bd_pins branch_addr/dout]
  connect_bd_net -net xlconstant_2_dout1 [get_bd_pins RegisterFile_0/writeRegister] [get_bd_pins write_register/dout]
  connect_bd_net -net xlconstant_2_dout2 [get_bd_pins RegisterFile_0/writeData] [get_bd_pins write_data/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins ex_mem/en] [get_bd_pins id_exe/en] [get_bd_pins if_id/en] [get_bd_pins mem_wb/en] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins Control_Unit_0/Mode] [get_bd_pins slice_mode/Dout]
  connect_bd_net -net xlslice_0_Dout1 [get_bd_pins Control_Unit_0/S_In] [get_bd_pins slice_S/Dout]
  connect_bd_net -net xlslice_0_Dout2 [get_bd_pins Mux_0/input2] [get_bd_pins slice_Rd/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins Control_Unit_0/Op_Code] [get_bd_pins slice_opc/Dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


