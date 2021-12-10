-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Dec 10 16:52:10 2021
-- Host        : Pavel-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_mux_0_0/system_mux_0_0_stub.vhdl
-- Design      : system_mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_mux_0_0 is
  Port ( 
    cntrl_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vga_r_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end system_mux_0_0;

architecture stub of system_mux_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "cntrl_i,data_i[23:0],vga_r_o[3:0],vga_g_o[3:0],vga_b_o[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mux,Vivado 2018.2";
begin
end;
