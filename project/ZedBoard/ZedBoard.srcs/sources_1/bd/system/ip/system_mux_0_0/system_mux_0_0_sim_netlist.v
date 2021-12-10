// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Dec 10 16:52:10 2021
// Host        : Pavel-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_mux_0_0/system_mux_0_0_sim_netlist.v
// Design      : system_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_mux_0_0,mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mux,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module system_mux_0_0
   (cntrl_i,
    data_i,
    vga_r_o,
    vga_g_o,
    vga_b_o);
  input cntrl_i;
  input [23:0]data_i;
  output [3:0]vga_r_o;
  output [3:0]vga_g_o;
  output [3:0]vga_b_o;

  wire cntrl_i;
  wire [23:0]data_i;
  wire [3:0]vga_b_o;
  wire [3:0]vga_g_o;
  wire [3:0]vga_r_o;

  system_mux_0_0_mux inst
       (.cntrl_i(cntrl_i),
        .data_i({data_i[19:16],data_i[11:8],data_i[3:0]}),
        .vga_b_o(vga_b_o),
        .vga_g_o(vga_g_o),
        .vga_r_o(vga_r_o));
endmodule

(* ORIG_REF_NAME = "mux" *) 
module system_mux_0_0_mux
   (vga_r_o,
    vga_g_o,
    vga_b_o,
    cntrl_i,
    data_i);
  output [3:0]vga_r_o;
  output [3:0]vga_g_o;
  output [3:0]vga_b_o;
  input cntrl_i;
  input [11:0]data_i;

  wire cntrl_i;
  wire [11:0]data_i;
  wire [3:0]vga_b_o;
  wire [3:0]vga_g_o;
  wire [3:0]vga_r_o;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_b_o[0]_INST_0 
       (.I0(cntrl_i),
        .I1(data_i[8]),
        .O(vga_b_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_b_o[1]_INST_0 
       (.I0(cntrl_i),
        .I1(data_i[9]),
        .O(vga_b_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_b_o[2]_INST_0 
       (.I0(cntrl_i),
        .I1(data_i[10]),
        .O(vga_b_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_b_o[3]_INST_0 
       (.I0(cntrl_i),
        .I1(data_i[11]),
        .O(vga_b_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_g_o[0]_INST_0 
       (.I0(cntrl_i),
        .I1(data_i[4]),
        .O(vga_g_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_g_o[1]_INST_0 
       (.I0(cntrl_i),
        .I1(data_i[5]),
        .O(vga_g_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_g_o[2]_INST_0 
       (.I0(cntrl_i),
        .I1(data_i[6]),
        .O(vga_g_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_g_o[3]_INST_0 
       (.I0(cntrl_i),
        .I1(data_i[7]),
        .O(vga_g_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_r_o[0]_INST_0 
       (.I0(cntrl_i),
        .I1(data_i[0]),
        .O(vga_r_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_r_o[1]_INST_0 
       (.I0(cntrl_i),
        .I1(data_i[1]),
        .O(vga_r_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_r_o[2]_INST_0 
       (.I0(cntrl_i),
        .I1(data_i[2]),
        .O(vga_r_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vga_r_o[3]_INST_0 
       (.I0(cntrl_i),
        .I1(data_i[3]),
        .O(vga_r_o[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
