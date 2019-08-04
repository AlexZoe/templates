#-------------------------------------------------------------------------------
# @author		Alexander Zoellner
# @date			2019/06/20
# @mail			zoellner.contact<at>gmail.com
# @file			package_ip.tcl
#
# @brief		Packages a repository as IP core to be used in Vivado.
#				See Xilinx's UG 1118 (User Guide) for more information.
#
#-------------------------------------------------------------------------------

# Set FPGA to be used (does not really matter in this case)
set CHIP        "xc7z020clg400-1"
# Repository to be packaged as IP core (Xilinx recommends using 'hdl', 'verilog'
# or similar directory names in order for the wizard to determine the source
# files).
set IP_REPO     "hdl"
# Move above variables in separate file if used across multiple scripts
#source settings.tcl


# Create temporary project in memory to set compile order
create_project tmp -in_memory -part ${CHIP}
# Set compile order to automatic to let the Wizard figure out hierarchy and
# interfaces. (otherwise you have to manually set the
# relation of the source files and infer interfaces)
# Check the IP core when intantiating if interfaces and hierarchy is correct!
set_property source_mgmt_mode All [current_project]
# Package IP core (set more options as needed
ipx::infer_core -vendor user.org -library user -taxonomy /UserIP $IP_REPO
# Set IP core name (the name during packaging seems to get ignored/overwritten)
set_property name ${IP_CORE} [ipx::current_core]
set_property display_name ${IP_CORE}_v${IP_MAJOR}_${IP_MINOR} [ipx::current_core]
set_property description ${IP_CORE}_v${IP_MAJOR}_${IP_MINOR}[ipx::current_core]
ipx::save_core [ipx::current_core]
close_project
