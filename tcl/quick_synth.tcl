# @author       Alexander Zoellner
# @date         2019/06/20
# @mail         zoellner.contact@gmail.com
# @file         quick_synth.tcl
#
# @brief        Runs a quick synthesis mainly for checking syntax
#
#               Gives a more detailed report than the icarus verilog simulation
#               report. Requires Xilinx's Vivado to work. Call with the command
#               'vivado -mode batch -source quick_synth.tcl'.
#               You can also use 'tcl' instead of 'batch' to prevent Vivado from
#               exiting after the running the script.

# Directory containing verilog files (you can also use vhdl files; even both!)
set SRC_DIR "../verilog"

# Read in all verilog files
read_verilog [ glob $SRC_DIR/*.v ]
#read_vhdl [ glob $SRC_DIR/*.hdl ]
# set toplevel; replace '<toplevel-file>' with an arbitrary name without
# brackets
set_property top <toplevel-file> [current_fileset]
# Run synthesis on file set (not actually synthesizing)
synth_design -rtl
