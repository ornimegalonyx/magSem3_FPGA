-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Dec 10 16:52:10 2021
-- Host        : Pavel-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/work/miet/mag_sem_3/magSem3_FPGA/project/ZedBoard/ZedBoard.srcs/sources_1/bd/system/ip/system_mux_0_0/system_mux_0_0_sim_netlist.vhdl
-- Design      : system_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_mux_0_0_mux is
  port (
    vga_r_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cntrl_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_mux_0_0_mux : entity is "mux";
end system_mux_0_0_mux;

architecture STRUCTURE of system_mux_0_0_mux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \vga_b_o[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vga_b_o[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vga_b_o[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vga_b_o[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vga_g_o[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vga_g_o[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vga_g_o[2]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vga_g_o[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vga_r_o[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \vga_r_o[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \vga_r_o[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \vga_r_o[3]_INST_0\ : label is "soft_lutpair1";
begin
\vga_b_o[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntrl_i,
      I1 => data_i(8),
      O => vga_b_o(0)
    );
\vga_b_o[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntrl_i,
      I1 => data_i(9),
      O => vga_b_o(1)
    );
\vga_b_o[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntrl_i,
      I1 => data_i(10),
      O => vga_b_o(2)
    );
\vga_b_o[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntrl_i,
      I1 => data_i(11),
      O => vga_b_o(3)
    );
\vga_g_o[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntrl_i,
      I1 => data_i(4),
      O => vga_g_o(0)
    );
\vga_g_o[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntrl_i,
      I1 => data_i(5),
      O => vga_g_o(1)
    );
\vga_g_o[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntrl_i,
      I1 => data_i(6),
      O => vga_g_o(2)
    );
\vga_g_o[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntrl_i,
      I1 => data_i(7),
      O => vga_g_o(3)
    );
\vga_r_o[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntrl_i,
      I1 => data_i(0),
      O => vga_r_o(0)
    );
\vga_r_o[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntrl_i,
      I1 => data_i(1),
      O => vga_r_o(1)
    );
\vga_r_o[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntrl_i,
      I1 => data_i(2),
      O => vga_r_o(2)
    );
\vga_r_o[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntrl_i,
      I1 => data_i(3),
      O => vga_r_o(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_mux_0_0 is
  port (
    cntrl_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vga_r_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_mux_0_0 : entity is "system_mux_0_0,mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_mux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_mux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_mux_0_0 : entity is "mux,Vivado 2018.2";
end system_mux_0_0;

architecture STRUCTURE of system_mux_0_0 is
begin
inst: entity work.system_mux_0_0_mux
     port map (
      cntrl_i => cntrl_i,
      data_i(11 downto 8) => data_i(19 downto 16),
      data_i(7 downto 4) => data_i(11 downto 8),
      data_i(3 downto 0) => data_i(3 downto 0),
      vga_b_o(3 downto 0) => vga_b_o(3 downto 0),
      vga_g_o(3 downto 0) => vga_g_o(3 downto 0),
      vga_r_o(3 downto 0) => vga_r_o(3 downto 0)
    );
end STRUCTURE;
