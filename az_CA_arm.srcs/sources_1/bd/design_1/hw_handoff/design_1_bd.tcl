
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
# ALU, Adder, Adder_32, Condition_Check, Control_Unit, Execute_Memory_Stage_Register, ForwardingUnit, HazardUnit, Id_Exe_Pipeline_Register, If_Id_Register, Memory_WriteBack_Stage_Register, Mux3To1, Mux3To1, My_mux, My_mux, My_mux, My_mux, OR_Gate, OR_Gate, OR_Gate, PC, RegisterFile, Val2_Generator, debouncer, not_gate, not_gate, status_register

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
  
  # Create instance: Adder_0, and set properties
  set block_name Adder
  set block_cell_name Adder_0
  if { [catch {set Adder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Adder_0 eq "" } {
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
  
  # Create instance: Cin_0, and set properties
  set Cin_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Cin_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $Cin_0

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
  
  # Create instance: Execute_Memory_Stage_0, and set properties
  set block_name Execute_Memory_Stage_Register
  set block_cell_name Execute_Memory_Stage_0
  if { [catch {set Execute_Memory_Stage_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Execute_Memory_Stage_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ForwardingUnit_0, and set properties
  set block_name ForwardingUnit
  set block_cell_name ForwardingUnit_0
  if { [catch {set ForwardingUnit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ForwardingUnit_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: HazardUnit_0, and set properties
  set block_name HazardUnit
  set block_cell_name HazardUnit_0
  if { [catch {set HazardUnit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $HazardUnit_0 eq "" } {
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
  
  # Create instance: If_Id_Register_0, and set properties
  set block_name If_Id_Register
  set block_cell_name If_Id_Register_0
  if { [catch {set If_Id_Register_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $If_Id_Register_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Memory_WriteBack_Sta_0, and set properties
  set block_name Memory_WriteBack_Stage_Register
  set block_cell_name Memory_WriteBack_Sta_0
  if { [catch {set Memory_WriteBack_Sta_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Memory_WriteBack_Sta_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Mux3To1_0, and set properties
  set block_name Mux3To1
  set block_cell_name Mux3To1_0
  if { [catch {set Mux3To1_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Mux3To1_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Mux3To1_1, and set properties
  set block_name Mux3To1
  set block_cell_name Mux3To1_1
  if { [catch {set Mux3To1_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Mux3To1_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: My_mux_0, and set properties
  set block_name My_mux
  set block_cell_name My_mux_0
  if { [catch {set My_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $My_mux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: My_mux_1, and set properties
  set block_name My_mux
  set block_cell_name My_mux_1
  if { [catch {set My_mux_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $My_mux_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: My_mux_2, and set properties
  set block_name My_mux
  set block_cell_name My_mux_2
  if { [catch {set My_mux_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $My_mux_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.WIDTH {4} \
 ] $My_mux_2

  # Create instance: My_mux_3, and set properties
  set block_name My_mux
  set block_cell_name My_mux_3
  if { [catch {set My_mux_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $My_mux_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.WIDTH {9} \
 ] $My_mux_3

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
  
  # Create instance: PC_0, and set properties
  set block_name PC
  set block_cell_name PC_0
  if { [catch {set PC_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PC_0 eq "" } {
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

  # Create instance: Val2_Generator_1, and set properties
  set block_name Val2_Generator
  set block_cell_name Val2_Generator_1
  if { [catch {set Val2_Generator_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Val2_Generator_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: adder_in_B, and set properties
  set adder_in_B [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 adder_in_B ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {32} \
 ] $adder_in_B

  # Create instance: data_memory, and set properties
  set data_memory [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 data_memory ]
  set_property -dict [ list \
   CONFIG.data_width {32} \
   CONFIG.depth {8192} \
 ] $data_memory

  # Create instance: debouncer_0, and set properties
  set block_name debouncer
  set block_cell_name debouncer_0
  if { [catch {set debouncer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $debouncer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: dist_mem_gen_1, and set properties
  set dist_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 dist_mem_gen_1 ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../OneDrive/Desktop/ultimate.coe} \
   CONFIG.data_width {32} \
   CONFIG.depth {8192} \
   CONFIG.memory_type {rom} \
 ] $dist_mem_gen_1

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {8} \
   CONFIG.C_PROBE0_TYPE {1} \
   CONFIG.C_PROBE0_WIDTH {32} \
   CONFIG.C_PROBE1_TYPE {1} \
   CONFIG.C_PROBE1_WIDTH {32} \
   CONFIG.C_PROBE2_TYPE {1} \
   CONFIG.C_PROBE2_WIDTH {32} \
   CONFIG.C_PROBE3_TYPE {1} \
   CONFIG.C_PROBE3_WIDTH {32} \
   CONFIG.C_PROBE4_TYPE {1} \
   CONFIG.C_PROBE4_WIDTH {32} \
   CONFIG.C_PROBE5_TYPE {1} \
   CONFIG.C_PROBE5_WIDTH {32} \
   CONFIG.C_PROBE6_TYPE {1} \
   CONFIG.C_PROBE6_WIDTH {32} \
   CONFIG.C_PROBE7_TYPE {2} \
 ] $ila_0

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
  
  # Create instance: slice_B, and set properties
  set slice_B [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_B ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {7} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_B

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

  # Create instance: slice_Mem_R, and set properties
  set slice_Mem_R [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_Mem_R ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_Mem_R

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

  # Create instance: slice_S_ex, and set properties
  set slice_S_ex [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_S_ex ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_S_ex

  # Create instance: slice_ShOp, and set properties
  set slice_ShOp [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_ShOp ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DOUT_WIDTH {12} \
 ] $slice_ShOp

  # Create instance: slice_WB, and set properties
  set slice_WB [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_WB ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {6} \
   CONFIG.DIN_TO {6} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_WB

  # Create instance: slice_W_En, and set properties
  set slice_W_En [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_W_En ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {5} \
   CONFIG.DIN_TO {5} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $slice_W_En

  # Create instance: slice_cmd, and set properties
  set slice_cmd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 slice_cmd ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {4} \
 ] $slice_cmd

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
  
  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_EN_PROBE_IN_ACTIVITY {0} \
   CONFIG.C_NUM_PROBE_IN {0} \
 ] $vio_0

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

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DOUT_WIDTH {13} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DOUT_WIDTH {13} \
 ] $xlslice_1

  # Create port connections
  connect_bd_net -net ALU_1_ALUResult1 [get_bd_pins ALU_1/ALUResult1] [get_bd_pins Execute_Memory_Stage_0/alu_result_input]
  connect_bd_net -net ALU_1_status_flags [get_bd_pins ALU_1/status_flags] [get_bd_pins status_register_0/status]
  connect_bd_net -net Adder_32_0_w [get_bd_pins Adder_32_0/w] [get_bd_pins My_mux_0/input2]
  connect_bd_net -net Cin_0_dout [get_bd_pins Adder_0/Cin] [get_bd_pins Cin_0/dout]
  connect_bd_net -net Condition_Check_0_condition_met [get_bd_pins Condition_Check_0/condition_met] [get_bd_pins not_gate_0/a]
  connect_bd_net -net Control_Unit_0_B [get_bd_pins Control_Unit_0/branch] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net Control_Unit_0_EXE_CMD [get_bd_pins Control_Unit_0/aluCmd] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net Control_Unit_0_MEM_R_EN [get_bd_pins Control_Unit_0/memRead] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net Control_Unit_0_S_Out [get_bd_pins Control_Unit_0/sOut] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net Control_Unit_0_WB_EN [get_bd_pins Control_Unit_0/wbEn] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net Control_Unit_0_memWrite [get_bd_pins Control_Unit_0/memWrite] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net Exe_Mem_Pipeline_Reg_0_Alu_Res_Out [get_bd_pins Execute_Memory_Stage_0/alu_result_output] [get_bd_pins Memory_WriteBack_Sta_0/alu_result_input] [get_bd_pins Mux3To1_0/a1] [get_bd_pins Mux3To1_1/a1] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net Exe_Mem_Pipeline_Reg_0_Dest_out [get_bd_pins Execute_Memory_Stage_0/destination_output] [get_bd_pins ForwardingUnit_0/destMem] [get_bd_pins HazardUnit_0/destMem] [get_bd_pins Memory_WriteBack_Sta_0/destination_reg]
  connect_bd_net -net Exe_Mem_Pipeline_Reg_0_MEM_W_EN_out [get_bd_pins Execute_Memory_Stage_0/memory_write_enable_out] [get_bd_pins OR_Gate_2/b] [get_bd_pins data_memory/we]
  connect_bd_net -net Exe_Mem_Pipeline_Reg_0_WB_EN_Out [get_bd_pins Execute_Memory_Stage_0/write_back_enable_out] [get_bd_pins ForwardingUnit_0/wbEnMem] [get_bd_pins HazardUnit_0/wbEnMem] [get_bd_pins Memory_WriteBack_Sta_0/writeback_enable]
  connect_bd_net -net Execute_Memory_Stage_0_Rm_value_Out [get_bd_pins Execute_Memory_Stage_0/Rm_value_Out] [get_bd_pins data_memory/d]
  connect_bd_net -net Execute_Memory_Stage_0_memory_read_enable_out [get_bd_pins Execute_Memory_Stage_0/memory_read_enable_out] [get_bd_pins HazardUnit_0/memREn] [get_bd_pins Memory_WriteBack_Sta_0/memory_read_enable]
  connect_bd_net -net ForwardingUnit_0_selSrc1 [get_bd_pins ForwardingUnit_0/selSrc1] [get_bd_pins Mux3To1_0/sel]
  connect_bd_net -net ForwardingUnit_0_selSrc2 [get_bd_pins ForwardingUnit_0/selSrc2] [get_bd_pins Mux3To1_1/sel]
  connect_bd_net -net Hazard_unit_0_hazard_Detected [get_bd_pins HazardUnit_0/hazard] [get_bd_pins If_Id_Register_0/freeze] [get_bd_pins OR_Gate_0/b] [get_bd_pins PC_0/freez]
  connect_bd_net -net IF_0_pc_out [get_bd_pins Adder_0/Sum] [get_bd_pins If_Id_Register_0/PC_If] [get_bd_pins My_mux_0/input1]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Alu_Carry_In_Exe [get_bd_pins ALU_1/CarryIn] [get_bd_pins Id_Exe_Pipeline_Regi_0/Alu_Carry_In_Exe]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_B_Out [get_bd_pins Id_Exe_Pipeline_Regi_0/B_Out] [get_bd_pins Id_Exe_Pipeline_Regi_0/flush] [get_bd_pins If_Id_Register_0/flush] [get_bd_pins My_mux_0/s]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_EXE_CMD_out [get_bd_pins ALU_1/ALUcnt] [get_bd_pins Id_Exe_Pipeline_Regi_0/EXE_CMD_out]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Im_Out [get_bd_pins Id_Exe_Pipeline_Regi_0/Im_Out] [get_bd_pins Val2_Generator_1/is_immediate]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_MEM_R_EN_out [get_bd_pins Execute_Memory_Stage_0/memory_read_enable] [get_bd_pins Id_Exe_Pipeline_Regi_0/MEM_R_EN_out] [get_bd_pins OR_Gate_1/a]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_MEM_W_EN_out [get_bd_pins Execute_Memory_Stage_0/memory_write_enable] [get_bd_pins Id_Exe_Pipeline_Regi_0/MEM_W_EN_out] [get_bd_pins OR_Gate_1/b]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_PC_out [get_bd_pins Adder_32_0/a] [get_bd_pins Id_Exe_Pipeline_Regi_0/PC_out]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_S_Out [get_bd_pins Id_Exe_Pipeline_Regi_0/S_Out] [get_bd_pins status_register_0/SE]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Shifter_Operand_Out [get_bd_pins Id_Exe_Pipeline_Regi_0/Shifter_Operand_Out] [get_bd_pins Val2_Generator_1/shift_operand]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Signed_Imm_24_Out [get_bd_pins Adder_32_0/b] [get_bd_pins Id_Exe_Pipeline_Regi_0/Signed_Imm_24_Out]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Src1_Out [get_bd_pins ForwardingUnit_0/src1] [get_bd_pins Id_Exe_Pipeline_Regi_0/Src1_Out]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Src2_Out [get_bd_pins ForwardingUnit_0/src2] [get_bd_pins Id_Exe_Pipeline_Regi_0/Src2_Out]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Val_Rm_out [get_bd_pins Id_Exe_Pipeline_Regi_0/Val_Rm_out] [get_bd_pins Mux3To1_1/a0]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_Val_Rn_out [get_bd_pins Id_Exe_Pipeline_Regi_0/Val_Rn_out] [get_bd_pins Mux3To1_0/a0]
  connect_bd_net -net Id_Exe_Pipeline_Regi_0_WB_EN_out [get_bd_pins Execute_Memory_Stage_0/write_back_enable] [get_bd_pins HazardUnit_0/wbEnEx] [get_bd_pins Id_Exe_Pipeline_Regi_0/WB_EN_out]
  connect_bd_net -net If_Id_Register_0_PC_Id [get_bd_pins Id_Exe_Pipeline_Regi_0/PC] [get_bd_pins If_Id_Register_0/PC_Id]
  connect_bd_net -net Memory_WriteBack_Sta_0_alu_result_output [get_bd_pins Memory_WriteBack_Sta_0/alu_result_output] [get_bd_pins My_mux_1/input1]
  connect_bd_net -net Memory_WriteBack_Sta_0_destination_reg_out [get_bd_pins ForwardingUnit_0/destWb] [get_bd_pins Memory_WriteBack_Sta_0/destination_reg_out] [get_bd_pins RegisterFile_0/writeRegister]
  connect_bd_net -net Memory_WriteBack_Sta_0_memory_data_output [get_bd_pins Memory_WriteBack_Sta_0/memory_data_output] [get_bd_pins My_mux_1/input2]
  connect_bd_net -net Memory_WriteBack_Sta_0_memory_read_enable_out [get_bd_pins Memory_WriteBack_Sta_0/memory_read_enable_out] [get_bd_pins My_mux_1/s]
  connect_bd_net -net Memory_WriteBack_Sta_0_writeback_enable_out [get_bd_pins ForwardingUnit_0/wbEnWb] [get_bd_pins Memory_WriteBack_Sta_0/writeback_enable_out] [get_bd_pins RegisterFile_0/regWrite]
  connect_bd_net -net Mux3To1_0_Mux_out [get_bd_pins ALU_1/SrcA1] [get_bd_pins Mux3To1_0/Mux_out]
  connect_bd_net -net Mux3To1_1_Mux_out1 [get_bd_pins Execute_Memory_Stage_0/Rm_value_In] [get_bd_pins Mux3To1_1/Mux_out] [get_bd_pins Val2_Generator_1/operand_in]
  connect_bd_net -net Mux_0_out [get_bd_pins Id_Exe_Pipeline_Regi_0/Src2_In] [get_bd_pins My_mux_2/Mux_out] [get_bd_pins RegisterFile_0/readRegister2]
  connect_bd_net -net Mux_1_out [get_bd_pins My_mux_3/Mux_out] [get_bd_pins slice_B/Din] [get_bd_pins slice_Mem_R/Din] [get_bd_pins slice_S_ex/Din] [get_bd_pins slice_WB/Din] [get_bd_pins slice_W_En/Din] [get_bd_pins slice_cmd/Din]
  connect_bd_net -net My_mux_0_Mux_out [get_bd_pins My_mux_0/Mux_out] [get_bd_pins PC_0/Pc_in]
  connect_bd_net -net My_mux_1_out [get_bd_pins Mux3To1_0/a2] [get_bd_pins Mux3To1_1/a2] [get_bd_pins My_mux_1/Mux_out] [get_bd_pins RegisterFile_0/writeData]
  connect_bd_net -net Net [get_bd_pins Execute_Memory_Stage_0/destination] [get_bd_pins HazardUnit_0/destEx] [get_bd_pins Id_Exe_Pipeline_Regi_0/Dest_out]
  connect_bd_net -net Net1 [get_bd_pins Adder_0/A] [get_bd_pins PC_0/Pc_out] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net OR_Gate_0_y [get_bd_pins My_mux_3/s] [get_bd_pins OR_Gate_0/y]
  connect_bd_net -net OR_Gate_1_y [get_bd_pins OR_Gate_1/y] [get_bd_pins Val2_Generator_1/sign_extend]
  connect_bd_net -net OR_Gate_2_y [get_bd_pins HazardUnit_0/twoSrc] [get_bd_pins OR_Gate_2/y]
  connect_bd_net -net RegisterFile_0_R0 [get_bd_pins RegisterFile_0/R0] [get_bd_pins ila_0/probe0]
  connect_bd_net -net RegisterFile_0_R1 [get_bd_pins RegisterFile_0/R1] [get_bd_pins ila_0/probe1]
  connect_bd_net -net RegisterFile_0_R2 [get_bd_pins RegisterFile_0/R2] [get_bd_pins ila_0/probe2]
  connect_bd_net -net RegisterFile_0_R3 [get_bd_pins RegisterFile_0/R3] [get_bd_pins ila_0/probe3]
  connect_bd_net -net RegisterFile_0_R4 [get_bd_pins RegisterFile_0/R4] [get_bd_pins ila_0/probe4]
  connect_bd_net -net RegisterFile_0_R5 [get_bd_pins RegisterFile_0/R5] [get_bd_pins ila_0/probe5]
  connect_bd_net -net RegisterFile_0_R6 [get_bd_pins RegisterFile_0/R6] [get_bd_pins ila_0/probe6]
  connect_bd_net -net RegisterFile_0_readData1 [get_bd_pins Id_Exe_Pipeline_Regi_0/Val_Rn_In] [get_bd_pins RegisterFile_0/readData1]
  connect_bd_net -net RegisterFile_0_readData2 [get_bd_pins Id_Exe_Pipeline_Regi_0/Val_Rm_In] [get_bd_pins RegisterFile_0/readData2]
  connect_bd_net -net Register_En_dout [get_bd_pins Execute_Memory_Stage_0/en] [get_bd_pins Id_Exe_Pipeline_Regi_0/enable] [get_bd_pins Memory_WriteBack_Sta_0/en] [get_bd_pins Register_En/dout]
  connect_bd_net -net Slice_S_exe_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/S_In] [get_bd_pins slice_S_ex/Dout]
  connect_bd_net -net Val2_Generator_1_operand_out [get_bd_pins ALU_1/SrcB1] [get_bd_pins Val2_Generator_1/operand_out]
  connect_bd_net -net clk_0_1 [get_bd_ports clk_0] [get_bd_pins Condition_Check_0/clk] [get_bd_pins Execute_Memory_Stage_0/clock] [get_bd_pins Id_Exe_Pipeline_Regi_0/clk] [get_bd_pins If_Id_Register_0/clk] [get_bd_pins Memory_WriteBack_Sta_0/clock] [get_bd_pins PC_0/clk] [get_bd_pins RegisterFile_0/clk] [get_bd_pins data_memory/clk] [get_bd_pins debouncer_0/CLK_I] [get_bd_pins ila_0/clk] [get_bd_pins status_register_0/clk] [get_bd_pins vio_0/clk]
  connect_bd_net -net data_memory_spo [get_bd_pins Memory_WriteBack_Sta_0/memory_data_input] [get_bd_pins data_memory/spo]
  connect_bd_net -net dist_mem_gen_1_spo [get_bd_pins If_Id_Register_0/Inst_If] [get_bd_pins dist_mem_gen_1/spo]
  connect_bd_net -net if_id_out_1 [get_bd_pins If_Id_Register_0/Inst_Id] [get_bd_pins slice_Im/Din] [get_bd_pins slice_Im_24/Din] [get_bd_pins slice_Rd/Din] [get_bd_pins slice_Rm/Din] [get_bd_pins slice_Rn/Din] [get_bd_pins slice_S/Din] [get_bd_pins slice_ShOp/Din] [get_bd_pins slice_cond/Din] [get_bd_pins slice_mode/Din] [get_bd_pins slice_opc/Din]
  connect_bd_net -net not_gate_0_y [get_bd_pins OR_Gate_0/a] [get_bd_pins not_gate_0/y]
  connect_bd_net -net not_gate_1_y [get_bd_pins OR_Gate_2/a] [get_bd_pins not_gate_1/y]
  connect_bd_net -net rst_0_1 [get_bd_pins Condition_Check_0/rst] [get_bd_pins Execute_Memory_Stage_0/rst] [get_bd_pins Id_Exe_Pipeline_Regi_0/reset] [get_bd_pins If_Id_Register_0/rst] [get_bd_pins Memory_WriteBack_Sta_0/reset_signal] [get_bd_pins PC_0/rst] [get_bd_pins RegisterFile_0/reset] [get_bd_pins debouncer_0/SIGNAL_O] [get_bd_pins ila_0/probe7] [get_bd_pins status_register_0/rst]
  connect_bd_net -net rst_0_2 [get_bd_ports rst_0] [get_bd_pins debouncer_0/SIGNAL_I]
  connect_bd_net -net slice_B_Exe_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/B_In] [get_bd_pins slice_B/Dout]
  connect_bd_net -net slice_Cin_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/Alu_Carry_In_Id] [get_bd_pins slice_Cin/Dout]
  connect_bd_net -net slice_Im_24_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/Signed_Imm_24_In] [get_bd_pins slice_Im_24/Dout]
  connect_bd_net -net slice_Im_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/Im_In] [get_bd_pins not_gate_1/a] [get_bd_pins slice_Im/Dout]
  connect_bd_net -net slice_Rm_Dout [get_bd_pins HazardUnit_0/rdm] [get_bd_pins My_mux_2/input1] [get_bd_pins slice_Rm/Dout]
  connect_bd_net -net slice_Rn_Dout [get_bd_pins HazardUnit_0/rn] [get_bd_pins Id_Exe_Pipeline_Regi_0/Src1_In] [get_bd_pins RegisterFile_0/readRegister1] [get_bd_pins slice_Rn/Dout]
  connect_bd_net -net slice_ShOp_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/Shifter_Operand_In] [get_bd_pins slice_ShOp/Dout]
  connect_bd_net -net slice_WB_En_exe_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/WB_EN] [get_bd_pins slice_WB/Dout]
  connect_bd_net -net slice_cond_Dout [get_bd_pins Condition_Check_0/Cond] [get_bd_pins slice_cond/Dout]
  connect_bd_net -net slice_exe_cmd_exe_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/EXE_CMD] [get_bd_pins slice_cmd/Dout]
  connect_bd_net -net slice_mem_R_En_exe_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/MEM_R_EN] [get_bd_pins slice_Mem_R/Dout]
  connect_bd_net -net slice_mem_W_En_exe_Dout [get_bd_pins Id_Exe_Pipeline_Regi_0/MEM_W_EN] [get_bd_pins My_mux_2/s] [get_bd_pins slice_W_En/Dout]
  connect_bd_net -net status_register_0_statusout [get_bd_pins Condition_Check_0/SR] [get_bd_pins slice_Cin/Din] [get_bd_pins status_register_0/statusout]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins My_mux_3/input1] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout1 [get_bd_pins My_mux_3/input2] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins Adder_0/B] [get_bd_pins adder_in_B/dout]
  connect_bd_net -net xlconstant_1_dout1 [get_bd_pins ForwardingUnit_0/forwardEn] [get_bd_pins HazardUnit_0/forwardEn] [get_bd_pins vio_0/probe_out0]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins If_Id_Register_0/en] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins Control_Unit_0/mode] [get_bd_pins slice_mode/Dout]
  connect_bd_net -net xlslice_0_Dout1 [get_bd_pins Control_Unit_0/sIn] [get_bd_pins slice_S/Dout]
  connect_bd_net -net xlslice_0_Dout2 [get_bd_pins Id_Exe_Pipeline_Regi_0/Dest] [get_bd_pins My_mux_2/input2] [get_bd_pins slice_Rd/Dout]
  connect_bd_net -net xlslice_0_Dout3 [get_bd_pins data_memory/a] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins Control_Unit_0/opcode] [get_bd_pins slice_opc/Dout]
  connect_bd_net -net xlslice_1_Dout1 [get_bd_pins dist_mem_gen_1/a] [get_bd_pins xlslice_1/Dout]

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


