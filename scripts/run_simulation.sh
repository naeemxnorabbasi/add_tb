#!/bin/bash
vcs -full64 -sverilog -debug_pp -top [top_module] -f filelist.f
./simv
