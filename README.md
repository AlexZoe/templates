# Templates

## About
Working on projects using the same tools and programming languages it is often times possible to reuse (large) parts of build scripts from previous projects.
Required files are then copied over and stripped off of unnecessary or differing parts before starting over.
As scripts are improved over time, it gets tedious to keep track of the most recent version across projects.
For this reason, I keep them all in one place and update them as required.

This repository contains templates used for Linux-based projects mainly aiming at embedded devices with ARM CPUs and Xilinx FPGAs.
Thus, templates are only tested with these architectures/operating system but might also work in other environments with more or less effort involved.

Feel free to use them as is or modify them as you see fit.
Feedback for getting them to work in different environments is always appreciated.

## Makefiles
This directory contains GNU Makefiles serving the following purposes:

- compile C-based Linux user space applications
- compile Linux kernel device drivers (for Host or ARM)
- compile Verilog-based hardware descriptions for simulation with Icarus
  Verilog/GTK-Wave
- compile (/synthesise) (System)Verilog-based hardware descriptions for Xilinx FPGAs
- Package HDL code as IP-core for Xilinx work flow
- Build Xilinx Vivado system

The Makefiles are designed to compile out-of-source, i.e. in a different directory than the source code.
The only exception is the generation of IP-cores which are built in-source.

## TCL
This directory contains tcl (tool command language) scripts which are used for Xilinx related Makefiles (building IP-cores, systems).
These scripts are written for 'batch mode' which means Vivado is exited automatically after running the script (command: vivado -mode batch \<script\>).
When used in 'tcl' mode, the tcl console stays open after executing the script which allows to call additional commands such as starting up the GUI.
