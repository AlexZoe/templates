#-------------------------------------------------------------------------------
# @author		Alexander Zoellner
# @date			2019/07/31
# @mail			zoellner.contact<at>gmail.com
# @file			settings.tcl
#
# @brief		Definition for other tcl scripts. Setting variables and paths.
#
#-------------------------------------------------------------------------------

# Project name
set MODULE		"my_prj_name"
# FPGA to be used
set CHIP		"xc7z020clg400-1"
# Board for setting board support package pre-sets (if available)
set BOARD		"digilentinc.com:zybo-z7-20:part0:1.0"
# Name of the IP core
set IP_CORE		"my_ip"
# Directory containing source files for IP core
set IP_REPO		"hdl"
# Version info for IP core
set IP_MAJOR	"1"
set IP_MINOR	"0"
# Set directory for storing Vivado outputs
set outputDir	./build
