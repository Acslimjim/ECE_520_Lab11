# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\alex_\OneDrive\Documents\520_Lab\ECE_Lab11_part1\software\lperf_1\webserver_fw_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\alex_\OneDrive\Documents\520_Lab\ECE_Lab11_part1\software\lperf_1\webserver_fw_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {webserver_fw_wrapper}\
-hw {C:\Users\alex_\OneDrive\Documents\520_Lab\ECE_Lab11_part1\hardware\exports\webserver_fw_wrapper.xsa}\
-out {C:/Users/alex_/OneDrive/Documents/520_Lab/ECE_Lab11_part1/software/lperf_1}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {lwip_tcp_perf_server}
platform generate -domains 
platform active {webserver_fw_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
