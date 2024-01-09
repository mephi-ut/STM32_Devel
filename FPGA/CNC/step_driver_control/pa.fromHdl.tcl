
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name step_driver_control -dir "/home/trurl/STM32_Devel/FPGA/CNC/step_driver_control/planAhead_run_1" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "SDC_PINOUT.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {sdc.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top sdc $srcset
add_files [list {SDC_PINOUT.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
