# compile_and_simulate.tcl

# Set the project name
set project_name add_tb

# Create a new project
create_project $project_name ./$project_name -part xc7z020clg484-1

# Add source files
add_files -norecurse {src/[design_module].sv src/[interface_module].sv src/[testbench_module].sv src/top.sv}

# Add testbench files
add_files -norecurse {testbench/sequences/transaction.sv testbench/sequences/generator.sv testbench/drivers/driver.sv testbench/monitors/monitor.sv testbench/scoreboards/scoreboard.sv testbench/agents/agent.sv testbench/env/env.sv testbench/tests/test.sv}

# Set top module
set_property top [top_module] [current_fileset]

# Run elaboration
elaborate

# Run simulation
launch_simulation
