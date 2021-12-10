// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Dec 10 16:50:36 2021
// Host        : Pavel-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_ov7670_axi_stream_ca_0_0_stub.v
// Design      : system_ov7670_axi_stream_ca_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ov7670_axi_stream_capture,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(pclk, vsync, href, d, m_axis_tvalid, m_axis_tready, 
  m_axis_tlast, m_axis_tdata, m_axis_tuser, aclk)
/* synthesis syn_black_box black_box_pad_pin="pclk,vsync,href,d[7:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tdata[23:0],m_axis_tuser,aclk" */;
  input pclk;
  input vsync;
  input href;
  input [7:0]d;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output [23:0]m_axis_tdata;
  output m_axis_tuser;
  output aclk;
endmodule
