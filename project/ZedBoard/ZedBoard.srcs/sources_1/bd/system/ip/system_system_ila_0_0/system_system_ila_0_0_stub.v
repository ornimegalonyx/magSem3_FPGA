// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Nov 21 08:31:34 2021
// Host        : DESKTOP-3GDJ0OK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top system_system_ila_0_0 -prefix
//               system_system_ila_0_0_ system_system_ila_0_0_stub.v
// Design      : system_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_d5b8,Vivado 2018.2" *)
module system_system_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[3:0],probe1[3:0],probe2[3:0],probe3[0:0],probe4[0:0]" */;
  input clk;
  input [3:0]probe0;
  input [3:0]probe1;
  input [3:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
endmodule