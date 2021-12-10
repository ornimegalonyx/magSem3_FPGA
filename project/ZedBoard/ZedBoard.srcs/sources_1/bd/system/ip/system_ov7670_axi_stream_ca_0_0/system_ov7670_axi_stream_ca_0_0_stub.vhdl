-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Dec 10 16:50:38 2021
-- Host        : Pavel-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_ov7670_axi_stream_ca_0_0/system_ov7670_axi_stream_ca_0_0_stub.vhdl
-- Design      : system_ov7670_axi_stream_ca_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_ov7670_axi_stream_ca_0_0 is
  Port ( 
    pclk : in STD_LOGIC;
    vsync : in STD_LOGIC;
    href : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tuser : out STD_LOGIC;
    aclk : out STD_LOGIC
  );

end system_ov7670_axi_stream_ca_0_0;

architecture stub of system_ov7670_axi_stream_ca_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pclk,vsync,href,d[7:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tdata[23:0],m_axis_tuser,aclk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ov7670_axi_stream_capture,Vivado 2018.2";
begin
end;
