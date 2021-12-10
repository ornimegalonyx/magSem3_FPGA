`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09.12.2021 23:03:30
// Design Name:
// Module Name: mux
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module mux(
  input cntrl_i,
  input [23:0] data_i,
  output [3:0] vga_r_o,
  output [3:0] vga_g_o,
  output [3:0] vga_b_o
);

  assign vga_r_o = (cntrl_i == 1) ? data_i[3:0] : 0;
  assign vga_g_o = (cntrl_i == 1) ? data_i[11:8] : 0;
  assign vga_b_o = (cntrl_i == 1) ? data_i[19:16] : 0;

endmodule
