# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "EQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HI" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MI" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VS" -parent ${Page_0}


}

proc update_PARAM_VALUE.AL { PARAM_VALUE.AL } {
	# Procedure called to update AL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AL { PARAM_VALUE.AL } {
	# Procedure called to validate AL
	return true
}

proc update_PARAM_VALUE.CC { PARAM_VALUE.CC } {
	# Procedure called to update CC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CC { PARAM_VALUE.CC } {
	# Procedure called to validate CC
	return true
}

proc update_PARAM_VALUE.CS { PARAM_VALUE.CS } {
	# Procedure called to update CS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CS { PARAM_VALUE.CS } {
	# Procedure called to validate CS
	return true
}

proc update_PARAM_VALUE.EQ { PARAM_VALUE.EQ } {
	# Procedure called to update EQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EQ { PARAM_VALUE.EQ } {
	# Procedure called to validate EQ
	return true
}

proc update_PARAM_VALUE.GE { PARAM_VALUE.GE } {
	# Procedure called to update GE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GE { PARAM_VALUE.GE } {
	# Procedure called to validate GE
	return true
}

proc update_PARAM_VALUE.GT { PARAM_VALUE.GT } {
	# Procedure called to update GT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GT { PARAM_VALUE.GT } {
	# Procedure called to validate GT
	return true
}

proc update_PARAM_VALUE.HI { PARAM_VALUE.HI } {
	# Procedure called to update HI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HI { PARAM_VALUE.HI } {
	# Procedure called to validate HI
	return true
}

proc update_PARAM_VALUE.LE { PARAM_VALUE.LE } {
	# Procedure called to update LE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LE { PARAM_VALUE.LE } {
	# Procedure called to validate LE
	return true
}

proc update_PARAM_VALUE.LS { PARAM_VALUE.LS } {
	# Procedure called to update LS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LS { PARAM_VALUE.LS } {
	# Procedure called to validate LS
	return true
}

proc update_PARAM_VALUE.LT { PARAM_VALUE.LT } {
	# Procedure called to update LT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LT { PARAM_VALUE.LT } {
	# Procedure called to validate LT
	return true
}

proc update_PARAM_VALUE.MI { PARAM_VALUE.MI } {
	# Procedure called to update MI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MI { PARAM_VALUE.MI } {
	# Procedure called to validate MI
	return true
}

proc update_PARAM_VALUE.NE { PARAM_VALUE.NE } {
	# Procedure called to update NE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NE { PARAM_VALUE.NE } {
	# Procedure called to validate NE
	return true
}

proc update_PARAM_VALUE.PL { PARAM_VALUE.PL } {
	# Procedure called to update PL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PL { PARAM_VALUE.PL } {
	# Procedure called to validate PL
	return true
}

proc update_PARAM_VALUE.VC { PARAM_VALUE.VC } {
	# Procedure called to update VC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VC { PARAM_VALUE.VC } {
	# Procedure called to validate VC
	return true
}

proc update_PARAM_VALUE.VS { PARAM_VALUE.VS } {
	# Procedure called to update VS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VS { PARAM_VALUE.VS } {
	# Procedure called to validate VS
	return true
}


proc update_MODELPARAM_VALUE.EQ { MODELPARAM_VALUE.EQ PARAM_VALUE.EQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EQ}] ${MODELPARAM_VALUE.EQ}
}

proc update_MODELPARAM_VALUE.NE { MODELPARAM_VALUE.NE PARAM_VALUE.NE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NE}] ${MODELPARAM_VALUE.NE}
}

proc update_MODELPARAM_VALUE.CS { MODELPARAM_VALUE.CS PARAM_VALUE.CS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CS}] ${MODELPARAM_VALUE.CS}
}

proc update_MODELPARAM_VALUE.CC { MODELPARAM_VALUE.CC PARAM_VALUE.CC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CC}] ${MODELPARAM_VALUE.CC}
}

proc update_MODELPARAM_VALUE.MI { MODELPARAM_VALUE.MI PARAM_VALUE.MI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MI}] ${MODELPARAM_VALUE.MI}
}

proc update_MODELPARAM_VALUE.PL { MODELPARAM_VALUE.PL PARAM_VALUE.PL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PL}] ${MODELPARAM_VALUE.PL}
}

proc update_MODELPARAM_VALUE.VS { MODELPARAM_VALUE.VS PARAM_VALUE.VS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VS}] ${MODELPARAM_VALUE.VS}
}

proc update_MODELPARAM_VALUE.VC { MODELPARAM_VALUE.VC PARAM_VALUE.VC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VC}] ${MODELPARAM_VALUE.VC}
}

proc update_MODELPARAM_VALUE.HI { MODELPARAM_VALUE.HI PARAM_VALUE.HI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HI}] ${MODELPARAM_VALUE.HI}
}

proc update_MODELPARAM_VALUE.LS { MODELPARAM_VALUE.LS PARAM_VALUE.LS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LS}] ${MODELPARAM_VALUE.LS}
}

proc update_MODELPARAM_VALUE.GE { MODELPARAM_VALUE.GE PARAM_VALUE.GE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GE}] ${MODELPARAM_VALUE.GE}
}

proc update_MODELPARAM_VALUE.LT { MODELPARAM_VALUE.LT PARAM_VALUE.LT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LT}] ${MODELPARAM_VALUE.LT}
}

proc update_MODELPARAM_VALUE.GT { MODELPARAM_VALUE.GT PARAM_VALUE.GT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GT}] ${MODELPARAM_VALUE.GT}
}

proc update_MODELPARAM_VALUE.LE { MODELPARAM_VALUE.LE PARAM_VALUE.LE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LE}] ${MODELPARAM_VALUE.LE}
}

proc update_MODELPARAM_VALUE.AL { MODELPARAM_VALUE.AL PARAM_VALUE.AL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AL}] ${MODELPARAM_VALUE.AL}
}

