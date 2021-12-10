// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Dec 10 16:52:10 2021
// Host        : Pavel-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_mux_0_0/system_mux_0_0_stub.v
// Design      : system_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mux,Vivado 2018.2" *)
module system_mux_0_0(cntrl_i, data_i, vga_r_o, vga_g_o, vga_b_o)
/* synthesis syn_black_box black_box_pad_pin="cntrl_i,data_i[23:0],vga_r_o[3:0],vga_g_o[3:0],vga_b_o[3:0]" */;
  input cntrl_i;
  input [23:0]data_i;
  output [3:0]vga_r_o;
  output [3:0]vga_g_o;
  output [3:0]vga_b_o;
endmodule
