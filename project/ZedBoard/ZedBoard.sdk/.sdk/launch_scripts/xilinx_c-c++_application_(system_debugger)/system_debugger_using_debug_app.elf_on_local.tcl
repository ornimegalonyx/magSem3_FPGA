connect -url tcp:127.0.0.1:3121
source C:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.sdk/system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248B02024"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248B02024" && level==0} -index 1
fpga -file C:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.sdk/system_wrapper_hw_platform_0/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248B02024"} -index 0
loadhw -hw C:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.sdk/system_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248B02024"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248B02024"} -index 0
dow C:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.sdk/app/Debug/app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248B02024"} -index 0
con
