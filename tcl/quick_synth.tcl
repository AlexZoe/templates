# @author       Alexander Zoellner
# @date         2019/06/20
# @mail         zoellner.contact@gmail.com
# @file         quick_synth.tcl
#
# @brief        Runs a quick synthesis mainly for checking syntax

# Set directory containing files to be compiled
set SRC_DIR "../hdl"
# Set highest hierarchy file without file ending
set TOPLEVEL <filename>

# Read all verilog files in directory
read_verilog [ glob $SRC_DIR/*.v ]
# Read all vhdl files in directory
read_vhdl [ glob $SRC_DIR/*.hdl ]
# Set toplevel
set_property top $TOPLEVEL [current_fileset]
# Synthesize
synth_design -rtl
