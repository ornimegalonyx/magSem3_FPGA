# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# IP: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/system_PmodMTDS_0_0.xci
# IP: The module: 'system_PmodMTDS_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_pmod_bridge_0_0/PmodMTDS_pmod_bridge_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==PmodMTDS_pmod_bridge_0_0 || ORIG_REF_NAME==PmodMTDS_pmod_bridge_0_0} -quiet] -quiet

# IP: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_quad_spi_0_0/PmodMTDS_axi_quad_spi_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodMTDS_axi_quad_spi_0_0} -quiet] -quiet

# IP: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_gpio_0_0/PmodMTDS_axi_gpio_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_gpio_0_0 || ORIG_REF_NAME==PmodMTDS_axi_gpio_0_0} -quiet] -quiet

# IP: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/axi_timer_0/axi_timer_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==axi_timer_0 || ORIG_REF_NAME==axi_timer_0} -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_pmod_bridge_0_0/PmodMTDS_pmod_bridge_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodMTDS_pmod_bridge_0_0 || ORIG_REF_NAME==PmodMTDS_pmod_bridge_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_pmod_bridge_0_0/src/pmod_concat_ooc.xdc

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/system_PmodMTDS_0_0_board.xdc
# XDC: The top module name and the constraint reference have the same name: 'system_PmodMTDS_0_0'. Do not add the DONT_TOUCH constraint.
set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'system_PmodMTDS_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_quad_spi_0_0/PmodMTDS_axi_quad_spi_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodMTDS_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_quad_spi_0_0/PmodMTDS_axi_quad_spi_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodMTDS_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_quad_spi_0_0/PmodMTDS_axi_quad_spi_0_0_ooc.xdc

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_quad_spi_0_0/PmodMTDS_axi_quad_spi_0_0_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodMTDS_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_gpio_0_0/PmodMTDS_axi_gpio_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_gpio_0_0 || ORIG_REF_NAME==PmodMTDS_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_gpio_0_0/PmodMTDS_axi_gpio_0_0_ooc.xdc

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_gpio_0_0/PmodMTDS_axi_gpio_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_gpio_0_0 || ORIG_REF_NAME==PmodMTDS_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/axi_timer_0/axi_timer_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==axi_timer_0 || ORIG_REF_NAME==axi_timer_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/axi_timer_0/axi_timer_0_ooc.xdc

# IP: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/system_PmodMTDS_0_0.xci
# IP: The module: 'system_PmodMTDS_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_pmod_bridge_0_0/PmodMTDS_pmod_bridge_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==PmodMTDS_pmod_bridge_0_0 || ORIG_REF_NAME==PmodMTDS_pmod_bridge_0_0} -quiet] -quiet

# IP: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_quad_spi_0_0/PmodMTDS_axi_quad_spi_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodMTDS_axi_quad_spi_0_0} -quiet] -quiet

# IP: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_gpio_0_0/PmodMTDS_axi_gpio_0_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_gpio_0_0 || ORIG_REF_NAME==PmodMTDS_axi_gpio_0_0} -quiet] -quiet

# IP: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/axi_timer_0/axi_timer_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==axi_timer_0 || ORIG_REF_NAME==axi_timer_0} -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_pmod_bridge_0_0/PmodMTDS_pmod_bridge_0_0_board.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodMTDS_pmod_bridge_0_0 || ORIG_REF_NAME==PmodMTDS_pmod_bridge_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_pmod_bridge_0_0/src/pmod_concat_ooc.xdc

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/system_PmodMTDS_0_0_board.xdc
# XDC: The top module name and the constraint reference have the same name: 'system_PmodMTDS_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'system_PmodMTDS_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_quad_spi_0_0/PmodMTDS_axi_quad_spi_0_0_board.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodMTDS_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_quad_spi_0_0/PmodMTDS_axi_quad_spi_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodMTDS_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_quad_spi_0_0/PmodMTDS_axi_quad_spi_0_0_ooc.xdc

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_quad_spi_0_0/PmodMTDS_axi_quad_spi_0_0_clocks.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_quad_spi_0_0 || ORIG_REF_NAME==PmodMTDS_axi_quad_spi_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_gpio_0_0/PmodMTDS_axi_gpio_0_0_board.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_gpio_0_0 || ORIG_REF_NAME==PmodMTDS_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_gpio_0_0/PmodMTDS_axi_gpio_0_0_ooc.xdc

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/PmodMTDS_axi_gpio_0_0/PmodMTDS_axi_gpio_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==PmodMTDS_axi_gpio_0_0 || ORIG_REF_NAME==PmodMTDS_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/axi_timer_0/axi_timer_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==axi_timer_0 || ORIG_REF_NAME==axi_timer_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: c:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_PmodMTDS_0_0/src/axi_timer_0/axi_timer_0_ooc.xdc
