-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Dec  5 23:17:23 2021
-- Host        : DESKTOP-3GDJ0OK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Viktor/Desktop/study/verilog_shit/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_ov7670_debounce_0_1/system_ov7670_debounce_0_1_stub.vhdl
-- Design      : system_ov7670_debounce_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_ov7670_debounce_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    i : in STD_LOGIC;
    o : out STD_LOGIC
  );

end system_ov7670_debounce_0_1;

architecture stub of system_ov7670_debounce_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,i,o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "debounce,Vivado 2018.2";
begin
end;
