# @author       Alexander Zoellner
# @date         2019/06/20
# @mail         zoellner.contact@gmail.com
# @file         synth_check.tcl
#
# @brief        Runs a quick syntax check
#
#               Another way for checking if the current files do not contain
#               syntax errors. However, not as detailed as 'quick_synth.tcl' or
#               the icarus verilog. Requires Xilinx's Vivado to work. Call with
#               the command 'vivado -mode batch -source synth_check.tcl'.
#               You can also use 'tcl' instead of 'batch' to prevent Vivado from
#               exiting after the running the script.

# Directory containing verilog files (you can also use vhdl files; even both!)
set SRC_DIR "../verilog"

# Read in all verilog files
read_verilog [ glob $SRC_DIR/*.v ]
#read_vhdl [ glob $SRC_DIR/*.hdl ]
# Run syntax check
check_syntax
