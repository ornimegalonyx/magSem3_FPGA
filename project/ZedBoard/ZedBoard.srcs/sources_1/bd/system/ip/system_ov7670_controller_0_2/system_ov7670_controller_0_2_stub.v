// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Dec  5 23:17:26 2021
// Host        : DESKTOP-3GDJ0OK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Viktor/Desktop/study/verilog_shit/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_ov7670_controller_0_2/system_ov7670_controller_0_2_stub.v
// Design      : system_ov7670_controller_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ov7670_controller,Vivado 2018.2" *)
module system_ov7670_controller_0_2(clk, resend, config_finished, sioc, siod, xclk)
/* synthesis syn_black_box black_box_pad_pin="clk,resend,config_finished,sioc,siod,xclk" */;
  input clk;
  input resend;
  output config_finished;
  output sioc;
  inout siod;
  output xclk;
endmodule
