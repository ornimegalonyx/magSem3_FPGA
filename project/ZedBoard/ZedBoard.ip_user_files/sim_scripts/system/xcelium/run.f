-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0_sim_netlist.v" \
  "../../../bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_sim_netlist.v" \
  "../../../bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0_sim_netlist.v" \
  "../../../bd/system/ip/system_PmodMTDS_0_0/system_PmodMTDS_0_0_sim_netlist.v" \
  "../../../bd/system/ip/system_rst_ps7_0_100M_0/system_rst_ps7_0_100M_0_sim_netlist.v" \
  "../../../bd/system/ip/system_xbar_0/system_xbar_0_sim_netlist.v" \
  "../../../bd/system/sim/system.v" \
  "../../../bd/system/ip/system_VGA_0_0/system_VGA_0_0_sim_netlist.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/sim/bd_d5b8.v" \
  "../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/sim/bd_d5b8_ila_lib_0.v" \
  "../../../bd/system/ip/system_system_ila_0_0/sim/system_system_ila_0_0.v" \
  "../../../bd/system/ip/system_auto_pc_6/system_auto_pc_6_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_ds_5/system_auto_ds_5_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_pc_5/system_auto_pc_5_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_ds_4/system_auto_ds_4_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_pc_4/system_auto_pc_4_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_ds_3/system_auto_ds_3_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_pc_3/system_auto_pc_3_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_ds_2/system_auto_ds_2_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_pc_2/system_auto_pc_2_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_ds_1/system_auto_ds_1_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_pc_1/system_auto_pc_1_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_ds_0/system_auto_ds_0_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_pc_0/system_auto_pc_0_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_pc_7/system_auto_pc_7_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_us_0/system_auto_us_0_sim_netlist.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

