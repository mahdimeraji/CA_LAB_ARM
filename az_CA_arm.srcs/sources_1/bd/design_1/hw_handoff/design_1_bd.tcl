
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
# ALU, Adder_32, Condition_Check, Control_Unit, Exe_Mem_Pipeline_Register, Hazard_unit, IF, Id_Exe_Pipeline_Register, Mem_Wb_Pipeline_Register, Mux, Mux, Mux, OR_Gate, OR_Gate, OR_Gate, RegisterFile, Register, not_gate, not_gate, status_register, val2_generator

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

  # Create instance: ALU_1, and set properties
  set block_name ALU
  set block_cell_name ALU_1
  if { [catch {set ALU_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ALU_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Adder_32_0, and set properties
  set block_name Adder_32
  set block_cell_name Adder_32_0
  if { [catch {set Adder_32_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Adder_32_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
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
  
  # Create instance: Exe_Mem_Pipeline_Reg_0, and set properties
  set block_name Exe_Mem_Pipeline_Register
  set block_cell_name Exe_Mem_Pipeline_Reg_0
  if { [catch {set Exe_Mem_Pipeline_Reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Exe_Mem_Pipeline_Reg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Hazard_unit_0, and set properties
  set block_name Hazard_unit
  set block_cell_name Hazard_unit_0
  if { [catch {set Hazard_unit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Hazard_unit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
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
  
  # Create instance: Id_Exe_Pipeline_Regi_0, and set properties
  set block_name Id_Exe_Pipeline_Register
  set block_cell_name Id_Exe_Pipeline_Regi_0
  if { [catch {set Id_Exe_Pipeline_Regi_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Id_Exe_Pipeline_Regi_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Mem_Wb_Pipeline_Regi_0, and set properties
  set block_name Mem_Wb_Pipeline_Register
  set block_cell_name Mem_Wb_Pipeline_Regi_0
  if { [catch {set Mem_Wb_Pipeline_Regi_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Mem_Wb_Pipeline_Regi_0 eq "" } {
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
    set_property -dict [ list \
   CONFIG.WIDTH {9} \
 ] $Mux_1

  # Create instance: Mux_2, and set properties
  set block_name Mux
  set block_cell_name Mux_2
  if { [catch {set Mux_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Mux_2 eq "" } {
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
  
  # Create instance: OR_Gate_1, and set properties
  set block_name OR_Gate
  set block_cell_name OR_Gate_1
  if { [catch {set OR_Gate_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $OR_Gate_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: OR_Gate_2, and set properties
  set block_name OR_Gate
  set block_cell_name OR_Gate_2
  if { [catch {set OR_Gate_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $OR_Gate_2 eq "" } {
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
  
  # Create instance: Register_En, and set properties
  set Register_En [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Register_En ]

  # Create instance: Slice_S_exe, and set properties
  set Slice_S_exe [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Slice_S_exe ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $Slice_S_exe

  # Create instance: data_memory, and set properties
  set data_memory [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 data_memory ]
  set_property -dict [ list \
   CONFIG.data_width {32} \
   CONFIG.depth {8192} \
 ] $data_memory

  # Create instance: dist_mem_gen_1, and set properties
  set dist_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 dist_mem_gen_1 ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../OneDrive/Desktop/ultimate.coe} \
   CONFIG.data_width {32} \
   CONFIG.depth {8192} \
   CONFIG.memory_type {rom} \
 ] $dist_mem_gen_1

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
  
  # Create instance: not_gate_1, and set properties
  set block_name not_gate
  set block_cell_name not_gate_1
  if { [catch {set not_gate_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $not_gate_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: slice_B_Exe, and set properties
  set slice_B_Exe [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_B_Exe ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {7} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_B_Exe

  # Create instance: slice_Cin, and set properties
  set slice_Cin [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_Cin ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {4} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_Cin

  # Create instance: slice_Im, and set properties
  set slice_Im [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_Im ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {25} \
   CONFIG.DIN_TO {25} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_Im

  # Create instance: slice_Im_24, and set properties
  set slice_Im_24 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_Im_24 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {23} \
   CONFIG.DOUT_WIDTH {24} \
 ] $slice_Im_24

  # Create instance: slice_Rd, and set properties
  set slice_Rd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_Rd ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {12} \
   CONFIG.DOUT_WIDTH {4} \
 ] $slice_Rd

  # Create instance: slice_Rm, and set properties
  set slice_Rm [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_Rm ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DOUT_WIDTH {4} \
 ] $slice_Rm

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

  # Create instance: slice_ShOp, and set properties
  set slice_ShOp [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_ShOp ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DOUT_WIDTH {12} \
 ] $slice_ShOp

  # Create instance: slice_WB_En_exe, and set properties
  set slice_WB_En_exe [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_WB_En_exe ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {6} \
   CONFIG.DIN_TO {6} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_WB_En_exe

  # Create instance: slice_cond, and set properties
  set slice_cond [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_cond ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {28} \
   CONFIG.DOUT_WIDTH {4} \
 ] $slice_cond

  # Create instance: slice_exe_cmd_exe, and set properties
  set slice_exe_cmd_exe [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_exe_cmd_exe ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {4} \
 ] $slice_exe_cmd_exe

  # Create instance: slice_mem_R_En_exe, and set properties
  set slice_mem_R_En_exe [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_mem_R_En_exe ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_mem_R_En_exe

  # Create instance: slice_mem_W_En_exe, and set properties
  set slice_mem_W_En_exe [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_mem_W_En_exe ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {5} \
   CONFIG.DIN_TO {5} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_mem_W_En_exe

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
  
  # Create instance: val2_generator_0, and set properties
  set block_name val2_generator
  set block_cell_name val2_generator_0
  if { [catch {set val2_generator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $val2_generator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
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
   CONFIG.CONST_WIDTH {9} \
 ] $xlconstant_0

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]

  # Create port connections
  connect_bd_net -net ALU_1_ALUResult1 [get_bd_pins ALU_1/ALUResult1] [get_bd_pins Exe_Mem_Pipeline_Reg_0/Alu_Res_In]
  connect_bd_net -net ALU_1_status_flags [get_bd_pins ALU_1/status_flags] [get_bd_pins status_register_0/status]
  connect_bd_net -net Adder_32_0_w [get_bd_pins Adder_32_0/w] [get_bd_pins IF_0/Branch_Address]
  connect_bd_net -net Condition_Check_0_condition_met [get_bd_pins Condition_Check_0/condition_met] [get_bd_pins not_gate_0/a]
  connect_bd_net -net Control_Unit_0_B [get_bd_pins Control_Unit_0/branch] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net Control_Unit_0_EXE_CMD [get_bd_pins Control_Unit_0/aluCmd] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net Control_Unit_0_MEM_R_EN [get_bd_pins Control_Unit_0/memRead] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net Control_Unit_0_S_Out [get_bd_pins Control_Unit_0/sOut] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net Control_Unit_0_WB_EN [get_bd_pins Control_Unit_0/wbEn] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net Control_Unit_0_memWrite [get_bd_pins Control_Unit_0/memWrite] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net Exe_Mem_Pipeline_Reg_0_Alu_Res_Out [get_bd_pins Exe_Mem_Pipeline_Reg_0/Alu_Res_Out] [get_bd_pins Mem_Wb_Pipeline_Regi_0/Alu_Res_In] [get_bd_pins data_memory/a]
  connect_bd_net -net Exe_Mem_Pipeline_Reg_0_Dest_out [get_bd_pins Exe_Mem_Pipeline_Reg_0/Dest_out] [get_bd_pins Hazard_unit_0/Mem_Dest] [get_bd_pins Mem_Wb_Pipeline_Regi_0/Dest]
  connect_bd_net -net Exe_Mem_Pipeline_Reg_0_MEM_R_EN_out [get_bd_pins Exe_Mem_Pipeline_Reg_0/MEM_R_EN_out] [get_bd_pins Mem_Wb_Pipeline_Regi_0/MEM_R_EN]
  connect_bd_net -net Exe_Mem_Pipeline_Reg_0_MEM_W_EN_out [get_bd_pins Exe_Mem_Pipeline_Reg_0/MEM_W_EN_out] [get_bd_pins OR_Gate_2/b] [get_bd_pins data_memory/we]
  connect_bd_net -net Exe_Mem_Pipeline_Reg_0_Val_Rm_out [get_bd_pins Exe_Mem_Pipeline_Reg_0/Val_Rm_out] [get_bd_pins data_memory/d]
  connect_bd_net -net Exe_Mem_Pipeline_Reg_0_WB_EN_Out [get_bd_pins Exe_Mem_Pipeline_Reg_0/WB_EN_out] [get_bd_pins Hazard_unit_0/Mem_WB_EN] [get_bd_pins Mem_Wb_Pipeline_Regi_0/WB_EN]
  connect_bd_net -net Hazard_unit_0_hazard_Detected [get_bd_pins Hazard_unit_0/hazard_Detected] [get_bd_pins IF_0/Frz] [get_bd_pins OR_Gate_0/b] [get_bd_pins if_id/freeze]
  connect_bd_net -net IF_0_pc_out [get_bd_pins IF_0/pc_out] [get_bd_pins dist_mem_gen_1/a] [get_bd_pins if_id/in_1]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Alu_Carry_In_Exe [get_bd_pins ALU_1/CarryIn] [get_bd_pins Id_Exe_Pipeline_Regi_0/Alu_Carry_In_Exe]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_B_Out [get_bd_pins IF_0/mux_ctl] [get_bd_pins Id_Exe_Pipeline_Regi_0/B_Out] [get_bd_pins Id_Exe_Pipeline_Regi_0/flush] [get_bd_pins if_id/flush]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_EXE_CMD_out [get_bd_pins ALU_1/ALUcnt] [get_bd_pins Id_Exe_Pipeline_Regi_0/EXE_CMD_out]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Im_Out [get_bd_pins Id_Exe_Pipeline_Regi_0/Im_Out] [get_bd_pins val2_generator_0/is_immediate]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_MEM_R_EN_out [get_bd_pins Exe_Mem_Pipeline_Reg_0/MEM_R_EN] [get_bd_pins Id_Exe_Pipeline_Regi_0/MEM_R_EN_out] [get_bd_pins OR_Gate_1/a]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_MEM_W_EN_out [get_bd_pins Exe_Mem_Pipeline_Reg_0/MEM_W_EN] [get_bd_pins Id_Exe_Pipeline_Regi_0/MEM_W_EN_out] [get_bd_pins OR_Gate_1/b]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_PC_out [get_bd_pins Adder_32_0/a] [get_bd_pins Id_Exe_Pipeline_Regi_0/PC_out]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_S_Out [get_bd_pins Id_Exe_Pipeline_Regi_0/S_Out] [get_bd_pins status_register_0/SE]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Shifter_Operand_Out [get_bd_pins Id_Exe_Pipeline_Regi_0/Shifter_Operand_Out] [get_bd_pins val2_generator_0/shift_operand]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Signed_Imm_24_Out [get_bd_pins Adder_32_0/b] [get_bd_pins Id_Exe_Pipeline_Regi_0/Signed_Imm_24_Out]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Val_Rm_out [get_bd_pins Exe_Mem_Pipeline_Reg_0/Val_Rm_In] [get_bd_pins Id_Exe_Pipeline_Regi_0/Val_Rm_out] [get_bd_pins val2_generator_0/operand_in]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Val_Rn_out [get_bd_pins ALU_1/SrcA1] [get_bd_pins Id_Exe_Pipeline_Regi_0/Val_Rn_out]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_WB_EN_out [get_bd_pins Exe_Mem_Pipeline_Reg_0/WB_EN] [get_bd_pins Hazard_unit_0/Exe_WB_EN] [get_bd_pins Id_Exe_Pipeline_Regi_0/WB_EN_out]
  connect_bd_net -net Mem_Wb_Pipeline_Regi_0_Alu_Res_Out [get_bd_pins Mem_Wb_Pipeline_Regi_0/Alu_Res_Out] [get_bd_pins Mux_2/input1]
  connect_bd_net -net Mem_Wb_Pipeline_Regi_0_Data_to_WB_Out [get_bd_pins Mem_Wb_Pipeline_Regi_0/Data_to_WB_Out] [get_bd_pins Mux_2/input2]
  connect_bd_net -net Mem_Wb_Pipeline_Regi_0_Dest_out [get_bd_pins Mem_Wb_Pipeline_Regi_0/Dest_out] [get_bd_pins RegisterFile_0/writeRegister]
  connect_bd_net -net Mem_Wb_Pipeline_Regi_0_MEM_R_EN_out [get_bd_pins Mem_Wb_Pipeline_Regi_0/MEM_R_EN_out] [get_bd_pins Mux_2/input3]
  connect_bd_net -net Mem_Wb_Pipeline_Regi_0_WB_EN_out [get_bd_pins Mem_Wb_Pipeline_Regi_0/WB_EN_out] [get_bd_pins RegisterFile_0/regWrite]
  connect_bd_net -net Mux_0_out [get_bd_pins Hazard_unit_0/src2] [get_bd_pins Mux_0/out] [get_bd_pins RegisterFile_0/readRegister2]
  connect_bd_net -net Mux_1_out [get_bd_pins Mux_1/out] [get_bd_pins Slice_S_exe/Din] [get_bd_pins slice_B_Exe/Din] [get_bd_pins slice_WB_En_exe/Din] [get_bd_pins slice_exe_cmd_exe/Din] [get_bd_pins slice_mem_R_En_exe/Din] [get_bd_pins slice_mem_W_En_exe/Din]
  connect_bd_net -net Mux_2_out [get_bd_pins Mux_2/out] [get_bd_pins RegisterFile_0/writeData]
  connect_bd_net -net Net [get_bd_pins Exe_Mem_Pipeline_Reg_0/Dest] [get_bd_pins Hazard_unit_0/Exe_Dest] [get_bd_pins Id_Exe_Pipeline_Regi_0/Dest_out]
  connect_bd_net -net OR_Gate_0_y [get_bd_pins Mux_1/input3] [get_bd_pins OR_Gate_0/y]
  connect_bd_net -net OR_Gate_1_y [get_bd_pins OR_Gate_1/y] [get_bd_pins val2_generator_0/sign_extend]
  connect_bd_net -net OR_Gate_2_y [get_bd_pins Hazard_unit_0/Two_Src] [get_bd_pins OR_Gate_2/y]
  connect_bd_net -net RegisterFile_0_readData1 [get_bd_pins Id_Exe_Pipeline_Regi_0/Val_Rn_In] [get_bd_pins RegisterFile_0/readData1]
  connect_bd_net -net RegisterFile_0_readData2 [get_bd_pins Id_Exe_Pipeline_Regi_0/Val_Rm_In] [get_bd_pins RegisterFile_0/readData2]
  connect_bd_net -net Register_En_dout [get_bd_pins Exe_Mem_Pipeline_Reg_0/enable] [get_bd_pins Id_Exe_Pipeline_Regi_0/enable] [get_bd_pins Mem_Wb_Pipeline_Regi_0/enable] [get_bd_pins Register_En/dout]
  connect_bd_net -net Slice_S_exe_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/S_In] [get_bd_pins Slice_S_exe/Dout]
  connect_bd_net -net clk_0_1 [get_bd_ports clk_0] [get_bd_pins Condition_Check_0/clk] [get_bd_pins Exe_Mem_Pipeline_Reg_0/clk] [get_bd_pins IF_0/clk] [get_bd_pins Id_Exe_Pipeline_Regi_0/clk] [get_bd_pins Mem_Wb_Pipeline_Regi_0/clk] [get_bd_pins RegisterFile_0/clk] [get_bd_pins data_memory/clk] [get_bd_pins if_id/clk] [get_bd_pins status_register_0/clk]
  connect_bd_net -net data_memory_spo [get_bd_pins Mem_Wb_Pipeline_Regi_0/Data_to_WB_In] [get_bd_pins data_memory/spo]
  connect_bd_net -net dist_mem_gen_1_spo [get_bd_pins dist_mem_gen_1/spo] [get_bd_pins if_id/in_2]
  connect_bd_net -net if_id_out_1 [get_bd_pins if_id/out_2] [get_bd_pins slice_Im/Din] [get_bd_pins slice_Im_24/Din] [get_bd_pins slice_Rd/Din] [get_bd_pins slice_Rm/Din] [get_bd_pins slice_Rn/Din] [get_bd_pins slice_S/Din] [get_bd_pins slice_ShOp/Din] [get_bd_pins slice_cond/Din] [get_bd_pins slice_mode/Din] [get_bd_pins slice_opc/Din]
  connect_bd_net -net if_id_out_2 [get_bd_pins Id_Exe_Pipeline_Regi_0/PC] [get_bd_pins if_id/out_1]
  connect_bd_net -net not_gate_0_y [get_bd_pins OR_Gate_0/a] [get_bd_pins not_gate_0/y]
  connect_bd_net -net not_gate_1_y [get_bd_pins OR_Gate_2/a] [get_bd_pins not_gate_1/y]
  connect_bd_net -net rst_0_1 [get_bd_ports rst_0] [get_bd_pins Condition_Check_0/rst] [get_bd_pins Exe_Mem_Pipeline_Reg_0/reset] [get_bd_pins IF_0/rst] [get_bd_pins Id_Exe_Pipeline_Regi_0/reset] [get_bd_pins Mem_Wb_Pipeline_Regi_0/reset] [get_bd_pins RegisterFile_0/reset] [get_bd_pins if_id/rst] [get_bd_pins status_register_0/rst]
  connect_bd_net -net slice_B_Exe_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/B_In] [get_bd_pins slice_B_Exe/Dout]
  connect_bd_net -net slice_Cin_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/Alu_Carry_In_Id] [get_bd_pins slice_Cin/Dout]
  connect_bd_net -net slice_Im_24_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/Signed_Imm_24_In] [get_bd_pins slice_Im_24/Dout]
  connect_bd_net -net slice_Im_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/Im_In] [get_bd_pins not_gate_1/a] [get_bd_pins slice_Im/Dout]
  connect_bd_net -net slice_Rm_Dout [get_bd_pins Mux_0/input1] [get_bd_pins slice_Rm/Dout]
  connect_bd_net -net slice_Rn_Dout [get_bd_pins Hazard_unit_0/src1] [get_bd_pins RegisterFile_0/readRegister1] [get_bd_pins slice_Rn/Dout]
  connect_bd_net -net slice_ShOp_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/Shifter_Operand_In] [get_bd_pins slice_ShOp/Dout]
  connect_bd_net -net slice_WB_En_exe_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/WB_EN] [get_bd_pins slice_WB_En_exe/Dout]
  connect_bd_net -net slice_cond_Dout [get_bd_pins Condition_Check_0/Cond] [get_bd_pins slice_cond/Dout]
  connect_bd_net -net slice_exe_cmd_exe_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/EXE_CMD] [get_bd_pins slice_exe_cmd_exe/Dout]
  connect_bd_net -net slice_mem_R_En_exe_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/MEM_R_EN] [get_bd_pins slice_mem_R_En_exe/Dout]
  connect_bd_net -net slice_mem_W_En_exe_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/MEM_W_EN] [get_bd_pins Mux_0/input3] [get_bd_pins slice_mem_W_En_exe/Dout]
  connect_bd_net -net status_register_0_statusout [get_bd_pins Condition_Check_0/SR] [get_bd_pins slice_Cin/Din] [get_bd_pins status_register_0/statusout]
  connect_bd_net -net val2_generator_0_operand_out [get_bd_pins ALU_1/SrcB1] [get_bd_pins val2_generator_0/operand_out]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins Mux_1/input1] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout1 [get_bd_pins Mux_1/input2] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins if_id/en] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins Control_Unit_0/mode] [get_bd_pins slice_mode/Dout]
  connect_bd_net -net xlslice_0_Dout1 [get_bd_pins Control_Unit_0/sIn] [get_bd_pins slice_S/Dout]
  connect_bd_net -net xlslice_0_Dout2 [get_bd_pins Id_Exe_Pipeline_Regi_0/Dest] [get_bd_pins Mux_0/input2] [get_bd_pins slice_Rd/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins Control_Unit_0/opcode] [get_bd_pins slice_opc/Dout]

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


