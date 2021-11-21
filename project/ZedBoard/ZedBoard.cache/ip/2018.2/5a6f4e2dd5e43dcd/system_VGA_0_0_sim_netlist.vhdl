-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Nov 21 03:21:08 2021
-- Host        : DESKTOP-3GDJ0OK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_VGA_0_0_sim_netlist.vhdl
-- Design      : system_VGA_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DownSample is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    vga_synch_reg : out STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DownSample;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DownSample is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal output_buff_i_1_n_0 : STD_LOGIC;
  signal \^vga_synch_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of output_buff_i_1 : label is "soft_lutpair11";
begin
  SR(0) <= \^sr\(0);
  vga_synch_reg <= \^vga_synch_reg\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter,
      O => eqOp
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => eqOp,
      Q => counter,
      R => \^sr\(0)
    );
output_buff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter,
      I1 => \^vga_synch_reg\,
      O => output_buff_i_1_n_0
    );
output_buff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => output_buff_i_1_n_0,
      Q => \^vga_synch_reg\,
      R => \^sr\(0)
    );
\vga_b[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA is
  port (
    vga_h_display : out STD_LOGIC;
    h_sync : out STD_LOGIC;
    vga_v_display : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    vga_h_v_display : out STD_LOGIC;
    \word_pointer_reg[2]__0\ : out STD_LOGIC;
    clock : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    \i_reg[0]\ : in STD_LOGIC;
    pixel_pointer_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA is
  signal \FSM_sequential_hor_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_hor_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_hor_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_hor_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_hor_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_hor_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_hor_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ver_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ver_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ver_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ver_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_ver_state[1]_i_5_n_0\ : STD_LOGIC;
  signal clock_hor : STD_LOGIC;
  signal clock_hor_i_1_n_0 : STD_LOGIC;
  signal clock_ver_i_1_n_0 : STD_LOGIC;
  signal clock_ver_i_2_n_0 : STD_LOGIC;
  signal clock_ver_reg_n_0 : STD_LOGIC;
  signal h_display_buff_i_1_n_0 : STD_LOGIC;
  signal h_display_buff_i_2_n_0 : STD_LOGIC;
  signal h_display_buff_i_3_n_0 : STD_LOGIC;
  signal h_display_buff_i_4_n_0 : STD_LOGIC;
  signal \^h_sync\ : STD_LOGIC;
  signal h_sync_buff_i_1_n_0 : STD_LOGIC;
  signal h_sync_buff_i_2_n_0 : STD_LOGIC;
  signal hor_counter_buff : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \hor_counter_buff[2]_i_1_n_0\ : STD_LOGIC;
  signal \hor_counter_buff[3]_i_1_n_0\ : STD_LOGIC;
  signal \hor_counter_buff[4]_i_1_n_0\ : STD_LOGIC;
  signal \hor_counter_buff[9]_i_1_n_0\ : STD_LOGIC;
  signal \hor_counter_buff[9]_i_3_n_0\ : STD_LOGIC;
  signal \hor_counter_buff[9]_i_4_n_0\ : STD_LOGIC;
  signal \hor_counter_buff[9]_i_5_n_0\ : STD_LOGIC;
  signal \hor_counter_buff_reg_n_0_[0]\ : STD_LOGIC;
  signal \hor_counter_buff_reg_n_0_[1]\ : STD_LOGIC;
  signal \hor_counter_buff_reg_n_0_[2]\ : STD_LOGIC;
  signal \hor_counter_buff_reg_n_0_[3]\ : STD_LOGIC;
  signal \hor_counter_buff_reg_n_0_[4]\ : STD_LOGIC;
  signal \hor_counter_buff_reg_n_0_[5]\ : STD_LOGIC;
  signal \hor_counter_buff_reg_n_0_[6]\ : STD_LOGIC;
  signal \hor_counter_buff_reg_n_0_[7]\ : STD_LOGIC;
  signal \hor_counter_buff_reg_n_0_[8]\ : STD_LOGIC;
  signal \hor_counter_buff_reg_n_0_[9]\ : STD_LOGIC;
  signal hor_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of hor_state : signal is "yes";
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal v_display_buff : STD_LOGIC;
  signal v_display_buff_i_1_n_0 : STD_LOGIC;
  signal \^v_sync\ : STD_LOGIC;
  signal v_sync_buff : STD_LOGIC;
  signal v_sync_buff_i_1_n_0 : STD_LOGIC;
  signal v_sync_buff_i_2_n_0 : STD_LOGIC;
  signal v_sync_buff_i_3_n_0 : STD_LOGIC;
  signal ver_counter_buff : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ver_counter_buff[0]_i_2_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[0]_i_3_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[1]_i_1_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[2]_i_1_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[3]_i_1_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[4]_i_1_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[5]_i_1_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[6]_i_1_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[7]_i_1_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[8]_i_1_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[9]_i_1_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[9]_i_2_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[9]_i_3_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[9]_i_4_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[9]_i_5_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[9]_i_6_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[9]_i_7_n_0\ : STD_LOGIC;
  signal \ver_counter_buff[9]_i_8_n_0\ : STD_LOGIC;
  signal \ver_counter_buff_reg_n_0_[0]\ : STD_LOGIC;
  signal \ver_counter_buff_reg_n_0_[1]\ : STD_LOGIC;
  signal \ver_counter_buff_reg_n_0_[2]\ : STD_LOGIC;
  signal \ver_counter_buff_reg_n_0_[3]\ : STD_LOGIC;
  signal \ver_counter_buff_reg_n_0_[4]\ : STD_LOGIC;
  signal \ver_counter_buff_reg_n_0_[5]\ : STD_LOGIC;
  signal \ver_counter_buff_reg_n_0_[6]\ : STD_LOGIC;
  signal \ver_counter_buff_reg_n_0_[7]\ : STD_LOGIC;
  signal \ver_counter_buff_reg_n_0_[8]\ : STD_LOGIC;
  signal \ver_counter_buff_reg_n_0_[9]\ : STD_LOGIC;
  signal ver_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of ver_state : signal is "yes";
  signal \^vga_h_display\ : STD_LOGIC;
  signal \^vga_v_display\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B[0]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_hor_state_reg[0]\ : label is "s_hor_display:01,s_hor_front_porch:10,s_hor_back_porch:00,s_hor_pw:11";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_hor_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_hor_state_reg[1]\ : label is "s_hor_display:01,s_hor_front_porch:10,s_hor_back_porch:00,s_hor_pw:11";
  attribute KEEP of \FSM_sequential_hor_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_ver_state_reg[0]\ : label is "s_ver_display:01,s_ver_front_porch:10,s_ver_back_porch:00,s_ver_pw:11";
  attribute KEEP of \FSM_sequential_ver_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_ver_state_reg[1]\ : label is "s_ver_display:01,s_ver_front_porch:10,s_ver_back_porch:00,s_ver_pw:11";
  attribute KEEP of \FSM_sequential_ver_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \gat_address_base[31]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of h_display_buff_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hor_counter_buff[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hor_counter_buff[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \hor_counter_buff[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \hor_counter_buff[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hor_counter_buff[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hor_counter_buff[9]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hor_counter_buff[9]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pixel_pointer[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of v_sync_buff_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of v_sync_buff_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ver_counter_buff[0]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ver_counter_buff[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ver_counter_buff[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ver_counter_buff[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ver_counter_buff[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ver_counter_buff[9]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ver_counter_buff[9]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ver_counter_buff[9]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of vga_synch_i_1 : label is "soft_lutpair0";
begin
  h_sync <= \^h_sync\;
  v_sync <= \^v_sync\;
  vga_h_display <= \^vga_h_display\;
  vga_v_display <= \^vga_v_display\;
\B[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^vga_v_display\,
      I1 => \^vga_h_display\,
      I2 => \i_reg[0]\,
      O => D(0)
    );
\FSM_sequential_hor_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888FFFFF888F0000"
    )
        port map (
      I0 => h_sync_buff_i_2_n_0,
      I1 => \FSM_sequential_hor_state[0]_i_2_n_0\,
      I2 => hor_state(1),
      I3 => hor_state(0),
      I4 => \FSM_sequential_hor_state[1]_i_3_n_0\,
      I5 => hor_state(0),
      O => \FSM_sequential_hor_state[0]_i_1_n_0\
    );
\FSM_sequential_hor_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => hor_state(0),
      I1 => \hor_counter_buff_reg_n_0_[6]\,
      I2 => \hor_counter_buff_reg_n_0_[4]\,
      O => \FSM_sequential_hor_state[0]_i_2_n_0\
    );
\FSM_sequential_hor_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
        port map (
      I0 => h_sync_buff_i_2_n_0,
      I1 => \FSM_sequential_hor_state[1]_i_2_n_0\,
      I2 => hor_state(1),
      I3 => hor_state(0),
      I4 => \FSM_sequential_hor_state[1]_i_3_n_0\,
      I5 => hor_state(1),
      O => \FSM_sequential_hor_state[1]_i_1_n_0\
    );
\FSM_sequential_hor_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[4]\,
      I1 => hor_state(1),
      I2 => hor_state(0),
      I3 => \hor_counter_buff_reg_n_0_[6]\,
      O => \FSM_sequential_hor_state[1]_i_2_n_0\
    );
\FSM_sequential_hor_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000010100000FF10"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[9]\,
      I1 => \hor_counter_buff_reg_n_0_[5]\,
      I2 => \FSM_sequential_hor_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_hor_state[1]_i_5_n_0\,
      I4 => clock_ver_i_2_n_0,
      I5 => hor_state(1),
      O => \FSM_sequential_hor_state[1]_i_3_n_0\
    );
\FSM_sequential_hor_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8100"
    )
        port map (
      I0 => hor_state(0),
      I1 => \hor_counter_buff_reg_n_0_[6]\,
      I2 => \hor_counter_buff_reg_n_0_[4]\,
      I3 => hor_state(1),
      O => \FSM_sequential_hor_state[1]_i_4_n_0\
    );
\FSM_sequential_hor_state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000004"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[4]\,
      I1 => \hor_counter_buff_reg_n_0_[5]\,
      I2 => hor_state(0),
      I3 => \hor_counter_buff_reg_n_0_[6]\,
      I4 => \hor_counter_buff_reg_n_0_[9]\,
      O => \FSM_sequential_hor_state[1]_i_5_n_0\
    );
\FSM_sequential_hor_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => \FSM_sequential_hor_state[0]_i_1_n_0\,
      Q => hor_state(0),
      R => '0'
    );
\FSM_sequential_hor_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => \FSM_sequential_hor_state[1]_i_1_n_0\,
      Q => hor_state(1),
      R => '0'
    );
\FSM_sequential_ver_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFFABABAB00"
    )
        port map (
      I0 => \FSM_sequential_ver_state[0]_i_2_n_0\,
      I1 => ver_state(1),
      I2 => ver_state(0),
      I3 => v_display_buff,
      I4 => v_sync_buff,
      I5 => ver_state(0),
      O => \FSM_sequential_ver_state[0]_i_1_n_0\
    );
\FSM_sequential_ver_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[3]\,
      I1 => \ver_counter_buff_reg_n_0_[4]\,
      I2 => \ver_counter_buff_reg_n_0_[2]\,
      I3 => \ver_counter_buff_reg_n_0_[0]\,
      I4 => \ver_counter_buff_reg_n_0_[6]\,
      I5 => \ver_counter_buff[0]_i_2_n_0\,
      O => \FSM_sequential_ver_state[0]_i_2_n_0\
    );
\FSM_sequential_ver_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \FSM_sequential_ver_state[1]_i_2_n_0\,
      I1 => v_display_buff,
      I2 => v_sync_buff,
      I3 => ver_state(1),
      O => \FSM_sequential_ver_state[1]_i_1_n_0\
    );
\FSM_sequential_ver_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => \ver_counter_buff[0]_i_2_n_0\,
      I1 => \ver_counter_buff_reg_n_0_[3]\,
      I2 => v_sync_buff_i_2_n_0,
      I3 => ver_state(1),
      I4 => ver_state(0),
      O => \FSM_sequential_ver_state[1]_i_2_n_0\
    );
\FSM_sequential_ver_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[5]\,
      I1 => \ver_counter_buff_reg_n_0_[9]\,
      I2 => \ver_counter_buff[0]_i_3_n_0\,
      I3 => ver_state(1),
      I4 => \FSM_sequential_ver_state[1]_i_5_n_0\,
      O => v_display_buff
    );
\FSM_sequential_ver_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002800"
    )
        port map (
      I0 => v_sync_buff_i_2_n_0,
      I1 => ver_state(0),
      I2 => \ver_counter_buff_reg_n_0_[3]\,
      I3 => ver_state(1),
      I4 => v_sync_buff_i_3_n_0,
      O => v_sync_buff
    );
\FSM_sequential_ver_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000001"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[8]\,
      I1 => \ver_counter_buff_reg_n_0_[7]\,
      I2 => \ver_counter_buff_reg_n_0_[1]\,
      I3 => \ver_counter_buff_reg_n_0_[0]\,
      I4 => ver_state(0),
      I5 => \ver_counter_buff_reg_n_0_[6]\,
      O => \FSM_sequential_ver_state[1]_i_5_n_0\
    );
\FSM_sequential_ver_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => \FSM_sequential_ver_state[0]_i_1_n_0\,
      Q => ver_state(0),
      R => '0'
    );
\FSM_sequential_ver_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => \FSM_sequential_ver_state[1]_i_1_n_0\,
      Q => ver_state(1),
      R => '0'
    );
clock_hor_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => clock_hor,
      I1 => axi_aresetn,
      O => clock_hor_i_1_n_0
    );
clock_hor_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => clock_hor_i_1_n_0,
      Q => clock_hor,
      R => '0'
    );
clock_ver_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \hor_counter_buff[9]_i_5_n_0\,
      I1 => \hor_counter_buff_reg_n_0_[9]\,
      I2 => hor_state(0),
      I3 => clock_ver_i_2_n_0,
      I4 => h_display_buff_i_4_n_0,
      I5 => clock_ver_reg_n_0,
      O => clock_ver_i_1_n_0
    );
clock_ver_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[8]\,
      I1 => \hor_counter_buff_reg_n_0_[7]\,
      I2 => \hor_counter_buff_reg_n_0_[3]\,
      I3 => \hor_counter_buff_reg_n_0_[1]\,
      I4 => \hor_counter_buff_reg_n_0_[0]\,
      I5 => \hor_counter_buff_reg_n_0_[2]\,
      O => clock_ver_i_2_n_0
    );
clock_ver_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => clock_ver_i_1_n_0,
      Q => clock_ver_reg_n_0,
      R => '0'
    );
\gat_address_base[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF000070"
    )
        port map (
      I0 => \^vga_h_display\,
      I1 => \^vga_v_display\,
      I2 => Q(0),
      I3 => \out\(1),
      I4 => \out\(0),
      O => E(0)
    );
h_display_buff_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400FFFF04000000"
    )
        port map (
      I0 => h_display_buff_i_2_n_0,
      I1 => \hor_counter_buff_reg_n_0_[5]\,
      I2 => \hor_counter_buff_reg_n_0_[4]\,
      I3 => h_display_buff_i_3_n_0,
      I4 => h_display_buff_i_4_n_0,
      I5 => \^vga_h_display\,
      O => h_display_buff_i_1_n_0
    );
h_display_buff_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[6]\,
      I1 => hor_state(0),
      O => h_display_buff_i_2_n_0
    );
h_display_buff_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \hor_counter_buff[9]_i_4_n_0\,
      I1 => \hor_counter_buff_reg_n_0_[7]\,
      I2 => \hor_counter_buff_reg_n_0_[8]\,
      I3 => \hor_counter_buff_reg_n_0_[9]\,
      O => h_display_buff_i_3_n_0
    );
h_display_buff_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => hor_state(1),
      I1 => \hor_counter_buff_reg_n_0_[8]\,
      I2 => \hor_counter_buff_reg_n_0_[7]\,
      I3 => \hor_counter_buff[9]_i_4_n_0\,
      I4 => \FSM_sequential_hor_state[1]_i_5_n_0\,
      O => h_display_buff_i_4_n_0
    );
h_display_buff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => h_display_buff_i_1_n_0,
      Q => \^vga_h_display\,
      R => '0'
    );
h_sync_buff_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFF80000000"
    )
        port map (
      I0 => hor_state(1),
      I1 => \hor_counter_buff_reg_n_0_[4]\,
      I2 => \hor_counter_buff_reg_n_0_[6]\,
      I3 => hor_state(0),
      I4 => h_sync_buff_i_2_n_0,
      I5 => \^h_sync\,
      O => h_sync_buff_i_1_n_0
    );
h_sync_buff_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[9]\,
      I1 => \hor_counter_buff_reg_n_0_[8]\,
      I2 => \hor_counter_buff_reg_n_0_[7]\,
      I3 => \hor_counter_buff[9]_i_4_n_0\,
      I4 => \hor_counter_buff_reg_n_0_[5]\,
      O => h_sync_buff_i_2_n_0
    );
h_sync_buff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => h_sync_buff_i_1_n_0,
      Q => \^h_sync\,
      R => '0'
    );
\hor_counter_buff[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[0]\,
      O => hor_counter_buff(0)
    );
\hor_counter_buff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[0]\,
      I1 => \hor_counter_buff_reg_n_0_[1]\,
      O => plusOp(1)
    );
\hor_counter_buff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[1]\,
      I1 => \hor_counter_buff_reg_n_0_[0]\,
      I2 => \hor_counter_buff_reg_n_0_[2]\,
      O => \hor_counter_buff[2]_i_1_n_0\
    );
\hor_counter_buff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[2]\,
      I1 => \hor_counter_buff_reg_n_0_[0]\,
      I2 => \hor_counter_buff_reg_n_0_[1]\,
      I3 => \hor_counter_buff_reg_n_0_[3]\,
      O => \hor_counter_buff[3]_i_1_n_0\
    );
\hor_counter_buff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[3]\,
      I1 => \hor_counter_buff_reg_n_0_[1]\,
      I2 => \hor_counter_buff_reg_n_0_[0]\,
      I3 => \hor_counter_buff_reg_n_0_[2]\,
      I4 => \hor_counter_buff_reg_n_0_[4]\,
      O => \hor_counter_buff[4]_i_1_n_0\
    );
\hor_counter_buff[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[2]\,
      I1 => \hor_counter_buff_reg_n_0_[0]\,
      I2 => \hor_counter_buff_reg_n_0_[1]\,
      I3 => \hor_counter_buff_reg_n_0_[3]\,
      I4 => \hor_counter_buff_reg_n_0_[4]\,
      I5 => \hor_counter_buff_reg_n_0_[5]\,
      O => plusOp(5)
    );
\hor_counter_buff[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[4]\,
      I1 => \hor_counter_buff_reg_n_0_[5]\,
      I2 => \hor_counter_buff[9]_i_4_n_0\,
      I3 => \hor_counter_buff_reg_n_0_[6]\,
      O => plusOp(6)
    );
\hor_counter_buff[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \hor_counter_buff[9]_i_4_n_0\,
      I1 => \hor_counter_buff_reg_n_0_[6]\,
      I2 => \hor_counter_buff_reg_n_0_[5]\,
      I3 => \hor_counter_buff_reg_n_0_[4]\,
      I4 => \hor_counter_buff_reg_n_0_[7]\,
      O => plusOp(7)
    );
\hor_counter_buff[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \hor_counter_buff[9]_i_4_n_0\,
      I1 => \hor_counter_buff_reg_n_0_[4]\,
      I2 => \hor_counter_buff_reg_n_0_[5]\,
      I3 => \hor_counter_buff_reg_n_0_[6]\,
      I4 => \hor_counter_buff_reg_n_0_[7]\,
      I5 => \hor_counter_buff_reg_n_0_[8]\,
      O => plusOp(8)
    );
\hor_counter_buff[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \hor_counter_buff[9]_i_3_n_0\,
      I1 => \hor_counter_buff[9]_i_4_n_0\,
      I2 => \hor_counter_buff_reg_n_0_[7]\,
      I3 => \hor_counter_buff_reg_n_0_[8]\,
      O => \hor_counter_buff[9]_i_1_n_0\
    );
\hor_counter_buff[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \hor_counter_buff[9]_i_4_n_0\,
      I1 => \hor_counter_buff_reg_n_0_[8]\,
      I2 => \hor_counter_buff_reg_n_0_[7]\,
      I3 => \hor_counter_buff[9]_i_5_n_0\,
      I4 => \hor_counter_buff_reg_n_0_[9]\,
      O => plusOp(9)
    );
\hor_counter_buff[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB7FFFFFFFFFFEEF"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[9]\,
      I1 => hor_state(0),
      I2 => \hor_counter_buff_reg_n_0_[5]\,
      I3 => hor_state(1),
      I4 => \hor_counter_buff_reg_n_0_[4]\,
      I5 => \hor_counter_buff_reg_n_0_[6]\,
      O => \hor_counter_buff[9]_i_3_n_0\
    );
\hor_counter_buff[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[2]\,
      I1 => \hor_counter_buff_reg_n_0_[0]\,
      I2 => \hor_counter_buff_reg_n_0_[1]\,
      I3 => \hor_counter_buff_reg_n_0_[3]\,
      O => \hor_counter_buff[9]_i_4_n_0\
    );
\hor_counter_buff[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \hor_counter_buff_reg_n_0_[6]\,
      I1 => \hor_counter_buff_reg_n_0_[5]\,
      I2 => \hor_counter_buff_reg_n_0_[4]\,
      O => \hor_counter_buff[9]_i_5_n_0\
    );
\hor_counter_buff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => hor_counter_buff(0),
      Q => \hor_counter_buff_reg_n_0_[0]\,
      R => '0'
    );
\hor_counter_buff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => plusOp(1),
      Q => \hor_counter_buff_reg_n_0_[1]\,
      R => \hor_counter_buff[9]_i_1_n_0\
    );
\hor_counter_buff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => \hor_counter_buff[2]_i_1_n_0\,
      Q => \hor_counter_buff_reg_n_0_[2]\,
      R => \hor_counter_buff[9]_i_1_n_0\
    );
\hor_counter_buff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => \hor_counter_buff[3]_i_1_n_0\,
      Q => \hor_counter_buff_reg_n_0_[3]\,
      R => \hor_counter_buff[9]_i_1_n_0\
    );
\hor_counter_buff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => \hor_counter_buff[4]_i_1_n_0\,
      Q => \hor_counter_buff_reg_n_0_[4]\,
      R => \hor_counter_buff[9]_i_1_n_0\
    );
\hor_counter_buff_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => plusOp(5),
      Q => \hor_counter_buff_reg_n_0_[5]\,
      R => \hor_counter_buff[9]_i_1_n_0\
    );
\hor_counter_buff_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => plusOp(6),
      Q => \hor_counter_buff_reg_n_0_[6]\,
      R => \hor_counter_buff[9]_i_1_n_0\
    );
\hor_counter_buff_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => plusOp(7),
      Q => \hor_counter_buff_reg_n_0_[7]\,
      R => \hor_counter_buff[9]_i_1_n_0\
    );
\hor_counter_buff_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => plusOp(8),
      Q => \hor_counter_buff_reg_n_0_[8]\,
      R => \hor_counter_buff[9]_i_1_n_0\
    );
\hor_counter_buff_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_hor,
      CE => '1',
      D => plusOp(9),
      Q => \hor_counter_buff_reg_n_0_[9]\,
      R => \hor_counter_buff[9]_i_1_n_0\
    );
\pixel_pointer[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => \^vga_h_display\,
      I1 => \^vga_v_display\,
      I2 => \i_reg[0]\,
      I3 => pixel_pointer_reg(0),
      O => p_0_in(0)
    );
v_display_buff_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[0]\,
      I1 => \ver_counter_buff[0]_i_3_n_0\,
      I2 => \ver_counter_buff_reg_n_0_[6]\,
      I3 => \ver_counter_buff[0]_i_2_n_0\,
      I4 => v_display_buff,
      I5 => \^vga_v_display\,
      O => v_display_buff_i_1_n_0
    );
v_display_buff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => v_display_buff_i_1_n_0,
      Q => \^vga_v_display\,
      R => '0'
    );
v_sync_buff_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000800"
    )
        port map (
      I0 => v_sync_buff_i_2_n_0,
      I1 => ver_state(0),
      I2 => \ver_counter_buff_reg_n_0_[3]\,
      I3 => ver_state(1),
      I4 => v_sync_buff_i_3_n_0,
      I5 => \^v_sync\,
      O => v_sync_buff_i_1_n_0
    );
v_sync_buff_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[4]\,
      I1 => \ver_counter_buff_reg_n_0_[2]\,
      I2 => \ver_counter_buff_reg_n_0_[0]\,
      I3 => \ver_counter_buff_reg_n_0_[6]\,
      O => v_sync_buff_i_2_n_0
    );
v_sync_buff_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[9]\,
      I1 => \ver_counter_buff_reg_n_0_[5]\,
      I2 => \ver_counter_buff_reg_n_0_[1]\,
      I3 => \ver_counter_buff_reg_n_0_[7]\,
      I4 => \ver_counter_buff_reg_n_0_[8]\,
      O => v_sync_buff_i_3_n_0
    );
v_sync_buff_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => v_sync_buff_i_1_n_0,
      Q => \^v_sync\,
      R => '0'
    );
\ver_counter_buff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F0E"
    )
        port map (
      I0 => \ver_counter_buff[0]_i_2_n_0\,
      I1 => \ver_counter_buff_reg_n_0_[6]\,
      I2 => \ver_counter_buff_reg_n_0_[0]\,
      I3 => \ver_counter_buff[0]_i_3_n_0\,
      I4 => ver_state(1),
      O => ver_counter_buff(0)
    );
\ver_counter_buff[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[8]\,
      I1 => \ver_counter_buff_reg_n_0_[7]\,
      I2 => \ver_counter_buff_reg_n_0_[1]\,
      I3 => \ver_counter_buff_reg_n_0_[5]\,
      I4 => \ver_counter_buff_reg_n_0_[9]\,
      I5 => ver_state(0),
      O => \ver_counter_buff[0]_i_2_n_0\
    );
\ver_counter_buff[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[3]\,
      I1 => \ver_counter_buff_reg_n_0_[2]\,
      I2 => \ver_counter_buff_reg_n_0_[4]\,
      O => \ver_counter_buff[0]_i_3_n_0\
    );
\ver_counter_buff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[0]\,
      I1 => \ver_counter_buff_reg_n_0_[1]\,
      O => \ver_counter_buff[1]_i_1_n_0\
    );
\ver_counter_buff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[1]\,
      I1 => \ver_counter_buff_reg_n_0_[0]\,
      I2 => \ver_counter_buff_reg_n_0_[2]\,
      O => \ver_counter_buff[2]_i_1_n_0\
    );
\ver_counter_buff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[0]\,
      I1 => \ver_counter_buff_reg_n_0_[1]\,
      I2 => \ver_counter_buff_reg_n_0_[2]\,
      I3 => \ver_counter_buff_reg_n_0_[3]\,
      O => \ver_counter_buff[3]_i_1_n_0\
    );
\ver_counter_buff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[2]\,
      I1 => \ver_counter_buff_reg_n_0_[3]\,
      I2 => \ver_counter_buff_reg_n_0_[0]\,
      I3 => \ver_counter_buff_reg_n_0_[1]\,
      I4 => \ver_counter_buff_reg_n_0_[4]\,
      O => \ver_counter_buff[4]_i_1_n_0\
    );
\ver_counter_buff[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[3]\,
      I1 => \ver_counter_buff_reg_n_0_[2]\,
      I2 => \ver_counter_buff_reg_n_0_[4]\,
      I3 => \ver_counter_buff_reg_n_0_[0]\,
      I4 => \ver_counter_buff_reg_n_0_[1]\,
      I5 => \ver_counter_buff_reg_n_0_[5]\,
      O => \ver_counter_buff[5]_i_1_n_0\
    );
\ver_counter_buff[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFF20000000"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[5]\,
      I1 => \ver_counter_buff[9]_i_5_n_0\,
      I2 => \ver_counter_buff_reg_n_0_[4]\,
      I3 => \ver_counter_buff_reg_n_0_[2]\,
      I4 => \ver_counter_buff_reg_n_0_[3]\,
      I5 => \ver_counter_buff_reg_n_0_[6]\,
      O => \ver_counter_buff[6]_i_1_n_0\
    );
\ver_counter_buff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[6]\,
      I1 => \ver_counter_buff[9]_i_8_n_0\,
      I2 => \ver_counter_buff_reg_n_0_[7]\,
      O => \ver_counter_buff[7]_i_1_n_0\
    );
\ver_counter_buff[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \ver_counter_buff[9]_i_8_n_0\,
      I1 => \ver_counter_buff_reg_n_0_[6]\,
      I2 => \ver_counter_buff_reg_n_0_[7]\,
      I3 => \ver_counter_buff_reg_n_0_[8]\,
      O => \ver_counter_buff[8]_i_1_n_0\
    );
\ver_counter_buff[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000111"
    )
        port map (
      I0 => \ver_counter_buff[9]_i_3_n_0\,
      I1 => \ver_counter_buff[9]_i_4_n_0\,
      I2 => \ver_counter_buff[9]_i_5_n_0\,
      I3 => \ver_counter_buff_reg_n_0_[6]\,
      I4 => \ver_counter_buff[9]_i_6_n_0\,
      I5 => \ver_counter_buff[9]_i_7_n_0\,
      O => \ver_counter_buff[9]_i_1_n_0\
    );
\ver_counter_buff[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \ver_counter_buff[9]_i_8_n_0\,
      I1 => \ver_counter_buff_reg_n_0_[8]\,
      I2 => \ver_counter_buff_reg_n_0_[7]\,
      I3 => \ver_counter_buff_reg_n_0_[6]\,
      I4 => \ver_counter_buff_reg_n_0_[9]\,
      O => \ver_counter_buff[9]_i_2_n_0\
    );
\ver_counter_buff[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEFFFFFEEEF"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[9]\,
      I1 => \ver_counter_buff_reg_n_0_[5]\,
      I2 => \ver_counter_buff_reg_n_0_[3]\,
      I3 => ver_state(0),
      I4 => \ver_counter_buff_reg_n_0_[6]\,
      I5 => \ver_counter_buff_reg_n_0_[8]\,
      O => \ver_counter_buff[9]_i_3_n_0\
    );
\ver_counter_buff[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FCFFFF55FF00"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[7]\,
      I1 => \ver_counter_buff_reg_n_0_[4]\,
      I2 => \ver_counter_buff_reg_n_0_[2]\,
      I3 => ver_state(1),
      I4 => \ver_counter_buff_reg_n_0_[6]\,
      I5 => \ver_counter_buff_reg_n_0_[0]\,
      O => \ver_counter_buff[9]_i_4_n_0\
    );
\ver_counter_buff[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[0]\,
      I1 => \ver_counter_buff_reg_n_0_[1]\,
      O => \ver_counter_buff[9]_i_5_n_0\
    );
\ver_counter_buff[9]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[8]\,
      I1 => \ver_counter_buff_reg_n_0_[7]\,
      I2 => \ver_counter_buff_reg_n_0_[1]\,
      O => \ver_counter_buff[9]_i_6_n_0\
    );
\ver_counter_buff[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFFFF15FF55FF55"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[0]\,
      I1 => \ver_counter_buff_reg_n_0_[2]\,
      I2 => \ver_counter_buff_reg_n_0_[4]\,
      I3 => \ver_counter_buff_reg_n_0_[6]\,
      I4 => ver_state(0),
      I5 => \ver_counter_buff_reg_n_0_[3]\,
      O => \ver_counter_buff[9]_i_7_n_0\
    );
\ver_counter_buff[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ver_counter_buff_reg_n_0_[3]\,
      I1 => \ver_counter_buff_reg_n_0_[2]\,
      I2 => \ver_counter_buff_reg_n_0_[4]\,
      I3 => \ver_counter_buff_reg_n_0_[0]\,
      I4 => \ver_counter_buff_reg_n_0_[1]\,
      I5 => \ver_counter_buff_reg_n_0_[5]\,
      O => \ver_counter_buff[9]_i_8_n_0\
    );
\ver_counter_buff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => ver_counter_buff(0),
      Q => \ver_counter_buff_reg_n_0_[0]\,
      R => '0'
    );
\ver_counter_buff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => \ver_counter_buff[1]_i_1_n_0\,
      Q => \ver_counter_buff_reg_n_0_[1]\,
      R => \ver_counter_buff[9]_i_1_n_0\
    );
\ver_counter_buff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => \ver_counter_buff[2]_i_1_n_0\,
      Q => \ver_counter_buff_reg_n_0_[2]\,
      R => \ver_counter_buff[9]_i_1_n_0\
    );
\ver_counter_buff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => \ver_counter_buff[3]_i_1_n_0\,
      Q => \ver_counter_buff_reg_n_0_[3]\,
      R => \ver_counter_buff[9]_i_1_n_0\
    );
\ver_counter_buff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => \ver_counter_buff[4]_i_1_n_0\,
      Q => \ver_counter_buff_reg_n_0_[4]\,
      R => \ver_counter_buff[9]_i_1_n_0\
    );
\ver_counter_buff_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => \ver_counter_buff[5]_i_1_n_0\,
      Q => \ver_counter_buff_reg_n_0_[5]\,
      R => \ver_counter_buff[9]_i_1_n_0\
    );
\ver_counter_buff_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => \ver_counter_buff[6]_i_1_n_0\,
      Q => \ver_counter_buff_reg_n_0_[6]\,
      R => \ver_counter_buff[9]_i_1_n_0\
    );
\ver_counter_buff_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => \ver_counter_buff[7]_i_1_n_0\,
      Q => \ver_counter_buff_reg_n_0_[7]\,
      R => \ver_counter_buff[9]_i_1_n_0\
    );
\ver_counter_buff_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => \ver_counter_buff[8]_i_1_n_0\,
      Q => \ver_counter_buff_reg_n_0_[8]\,
      R => \ver_counter_buff[9]_i_1_n_0\
    );
\ver_counter_buff_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_ver_reg_n_0,
      CE => '1',
      D => \ver_counter_buff[9]_i_2_n_0\,
      Q => \ver_counter_buff_reg_n_0_[9]\,
      R => \ver_counter_buff[9]_i_1_n_0\
    );
\vga_b[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^vga_h_display\,
      I1 => \^vga_v_display\,
      O => \word_pointer_reg[2]__0\
    );
vga_synch_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^vga_v_display\,
      I1 => \^vga_h_display\,
      O => vga_h_v_display
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_config_controller is
  port (
    s_axi_config_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_config_awready : out STD_LOGIC;
    s_axi_config_wready : out STD_LOGIC;
    s_axi_config_bvalid : out STD_LOGIC;
    s_axi_config_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_config_rvalid : out STD_LOGIC;
    s_axi_config_arready : out STD_LOGIC;
    \axi_fb_di_address_buff_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_config_rdata_reg[30]_0\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \s_axi_config_rdata_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_fb_di_address_buff_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_fb_di_address_buff_reg[14]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_fb_di_address_buff_reg[18]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_fb_di_address_buff_reg[22]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_fb_di_address_buff_reg[26]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_fb_di_address_buff_reg[30]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_aresetn_0 : in STD_LOGIC;
    s_axi_config_awprot : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_aclk : in STD_LOGIC;
    s_axi_config_arprot : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_config_awvalid : in STD_LOGIC;
    s_axi_config_wvalid : in STD_LOGIC;
    s_axi_config_bready : in STD_LOGIC;
    s_axi_config_arvalid : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    s_axi_config_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 24 downto 0 );
    error_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_config_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_config_controller is
  signal \FSM_onehot_state_axir[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_axir[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_axir[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_axir[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_axir_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_axir_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_sequential_state_axiw[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_axiw[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_axiw[1]_i_2_n_0\ : STD_LOGIC;
  signal address_reg_buff : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \address_reg_buff_reg_n_0_[31]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal s_axi_config_araddr_buff : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s_axi_config_araddr_buff_1 : STD_LOGIC;
  signal \s_axi_config_araddr_buff_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_axi_config_araddr_buff_reg_n_0_[1]\ : STD_LOGIC;
  signal s_axi_config_arprot_buff : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^s_axi_config_arready\ : STD_LOGIC;
  signal s_axi_config_arready_buff : STD_LOGIC;
  attribute RTL_KEEP of s_axi_config_arready_buff : signal is "yes";
  signal s_axi_config_arready_buff_i_1_n_0 : STD_LOGIC;
  signal s_axi_config_awaddr_buff : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s_axi_config_awaddr_buff_0 : STD_LOGIC;
  signal \s_axi_config_awaddr_buff_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_axi_config_awaddr_buff_reg_n_0_[1]\ : STD_LOGIC;
  signal s_axi_config_awprot_buff : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^s_axi_config_awready\ : STD_LOGIC;
  signal s_axi_config_awready_buff_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_config_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axi_config_bresp_buff[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_config_bvalid\ : STD_LOGIC;
  signal s_axi_config_bvalid_buff_i_1_n_0 : STD_LOGIC;
  signal \s_axi_config_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_config_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_config_rdata_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_config_rdata_reg[30]_0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \s_axi_config_rresp_buff1__0\ : STD_LOGIC;
  signal \^s_axi_config_rvalid\ : STD_LOGIC;
  signal s_axi_config_rvalid_buff : STD_LOGIC;
  attribute RTL_KEEP of s_axi_config_rvalid_buff : signal is "yes";
  signal s_axi_config_rvalid_buff_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_config_wready\ : STD_LOGIC;
  signal s_axi_config_wready_buff_i_1_n_0 : STD_LOGIC;
  signal start_reg_buff : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \start_reg_buff_reg_n_0_[10]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[11]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[12]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[13]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[14]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[15]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[16]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[17]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[18]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[19]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[1]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[20]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[21]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[22]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[23]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[24]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[25]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[26]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[27]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[28]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[29]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[2]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[30]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[31]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[3]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[4]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[5]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[6]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[7]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[8]\ : STD_LOGIC;
  signal \start_reg_buff_reg_n_0_[9]\ : STD_LOGIC;
  signal state_axiw : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of state_axiw : signal is "yes";
  signal state_axiw01_out : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_axir_reg[0]\ : label is "axir_s_write_address:001,axir_s_read_process:010,axir_s_read_data:100,";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_axir_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_axir_reg[1]\ : label is "axir_s_write_address:001,axir_s_read_process:010,axir_s_read_data:100,";
  attribute KEEP of \FSM_onehot_state_axir_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_axir_reg[2]\ : label is "axir_s_write_address:001,axir_s_read_process:010,axir_s_read_data:100,";
  attribute KEEP of \FSM_onehot_state_axir_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_axiw_reg[0]\ : label is "axiw_s_write_process:01,axiw_s_write_data:10,axiw_s_write_address:00,axiw_s_write_response:11";
  attribute KEEP of \FSM_sequential_state_axiw_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_axiw_reg[1]\ : label is "axiw_s_write_process:01,axiw_s_write_data:10,axiw_s_write_address:00,axiw_s_write_response:11";
  attribute KEEP of \FSM_sequential_state_axiw_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_fb_di_address_buff[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_axi_config_rdata[7]_i_1\ : label is "soft_lutpair14";
begin
  s_axi_config_arready <= \^s_axi_config_arready\;
  s_axi_config_awready <= \^s_axi_config_awready\;
  s_axi_config_bresp(0) <= \^s_axi_config_bresp\(0);
  s_axi_config_bvalid <= \^s_axi_config_bvalid\;
  \s_axi_config_rdata_reg[0]_0\(0) <= \^s_axi_config_rdata_reg[0]_0\(0);
  \s_axi_config_rdata_reg[30]_0\(30 downto 0) <= \^s_axi_config_rdata_reg[30]_0\(30 downto 0);
  s_axi_config_rvalid <= \^s_axi_config_rvalid\;
  s_axi_config_wready <= \^s_axi_config_wready\;
\FSM_onehot_state_axir[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCDDDDCCCCC888"
    )
        port map (
      I0 => \FSM_onehot_state_axir_reg_n_0_[1]\,
      I1 => s_axi_config_rvalid_buff,
      I2 => s_axi_config_rready,
      I3 => \^s_axi_config_rvalid\,
      I4 => s_axi_config_araddr_buff_1,
      I5 => s_axi_config_arready_buff,
      O => \FSM_onehot_state_axir[0]_i_1_n_0\
    );
\FSM_onehot_state_axir[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_config_arready_buff,
      I1 => \FSM_onehot_state_axir[1]_i_2_n_0\,
      I2 => \FSM_onehot_state_axir_reg_n_0_[1]\,
      O => \FSM_onehot_state_axir[1]_i_1_n_0\
    );
\FSM_onehot_state_axir[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => \FSM_onehot_state_axir_reg_n_0_[1]\,
      I1 => s_axi_config_rvalid_buff,
      I2 => s_axi_config_rready,
      I3 => \^s_axi_config_rvalid\,
      I4 => s_axi_config_araddr_buff_1,
      O => \FSM_onehot_state_axir[1]_i_2_n_0\
    );
\FSM_onehot_state_axir[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_axir_reg_n_0_[1]\,
      I1 => s_axi_config_rvalid_buff,
      I2 => s_axi_config_rready,
      I3 => \^s_axi_config_rvalid\,
      I4 => s_axi_config_araddr_buff_1,
      I5 => s_axi_config_rvalid_buff,
      O => \FSM_onehot_state_axir[2]_i_1_n_0\
    );
\FSM_onehot_state_axir_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_axir[0]_i_1_n_0\,
      Q => s_axi_config_arready_buff,
      S => axi_aresetn_0
    );
\FSM_onehot_state_axir_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_axir[1]_i_1_n_0\,
      Q => \FSM_onehot_state_axir_reg_n_0_[1]\,
      R => axi_aresetn_0
    );
\FSM_onehot_state_axir_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_axir[2]_i_1_n_0\,
      Q => s_axi_config_rvalid_buff,
      R => axi_aresetn_0
    );
\FSM_sequential_state_axiw[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4055FFFF40550000"
    )
        port map (
      I0 => state_axiw(0),
      I1 => \^s_axi_config_wready\,
      I2 => s_axi_config_wvalid,
      I3 => state_axiw(1),
      I4 => \FSM_sequential_state_axiw[1]_i_2_n_0\,
      I5 => state_axiw(0),
      O => \FSM_sequential_state_axiw[0]_i_1_n_0\
    );
\FSM_sequential_state_axiw[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6222FFFF62220000"
    )
        port map (
      I0 => state_axiw(0),
      I1 => state_axiw(1),
      I2 => s_axi_config_wvalid,
      I3 => \^s_axi_config_wready\,
      I4 => \FSM_sequential_state_axiw[1]_i_2_n_0\,
      I5 => state_axiw(1),
      O => \FSM_sequential_state_axiw[1]_i_1_n_0\
    );
\FSM_sequential_state_axiw[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCA0FCA0FCA0FCA"
    )
        port map (
      I0 => state_axiw01_out,
      I1 => p_0_in,
      I2 => state_axiw(1),
      I3 => state_axiw(0),
      I4 => \^s_axi_config_bvalid\,
      I5 => s_axi_config_bready,
      O => \FSM_sequential_state_axiw[1]_i_2_n_0\
    );
\FSM_sequential_state_axiw[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_config_awready\,
      I1 => s_axi_config_awvalid,
      O => state_axiw01_out
    );
\FSM_sequential_state_axiw_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_axiw[0]_i_1_n_0\,
      Q => state_axiw(0),
      R => axi_aresetn_0
    );
\FSM_sequential_state_axiw_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_axiw[1]_i_1_n_0\,
      Q => state_axiw(1),
      R => axi_aresetn_0
    );
\address_reg_buff[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => state_axiw(0),
      I1 => p_0_in,
      I2 => s_axi_config_awaddr_buff(3),
      I3 => s_axi_config_awaddr_buff(2),
      I4 => s_axi_config_wstrb(1),
      I5 => state_axiw(1),
      O => address_reg_buff(15)
    );
\address_reg_buff[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => state_axiw(0),
      I1 => p_0_in,
      I2 => s_axi_config_awaddr_buff(3),
      I3 => s_axi_config_awaddr_buff(2),
      I4 => s_axi_config_wstrb(2),
      I5 => state_axiw(1),
      O => address_reg_buff(23)
    );
\address_reg_buff[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => state_axiw(0),
      I1 => p_0_in,
      I2 => s_axi_config_awaddr_buff(3),
      I3 => s_axi_config_awaddr_buff(2),
      I4 => s_axi_config_wstrb(3),
      I5 => state_axiw(1),
      O => address_reg_buff(31)
    );
\address_reg_buff[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_config_wready\,
      I1 => s_axi_config_wvalid,
      O => p_0_in
    );
\address_reg_buff[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => state_axiw(0),
      I1 => p_0_in,
      I2 => s_axi_config_awaddr_buff(3),
      I3 => s_axi_config_awaddr_buff(2),
      I4 => s_axi_config_wstrb(0),
      I5 => state_axiw(1),
      O => address_reg_buff(7)
    );
\address_reg_buff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(7),
      D => s_axi_config_wdata(0),
      Q => \^s_axi_config_rdata_reg[30]_0\(0),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(15),
      D => s_axi_config_wdata(10),
      Q => \^s_axi_config_rdata_reg[30]_0\(10),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(15),
      D => s_axi_config_wdata(11),
      Q => \^s_axi_config_rdata_reg[30]_0\(11),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(15),
      D => s_axi_config_wdata(12),
      Q => \^s_axi_config_rdata_reg[30]_0\(12),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(15),
      D => s_axi_config_wdata(13),
      Q => \^s_axi_config_rdata_reg[30]_0\(13),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(15),
      D => s_axi_config_wdata(14),
      Q => \^s_axi_config_rdata_reg[30]_0\(14),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(15),
      D => s_axi_config_wdata(15),
      Q => \^s_axi_config_rdata_reg[30]_0\(15),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(23),
      D => s_axi_config_wdata(16),
      Q => \^s_axi_config_rdata_reg[30]_0\(16),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(23),
      D => s_axi_config_wdata(17),
      Q => \^s_axi_config_rdata_reg[30]_0\(17),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(23),
      D => s_axi_config_wdata(18),
      Q => \^s_axi_config_rdata_reg[30]_0\(18),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(23),
      D => s_axi_config_wdata(19),
      Q => \^s_axi_config_rdata_reg[30]_0\(19),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(7),
      D => s_axi_config_wdata(1),
      Q => \^s_axi_config_rdata_reg[30]_0\(1),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(23),
      D => s_axi_config_wdata(20),
      Q => \^s_axi_config_rdata_reg[30]_0\(20),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(23),
      D => s_axi_config_wdata(21),
      Q => \^s_axi_config_rdata_reg[30]_0\(21),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(23),
      D => s_axi_config_wdata(22),
      Q => \^s_axi_config_rdata_reg[30]_0\(22),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(23),
      D => s_axi_config_wdata(23),
      Q => \^s_axi_config_rdata_reg[30]_0\(23),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(31),
      D => s_axi_config_wdata(24),
      Q => \^s_axi_config_rdata_reg[30]_0\(24),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(31),
      D => s_axi_config_wdata(25),
      Q => \^s_axi_config_rdata_reg[30]_0\(25),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(31),
      D => s_axi_config_wdata(26),
      Q => \^s_axi_config_rdata_reg[30]_0\(26),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(31),
      D => s_axi_config_wdata(27),
      Q => \^s_axi_config_rdata_reg[30]_0\(27),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(31),
      D => s_axi_config_wdata(28),
      Q => \^s_axi_config_rdata_reg[30]_0\(28),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(31),
      D => s_axi_config_wdata(29),
      Q => \^s_axi_config_rdata_reg[30]_0\(29),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(7),
      D => s_axi_config_wdata(2),
      Q => \^s_axi_config_rdata_reg[30]_0\(2),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(31),
      D => s_axi_config_wdata(30),
      Q => \^s_axi_config_rdata_reg[30]_0\(30),
      S => axi_aresetn_0
    );
\address_reg_buff_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(31),
      D => s_axi_config_wdata(31),
      Q => \address_reg_buff_reg_n_0_[31]\,
      R => axi_aresetn_0
    );
\address_reg_buff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(7),
      D => s_axi_config_wdata(3),
      Q => \^s_axi_config_rdata_reg[30]_0\(3),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(7),
      D => s_axi_config_wdata(4),
      Q => \^s_axi_config_rdata_reg[30]_0\(4),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(7),
      D => s_axi_config_wdata(5),
      Q => \^s_axi_config_rdata_reg[30]_0\(5),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(7),
      D => s_axi_config_wdata(6),
      Q => \^s_axi_config_rdata_reg[30]_0\(6),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(7),
      D => s_axi_config_wdata(7),
      Q => \^s_axi_config_rdata_reg[30]_0\(7),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(15),
      D => s_axi_config_wdata(8),
      Q => \^s_axi_config_rdata_reg[30]_0\(8),
      R => axi_aresetn_0
    );
\address_reg_buff_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => address_reg_buff(15),
      D => s_axi_config_wdata(9),
      Q => \^s_axi_config_rdata_reg[30]_0\(9),
      R => axi_aresetn_0
    );
\axi_fb_di_address_buff0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(14),
      I1 => Q(7),
      O => \axi_fb_di_address_buff_reg[14]\(3)
    );
\axi_fb_di_address_buff0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(13),
      I1 => Q(6),
      O => \axi_fb_di_address_buff_reg[14]\(2)
    );
\axi_fb_di_address_buff0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(12),
      I1 => Q(5),
      O => \axi_fb_di_address_buff_reg[14]\(1)
    );
\axi_fb_di_address_buff0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(11),
      I1 => Q(4),
      O => \axi_fb_di_address_buff_reg[14]\(0)
    );
\axi_fb_di_address_buff0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(18),
      I1 => Q(11),
      O => \axi_fb_di_address_buff_reg[18]\(3)
    );
\axi_fb_di_address_buff0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(17),
      I1 => Q(10),
      O => \axi_fb_di_address_buff_reg[18]\(2)
    );
\axi_fb_di_address_buff0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(16),
      I1 => Q(9),
      O => \axi_fb_di_address_buff_reg[18]\(1)
    );
\axi_fb_di_address_buff0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(15),
      I1 => Q(8),
      O => \axi_fb_di_address_buff_reg[18]\(0)
    );
\axi_fb_di_address_buff0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(22),
      I1 => Q(15),
      O => \axi_fb_di_address_buff_reg[22]\(3)
    );
\axi_fb_di_address_buff0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(21),
      I1 => Q(14),
      O => \axi_fb_di_address_buff_reg[22]\(2)
    );
\axi_fb_di_address_buff0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(20),
      I1 => Q(13),
      O => \axi_fb_di_address_buff_reg[22]\(1)
    );
\axi_fb_di_address_buff0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(19),
      I1 => Q(12),
      O => \axi_fb_di_address_buff_reg[22]\(0)
    );
\axi_fb_di_address_buff0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(26),
      I1 => Q(19),
      O => \axi_fb_di_address_buff_reg[26]\(3)
    );
\axi_fb_di_address_buff0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(25),
      I1 => Q(18),
      O => \axi_fb_di_address_buff_reg[26]\(2)
    );
\axi_fb_di_address_buff0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(24),
      I1 => Q(17),
      O => \axi_fb_di_address_buff_reg[26]\(1)
    );
\axi_fb_di_address_buff0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(23),
      I1 => Q(16),
      O => \axi_fb_di_address_buff_reg[26]\(0)
    );
\axi_fb_di_address_buff0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(30),
      I1 => Q(23),
      O => \axi_fb_di_address_buff_reg[30]\(3)
    );
\axi_fb_di_address_buff0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(29),
      I1 => Q(22),
      O => \axi_fb_di_address_buff_reg[30]\(2)
    );
\axi_fb_di_address_buff0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(28),
      I1 => Q(21),
      O => \axi_fb_di_address_buff_reg[30]\(1)
    );
\axi_fb_di_address_buff0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(27),
      I1 => Q(20),
      O => \axi_fb_di_address_buff_reg[30]\(0)
    );
\axi_fb_di_address_buff0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \address_reg_buff_reg_n_0_[31]\,
      I1 => Q(24),
      O => \axi_fb_di_address_buff_reg[31]\(0)
    );
axi_fb_di_address_buff0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(10),
      I1 => Q(3),
      O => S(3)
    );
axi_fb_di_address_buff0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(9),
      I1 => Q(2),
      O => S(2)
    );
axi_fb_di_address_buff0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(8),
      I1 => Q(1),
      O => S(1)
    );
axi_fb_di_address_buff0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(7),
      I1 => Q(0),
      O => S(0)
    );
\axi_fb_di_address_buff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(7),
      I1 => Q(0),
      O => \axi_fb_di_address_buff_reg[7]\(0)
    );
\s_axi_config_araddr_buff[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_config_arready_buff,
      I1 => s_axi_config_arvalid,
      I2 => \^s_axi_config_arready\,
      O => s_axi_config_araddr_buff_1
    );
\s_axi_config_araddr_buff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => s_axi_config_araddr_buff_1,
      D => s_axi_config_araddr(0),
      Q => \s_axi_config_araddr_buff_reg_n_0_[0]\,
      R => axi_aresetn_0
    );
\s_axi_config_araddr_buff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => s_axi_config_araddr_buff_1,
      D => s_axi_config_araddr(1),
      Q => \s_axi_config_araddr_buff_reg_n_0_[1]\,
      R => axi_aresetn_0
    );
\s_axi_config_araddr_buff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => s_axi_config_araddr_buff_1,
      D => s_axi_config_araddr(2),
      Q => s_axi_config_araddr_buff(2),
      R => axi_aresetn_0
    );
\s_axi_config_araddr_buff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => s_axi_config_araddr_buff_1,
      D => s_axi_config_araddr(3),
      Q => s_axi_config_araddr_buff(3),
      R => axi_aresetn_0
    );
\s_axi_config_arprot_buff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => s_axi_config_araddr_buff_1,
      D => s_axi_config_arprot(0),
      Q => s_axi_config_arprot_buff(2),
      R => axi_aresetn_0
    );
s_axi_config_arready_buff_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E00"
    )
        port map (
      I0 => \^s_axi_config_arready\,
      I1 => s_axi_config_arready_buff,
      I2 => s_axi_config_arvalid,
      I3 => axi_aresetn,
      O => s_axi_config_arready_buff_i_1_n_0
    );
s_axi_config_arready_buff_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => s_axi_config_arready_buff_i_1_n_0,
      Q => \^s_axi_config_arready\,
      R => '0'
    );
\s_axi_config_awaddr_buff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_config_awvalid,
      I1 => \^s_axi_config_awready\,
      I2 => state_axiw(0),
      I3 => state_axiw(1),
      O => s_axi_config_awaddr_buff_0
    );
\s_axi_config_awaddr_buff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => s_axi_config_awaddr_buff_0,
      D => s_axi_config_awaddr(0),
      Q => \s_axi_config_awaddr_buff_reg_n_0_[0]\,
      R => axi_aresetn_0
    );
\s_axi_config_awaddr_buff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => s_axi_config_awaddr_buff_0,
      D => s_axi_config_awaddr(1),
      Q => \s_axi_config_awaddr_buff_reg_n_0_[1]\,
      R => axi_aresetn_0
    );
\s_axi_config_awaddr_buff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => s_axi_config_awaddr_buff_0,
      D => s_axi_config_awaddr(2),
      Q => s_axi_config_awaddr_buff(2),
      R => axi_aresetn_0
    );
\s_axi_config_awaddr_buff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => s_axi_config_awaddr_buff_0,
      D => s_axi_config_awaddr(3),
      Q => s_axi_config_awaddr_buff(3),
      R => axi_aresetn_0
    );
\s_axi_config_awprot_buff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => s_axi_config_awaddr_buff_0,
      D => s_axi_config_awprot(0),
      Q => s_axi_config_awprot_buff(2),
      R => axi_aresetn_0
    );
s_axi_config_awready_buff_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD03"
    )
        port map (
      I0 => s_axi_config_awvalid,
      I1 => state_axiw(0),
      I2 => state_axiw(1),
      I3 => \^s_axi_config_awready\,
      O => s_axi_config_awready_buff_i_1_n_0
    );
s_axi_config_awready_buff_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => s_axi_config_awready_buff_i_1_n_0,
      Q => \^s_axi_config_awready\,
      R => axi_aresetn_0
    );
\s_axi_config_bresp_buff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF0000FE00"
    )
        port map (
      I0 => \s_axi_config_awaddr_buff_reg_n_0_[1]\,
      I1 => \s_axi_config_awaddr_buff_reg_n_0_[0]\,
      I2 => s_axi_config_awprot_buff(2),
      I3 => state_axiw(0),
      I4 => state_axiw(1),
      I5 => \^s_axi_config_bresp\(0),
      O => \s_axi_config_bresp_buff[1]_i_1_n_0\
    );
\s_axi_config_bresp_buff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \s_axi_config_bresp_buff[1]_i_1_n_0\,
      Q => \^s_axi_config_bresp\(0),
      R => axi_aresetn_0
    );
s_axi_config_bvalid_buff_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FC0"
    )
        port map (
      I0 => s_axi_config_bready,
      I1 => state_axiw(0),
      I2 => state_axiw(1),
      I3 => \^s_axi_config_bvalid\,
      O => s_axi_config_bvalid_buff_i_1_n_0
    );
s_axi_config_bvalid_buff_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => s_axi_config_bvalid_buff_i_1_n_0,
      Q => \^s_axi_config_bvalid\,
      R => axi_aresetn_0
    );
\s_axi_config_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(0),
      I1 => s_axi_config_araddr_buff(3),
      I2 => s_axi_config_araddr_buff(2),
      I3 => error_reg(0),
      I4 => \^s_axi_config_rdata_reg[0]_0\(0),
      O => \s_axi_config_rdata[0]_i_1_n_0\
    );
\s_axi_config_rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(10),
      I1 => \start_reg_buff_reg_n_0_[10]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[10]_i_1_n_0\
    );
\s_axi_config_rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(11),
      I1 => \start_reg_buff_reg_n_0_[11]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[11]_i_1_n_0\
    );
\s_axi_config_rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(12),
      I1 => \start_reg_buff_reg_n_0_[12]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[12]_i_1_n_0\
    );
\s_axi_config_rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(13),
      I1 => \start_reg_buff_reg_n_0_[13]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[13]_i_1_n_0\
    );
\s_axi_config_rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(14),
      I1 => \start_reg_buff_reg_n_0_[14]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[14]_i_1_n_0\
    );
\s_axi_config_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(15),
      I1 => \start_reg_buff_reg_n_0_[15]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[15]_i_1_n_0\
    );
\s_axi_config_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(16),
      I1 => \start_reg_buff_reg_n_0_[16]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[16]_i_1_n_0\
    );
\s_axi_config_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(17),
      I1 => \start_reg_buff_reg_n_0_[17]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[17]_i_1_n_0\
    );
\s_axi_config_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(18),
      I1 => \start_reg_buff_reg_n_0_[18]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[18]_i_1_n_0\
    );
\s_axi_config_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(19),
      I1 => \start_reg_buff_reg_n_0_[19]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[19]_i_1_n_0\
    );
\s_axi_config_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3E0E3202"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(1),
      I1 => s_axi_config_araddr_buff(3),
      I2 => s_axi_config_araddr_buff(2),
      I3 => error_reg(1),
      I4 => \start_reg_buff_reg_n_0_[1]\,
      O => \s_axi_config_rdata[1]_i_1_n_0\
    );
\s_axi_config_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(20),
      I1 => \start_reg_buff_reg_n_0_[20]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[20]_i_1_n_0\
    );
\s_axi_config_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(21),
      I1 => \start_reg_buff_reg_n_0_[21]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[21]_i_1_n_0\
    );
\s_axi_config_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(22),
      I1 => \start_reg_buff_reg_n_0_[22]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[22]_i_1_n_0\
    );
\s_axi_config_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(23),
      I1 => \start_reg_buff_reg_n_0_[23]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[23]_i_1_n_0\
    );
\s_axi_config_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(24),
      I1 => \start_reg_buff_reg_n_0_[24]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[24]_i_1_n_0\
    );
\s_axi_config_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(25),
      I1 => \start_reg_buff_reg_n_0_[25]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[25]_i_1_n_0\
    );
\s_axi_config_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(26),
      I1 => \start_reg_buff_reg_n_0_[26]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[26]_i_1_n_0\
    );
\s_axi_config_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(27),
      I1 => \start_reg_buff_reg_n_0_[27]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[27]_i_1_n_0\
    );
\s_axi_config_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(28),
      I1 => \start_reg_buff_reg_n_0_[28]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[28]_i_1_n_0\
    );
\s_axi_config_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(29),
      I1 => \start_reg_buff_reg_n_0_[29]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[29]_i_1_n_0\
    );
\s_axi_config_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(2),
      I1 => \start_reg_buff_reg_n_0_[2]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[2]_i_1_n_0\
    );
\s_axi_config_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(30),
      I1 => \start_reg_buff_reg_n_0_[30]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[30]_i_1_n_0\
    );
\s_axi_config_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \address_reg_buff_reg_n_0_[31]\,
      I1 => \start_reg_buff_reg_n_0_[31]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[31]_i_1_n_0\
    );
\s_axi_config_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(3),
      I1 => \start_reg_buff_reg_n_0_[3]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[3]_i_1_n_0\
    );
\s_axi_config_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(4),
      I1 => \start_reg_buff_reg_n_0_[4]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[4]_i_1_n_0\
    );
\s_axi_config_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(5),
      I1 => \start_reg_buff_reg_n_0_[5]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[5]_i_1_n_0\
    );
\s_axi_config_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(6),
      I1 => \start_reg_buff_reg_n_0_[6]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[6]_i_1_n_0\
    );
\s_axi_config_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(7),
      I1 => \start_reg_buff_reg_n_0_[7]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[7]_i_1_n_0\
    );
\s_axi_config_rdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(8),
      I1 => \start_reg_buff_reg_n_0_[8]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[8]_i_1_n_0\
    );
\s_axi_config_rdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => \^s_axi_config_rdata_reg[30]_0\(9),
      I1 => \start_reg_buff_reg_n_0_[9]\,
      I2 => s_axi_config_araddr_buff(3),
      I3 => s_axi_config_araddr_buff(2),
      O => \s_axi_config_rdata[9]_i_1_n_0\
    );
\s_axi_config_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[0]_i_1_n_0\,
      Q => s_axi_config_rdata(0),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[10]_i_1_n_0\,
      Q => s_axi_config_rdata(10),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[11]_i_1_n_0\,
      Q => s_axi_config_rdata(11),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[12]_i_1_n_0\,
      Q => s_axi_config_rdata(12),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[13]_i_1_n_0\,
      Q => s_axi_config_rdata(13),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[14]_i_1_n_0\,
      Q => s_axi_config_rdata(14),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[15]_i_1_n_0\,
      Q => s_axi_config_rdata(15),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[16]_i_1_n_0\,
      Q => s_axi_config_rdata(16),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[17]_i_1_n_0\,
      Q => s_axi_config_rdata(17),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[18]_i_1_n_0\,
      Q => s_axi_config_rdata(18),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[19]_i_1_n_0\,
      Q => s_axi_config_rdata(19),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[1]_i_1_n_0\,
      Q => s_axi_config_rdata(1),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[20]_i_1_n_0\,
      Q => s_axi_config_rdata(20),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[21]_i_1_n_0\,
      Q => s_axi_config_rdata(21),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[22]_i_1_n_0\,
      Q => s_axi_config_rdata(22),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[23]_i_1_n_0\,
      Q => s_axi_config_rdata(23),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[24]_i_1_n_0\,
      Q => s_axi_config_rdata(24),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[25]_i_1_n_0\,
      Q => s_axi_config_rdata(25),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[26]_i_1_n_0\,
      Q => s_axi_config_rdata(26),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[27]_i_1_n_0\,
      Q => s_axi_config_rdata(27),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[28]_i_1_n_0\,
      Q => s_axi_config_rdata(28),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[29]_i_1_n_0\,
      Q => s_axi_config_rdata(29),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[2]_i_1_n_0\,
      Q => s_axi_config_rdata(2),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[30]_i_1_n_0\,
      Q => s_axi_config_rdata(30),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[31]_i_1_n_0\,
      Q => s_axi_config_rdata(31),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[3]_i_1_n_0\,
      Q => s_axi_config_rdata(3),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[4]_i_1_n_0\,
      Q => s_axi_config_rdata(4),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[5]_i_1_n_0\,
      Q => s_axi_config_rdata(5),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[6]_i_1_n_0\,
      Q => s_axi_config_rdata(6),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[7]_i_1_n_0\,
      Q => s_axi_config_rdata(7),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[8]_i_1_n_0\,
      Q => s_axi_config_rdata(8),
      R => axi_aresetn_0
    );
\s_axi_config_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rdata[9]_i_1_n_0\,
      Q => s_axi_config_rdata(9),
      R => axi_aresetn_0
    );
s_axi_config_rresp_buff1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \s_axi_config_araddr_buff_reg_n_0_[1]\,
      I1 => \s_axi_config_araddr_buff_reg_n_0_[0]\,
      I2 => s_axi_config_arprot_buff(2),
      O => \s_axi_config_rresp_buff1__0\
    );
\s_axi_config_rresp_buff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \FSM_onehot_state_axir_reg_n_0_[1]\,
      D => \s_axi_config_rresp_buff1__0\,
      Q => s_axi_config_rresp(0),
      R => axi_aresetn_0
    );
s_axi_config_rvalid_buff_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6E00"
    )
        port map (
      I0 => \^s_axi_config_rvalid\,
      I1 => s_axi_config_rvalid_buff,
      I2 => s_axi_config_rready,
      I3 => axi_aresetn,
      O => s_axi_config_rvalid_buff_i_1_n_0
    );
s_axi_config_rvalid_buff_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => s_axi_config_rvalid_buff_i_1_n_0,
      Q => \^s_axi_config_rvalid\,
      R => '0'
    );
s_axi_config_wready_buff_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F70C"
    )
        port map (
      I0 => s_axi_config_wvalid,
      I1 => state_axiw(1),
      I2 => state_axiw(0),
      I3 => \^s_axi_config_wready\,
      O => s_axi_config_wready_buff_i_1_n_0
    );
s_axi_config_wready_buff_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => s_axi_config_wready_buff_i_1_n_0,
      Q => \^s_axi_config_wready\,
      R => axi_aresetn_0
    );
\start_reg_buff[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => state_axiw(0),
      I1 => s_axi_config_wvalid,
      I2 => \^s_axi_config_wready\,
      I3 => s_axi_config_awaddr_buff(2),
      I4 => s_axi_config_awaddr_buff(3),
      I5 => state_axiw(1),
      O => start_reg_buff(31)
    );
\start_reg_buff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(0),
      Q => \^s_axi_config_rdata_reg[0]_0\(0),
      R => axi_aresetn_0
    );
\start_reg_buff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(10),
      Q => \start_reg_buff_reg_n_0_[10]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(11),
      Q => \start_reg_buff_reg_n_0_[11]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(12),
      Q => \start_reg_buff_reg_n_0_[12]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(13),
      Q => \start_reg_buff_reg_n_0_[13]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(14),
      Q => \start_reg_buff_reg_n_0_[14]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(15),
      Q => \start_reg_buff_reg_n_0_[15]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(16),
      Q => \start_reg_buff_reg_n_0_[16]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(17),
      Q => \start_reg_buff_reg_n_0_[17]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(18),
      Q => \start_reg_buff_reg_n_0_[18]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(19),
      Q => \start_reg_buff_reg_n_0_[19]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(1),
      Q => \start_reg_buff_reg_n_0_[1]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(20),
      Q => \start_reg_buff_reg_n_0_[20]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(21),
      Q => \start_reg_buff_reg_n_0_[21]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(22),
      Q => \start_reg_buff_reg_n_0_[22]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(23),
      Q => \start_reg_buff_reg_n_0_[23]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(24),
      Q => \start_reg_buff_reg_n_0_[24]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(25),
      Q => \start_reg_buff_reg_n_0_[25]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(26),
      Q => \start_reg_buff_reg_n_0_[26]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(27),
      Q => \start_reg_buff_reg_n_0_[27]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(28),
      Q => \start_reg_buff_reg_n_0_[28]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(29),
      Q => \start_reg_buff_reg_n_0_[29]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(2),
      Q => \start_reg_buff_reg_n_0_[2]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(30),
      Q => \start_reg_buff_reg_n_0_[30]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(31),
      Q => \start_reg_buff_reg_n_0_[31]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(3),
      Q => \start_reg_buff_reg_n_0_[3]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(4),
      Q => \start_reg_buff_reg_n_0_[4]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(5),
      Q => \start_reg_buff_reg_n_0_[5]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(6),
      Q => \start_reg_buff_reg_n_0_[6]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(7),
      Q => \start_reg_buff_reg_n_0_[7]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(8),
      Q => \start_reg_buff_reg_n_0_[8]\,
      R => axi_aresetn_0
    );
\start_reg_buff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => start_reg_buff(31),
      D => s_axi_config_wdata(9),
      Q => \start_reg_buff_reg_n_0_[9]\,
      R => axi_aresetn_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_fb_controller is
  port (
    m_axi_fb_rready : out STD_LOGIC;
    m_axi_fb_arvalid : out STD_LOGIC;
    axi_fb_ready : out STD_LOGIC;
    blk_wea_reg : out STD_LOGIC;
    m_axi_fb_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    error_reg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_aresetn : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    m_axi_fb_rlast : in STD_LOGIC;
    m_axi_fb_rvalid : in STD_LOGIC;
    m_axi_fb_arready : in STD_LOGIC;
    axi_fb_enable : in STD_LOGIC;
    m_axi_fb_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_fb_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_fb_controller is
  signal \FSM_sequential_m_axi_fb_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_m_axi_fb_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_m_axi_fb_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_m_axi_fb_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_m_axi_fb_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_m_axi_fb_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_m_axi_fb_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \^axi_fb_ready\ : STD_LOGIC;
  signal \^blk_wea_reg\ : STD_LOGIC;
  signal \^error_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \error_reg_buff[0]_i_1_n_0\ : STD_LOGIC;
  signal \error_reg_buff[1]_i_1_n_0\ : STD_LOGIC;
  signal m_axi_fb_araddr_buff : STD_LOGIC;
  signal \^m_axi_fb_arvalid\ : STD_LOGIC;
  signal m_axi_fb_arvalid_buff_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_fb_rready\ : STD_LOGIC;
  signal m_axi_fb_rready_buff_i_1_n_0 : STD_LOGIC;
  signal \m_axi_fb_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \m_axi_fb_state__0\ : signal is "yes";
  signal ready_buff_i_1_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_m_axi_fb_state_reg[0]\ : label is "m_axi_fb_s_ar:001,m_axi_fb_s_r:010,m_axi_fb_s_err:101,m_axi_fb_s_ready:011,m_axi_fb_s_enable:000,iSTATE:100";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_m_axi_fb_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_m_axi_fb_state_reg[1]\ : label is "m_axi_fb_s_ar:001,m_axi_fb_s_r:010,m_axi_fb_s_err:101,m_axi_fb_s_ready:011,m_axi_fb_s_enable:000,iSTATE:100";
  attribute KEEP of \FSM_sequential_m_axi_fb_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_m_axi_fb_state_reg[2]\ : label is "m_axi_fb_s_ar:001,m_axi_fb_s_r:010,m_axi_fb_s_err:101,m_axi_fb_s_ready:011,m_axi_fb_s_enable:000,iSTATE:100";
  attribute KEEP of \FSM_sequential_m_axi_fb_state_reg[2]\ : label is "yes";
begin
  axi_fb_ready <= \^axi_fb_ready\;
  blk_wea_reg <= \^blk_wea_reg\;
  error_reg(1 downto 0) <= \^error_reg\(1 downto 0);
  m_axi_fb_arvalid <= \^m_axi_fb_arvalid\;
  m_axi_fb_rready <= \^m_axi_fb_rready\;
\FSM_sequential_m_axi_fb_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \m_axi_fb_state__0\(0),
      I1 => \m_axi_fb_state__0\(2),
      I2 => \FSM_sequential_m_axi_fb_state[2]_i_3_n_0\,
      I3 => \m_axi_fb_state__0\(0),
      O => \FSM_sequential_m_axi_fb_state[0]_i_1_n_0\
    );
\FSM_sequential_m_axi_fb_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0310FFFF03100000"
    )
        port map (
      I0 => \FSM_sequential_m_axi_fb_state[1]_i_2_n_0\,
      I1 => \m_axi_fb_state__0\(2),
      I2 => \m_axi_fb_state__0\(1),
      I3 => \m_axi_fb_state__0\(0),
      I4 => \FSM_sequential_m_axi_fb_state[2]_i_3_n_0\,
      I5 => \m_axi_fb_state__0\(1),
      O => \FSM_sequential_m_axi_fb_state[1]_i_1_n_0\
    );
\FSM_sequential_m_axi_fb_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axi_fb_rresp(0),
      I1 => m_axi_fb_rresp(1),
      O => \FSM_sequential_m_axi_fb_state[1]_i_2_n_0\
    );
\FSM_sequential_m_axi_fb_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_sequential_m_axi_fb_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_m_axi_fb_state[2]_i_3_n_0\,
      I2 => \m_axi_fb_state__0\(2),
      O => \FSM_sequential_m_axi_fb_state[2]_i_1_n_0\
    );
\FSM_sequential_m_axi_fb_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000EE00000000"
    )
        port map (
      I0 => m_axi_fb_rresp(0),
      I1 => m_axi_fb_rresp(1),
      I2 => axi_fb_enable,
      I3 => \m_axi_fb_state__0\(2),
      I4 => \m_axi_fb_state__0\(0),
      I5 => \m_axi_fb_state__0\(1),
      O => \FSM_sequential_m_axi_fb_state[2]_i_2_n_0\
    );
\FSM_sequential_m_axi_fb_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00F04F40"
    )
        port map (
      I0 => \^blk_wea_reg\,
      I1 => m_axi_fb_rlast,
      I2 => \m_axi_fb_state__0\(1),
      I3 => axi_fb_enable,
      I4 => \m_axi_fb_state__0\(0),
      I5 => \FSM_sequential_m_axi_fb_state[2]_i_4_n_0\,
      O => \FSM_sequential_m_axi_fb_state[2]_i_3_n_0\
    );
\FSM_sequential_m_axi_fb_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFAF74000000"
    )
        port map (
      I0 => \m_axi_fb_state__0\(1),
      I1 => axi_fb_enable,
      I2 => \m_axi_fb_state__0\(0),
      I3 => m_axi_fb_arready,
      I4 => \^m_axi_fb_arvalid\,
      I5 => \m_axi_fb_state__0\(2),
      O => \FSM_sequential_m_axi_fb_state[2]_i_4_n_0\
    );
\FSM_sequential_m_axi_fb_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_sequential_m_axi_fb_state[0]_i_1_n_0\,
      Q => \m_axi_fb_state__0\(0),
      R => axi_aresetn
    );
\FSM_sequential_m_axi_fb_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_sequential_m_axi_fb_state[1]_i_1_n_0\,
      Q => \m_axi_fb_state__0\(1),
      R => axi_aresetn
    );
\FSM_sequential_m_axi_fb_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_sequential_m_axi_fb_state[2]_i_1_n_0\,
      Q => \m_axi_fb_state__0\(2),
      R => axi_aresetn
    );
\error_reg_buff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => m_axi_fb_rresp(0),
      I1 => \m_axi_fb_state__0\(2),
      I2 => \m_axi_fb_state__0\(0),
      I3 => \m_axi_fb_state__0\(1),
      I4 => \^error_reg\(0),
      O => \error_reg_buff[0]_i_1_n_0\
    );
\error_reg_buff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => m_axi_fb_rresp(1),
      I1 => \m_axi_fb_state__0\(2),
      I2 => \m_axi_fb_state__0\(0),
      I3 => \m_axi_fb_state__0\(1),
      I4 => \^error_reg\(1),
      O => \error_reg_buff[1]_i_1_n_0\
    );
\error_reg_buff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \error_reg_buff[0]_i_1_n_0\,
      Q => \^error_reg\(0),
      R => axi_aresetn
    );
\error_reg_buff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \error_reg_buff[1]_i_1_n_0\,
      Q => \^error_reg\(1),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \m_axi_fb_state__0\(1),
      I1 => axi_fb_enable,
      I2 => \m_axi_fb_state__0\(2),
      I3 => \m_axi_fb_state__0\(0),
      O => m_axi_fb_araddr_buff
    );
\m_axi_fb_araddr_buff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(0),
      Q => m_axi_fb_araddr(0),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(10),
      Q => m_axi_fb_araddr(10),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(11),
      Q => m_axi_fb_araddr(11),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(12),
      Q => m_axi_fb_araddr(12),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(13),
      Q => m_axi_fb_araddr(13),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(14),
      Q => m_axi_fb_araddr(14),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(15),
      Q => m_axi_fb_araddr(15),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(16),
      Q => m_axi_fb_araddr(16),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(17),
      Q => m_axi_fb_araddr(17),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(18),
      Q => m_axi_fb_araddr(18),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(19),
      Q => m_axi_fb_araddr(19),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(1),
      Q => m_axi_fb_araddr(1),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(20),
      Q => m_axi_fb_araddr(20),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(21),
      Q => m_axi_fb_araddr(21),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(22),
      Q => m_axi_fb_araddr(22),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(23),
      Q => m_axi_fb_araddr(23),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(24),
      Q => m_axi_fb_araddr(24),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(25),
      Q => m_axi_fb_araddr(25),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(26),
      Q => m_axi_fb_araddr(26),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(27),
      Q => m_axi_fb_araddr(27),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(28),
      Q => m_axi_fb_araddr(28),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(29),
      Q => m_axi_fb_araddr(29),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(2),
      Q => m_axi_fb_araddr(2),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(30),
      Q => m_axi_fb_araddr(30),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(31),
      Q => m_axi_fb_araddr(31),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(3),
      Q => m_axi_fb_araddr(3),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(4),
      Q => m_axi_fb_araddr(4),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(5),
      Q => m_axi_fb_araddr(5),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(6),
      Q => m_axi_fb_araddr(6),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(7),
      Q => m_axi_fb_araddr(7),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(8),
      Q => m_axi_fb_araddr(8),
      R => axi_aresetn
    );
\m_axi_fb_araddr_buff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => m_axi_fb_araddr_buff,
      D => D(9),
      Q => m_axi_fb_araddr(9),
      R => axi_aresetn
    );
m_axi_fb_arvalid_buff_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7000C"
    )
        port map (
      I0 => m_axi_fb_arready,
      I1 => \m_axi_fb_state__0\(0),
      I2 => \m_axi_fb_state__0\(1),
      I3 => \m_axi_fb_state__0\(2),
      I4 => \^m_axi_fb_arvalid\,
      O => m_axi_fb_arvalid_buff_i_1_n_0
    );
m_axi_fb_arvalid_buff_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => m_axi_fb_arvalid_buff_i_1_n_0,
      Q => \^m_axi_fb_arvalid\,
      R => axi_aresetn
    );
m_axi_fb_rready_buff_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCC7FCCCCCCCC"
    )
        port map (
      I0 => m_axi_fb_rlast,
      I1 => \^m_axi_fb_rready\,
      I2 => m_axi_fb_rvalid,
      I3 => \m_axi_fb_state__0\(2),
      I4 => \m_axi_fb_state__0\(0),
      I5 => \m_axi_fb_state__0\(1),
      O => m_axi_fb_rready_buff_i_1_n_0
    );
m_axi_fb_rready_buff_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => m_axi_fb_rready_buff_i_1_n_0,
      Q => \^m_axi_fb_rready\,
      R => axi_aresetn
    );
ready_buff_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE08"
    )
        port map (
      I0 => \m_axi_fb_state__0\(1),
      I1 => \m_axi_fb_state__0\(0),
      I2 => \m_axi_fb_state__0\(2),
      I3 => \^axi_fb_ready\,
      O => ready_buff_i_1_n_0
    );
ready_buff_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => ready_buff_i_1_n_0,
      Q => \^axi_fb_ready\,
      R => axi_aresetn
    );
\word_pointer[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^m_axi_fb_rready\,
      I1 => m_axi_fb_rvalid,
      O => \^blk_wea_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper is
  port (
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_73\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_75\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15 downto 14) => B"10",
      ADDRARDADDR(13 downto 6) => addrb(7 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15 downto 14) => B"10",
      ADDRBWRADDR(13 downto 6) => addra(7 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => dina(31 downto 0),
      DIBDI(31 downto 0) => dina(63 downto 32),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => doutb(31 downto 0),
      DOBDO(31 downto 0) => doutb(63 downto 32),
      DOPADOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68\,
      DOPADOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69\,
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71\,
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72\,
      DOPBDOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_73\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => wea(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"11111111"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
  port (
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      dina(63 downto 0) => dina(63 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
  port (
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      dina(63 downto 0) => dina(63 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
  port (
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
begin
\valid.cstr\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      dina(63 downto 0) => dina(63 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth is
  port (
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      dina(63 downto 0) => dina(63 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "Estimated Power for IP     :     6.966099 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_pixel.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 256;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 256;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 64;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 64;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 256;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 256;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 64;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 64;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "zynq";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  douta(63) <= \<const0>\;
  douta(62) <= \<const0>\;
  douta(61) <= \<const0>\;
  douta(60) <= \<const0>\;
  douta(59) <= \<const0>\;
  douta(58) <= \<const0>\;
  douta(57) <= \<const0>\;
  douta(56) <= \<const0>\;
  douta(55) <= \<const0>\;
  douta(54) <= \<const0>\;
  douta(53) <= \<const0>\;
  douta(52) <= \<const0>\;
  douta(51) <= \<const0>\;
  douta(50) <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      dina(63 downto 0) => dina(63 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_pixel is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_pixel : entity is "blk_mem_gen_pixel,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_pixel : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_pixel : entity is "blk_mem_gen_v8_4_1,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_pixel;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_pixel is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 8;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 8;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     6.966099 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 1;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "blk_mem_gen_pixel.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 256;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 256;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 64;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 64;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 256;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 256;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 64;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 64;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER";
  attribute x_interface_info of clkb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
  attribute x_interface_parameter of clkb : signal is "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of addrb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR";
  attribute x_interface_info of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of doutb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT";
  attribute x_interface_info of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(63 downto 0) => dina(63 downto 0),
      dinb(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      douta(63 downto 0) => NLW_U0_douta_UNCONNECTED(63 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(7 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(7 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(7 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(7 downto 0),
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_controller is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \counter_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    vga_synch_reg_0 : out STD_LOGIC;
    \word_pointer_reg[0]__0_0\ : out STD_LOGIC;
    axi_fb_enable : out STD_LOGIC;
    pixel_pointer_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 24 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_axi_fb_araddr_buff_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_aclk : in STD_LOGIC;
    vga_h_v_display : in STD_LOGIC;
    v_display_buff_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \address_reg_buff_reg[30]\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \address_reg_buff_reg[14]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \address_reg_buff_reg[18]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \address_reg_buff_reg[22]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \address_reg_buff_reg[26]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \address_reg_buff_reg[30]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \address_reg_buff_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_fb_ready : in STD_LOGIC;
    m_axi_fb_rready_buff_reg : in STD_LOGIC;
    m_axi_fb_rvalid : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    m_axi_fb_rready_buff_reg_0 : in STD_LOGIC;
    vga_v_display : in STD_LOGIC;
    vga_h_display : in STD_LOGIC;
    h_display_buff_reg : in STD_LOGIC;
    \B[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \start_reg_buff_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    h_display_buff_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \address_reg_buff_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_controller is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_gat_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gat_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_vga_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_vga_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_vga_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_vga_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_vga_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal addra : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal addrb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_fb_di_address_buff : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__0_n_0\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__0_n_1\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__0_n_2\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__0_n_3\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__0_n_4\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__0_n_5\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__0_n_6\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__0_n_7\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__1_n_0\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__1_n_1\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__1_n_2\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__1_n_3\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__1_n_4\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__1_n_5\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__1_n_6\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__1_n_7\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__2_n_0\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__2_n_1\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__2_n_2\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__2_n_3\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__2_n_4\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__2_n_5\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__2_n_6\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__2_n_7\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__3_n_0\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__3_n_1\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__3_n_2\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__3_n_3\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__3_n_4\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__3_n_5\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__3_n_6\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__3_n_7\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__4_n_0\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__4_n_1\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__4_n_2\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__4_n_3\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__4_n_4\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__4_n_5\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__4_n_6\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__4_n_7\ : STD_LOGIC;
  signal \axi_fb_di_address_buff0_carry__5_n_7\ : STD_LOGIC;
  signal axi_fb_di_address_buff0_carry_n_0 : STD_LOGIC;
  signal axi_fb_di_address_buff0_carry_n_1 : STD_LOGIC;
  signal axi_fb_di_address_buff0_carry_n_2 : STD_LOGIC;
  signal axi_fb_di_address_buff0_carry_n_3 : STD_LOGIC;
  signal axi_fb_di_address_buff0_carry_n_4 : STD_LOGIC;
  signal axi_fb_di_address_buff0_carry_n_5 : STD_LOGIC;
  signal axi_fb_di_address_buff0_carry_n_6 : STD_LOGIC;
  signal \^axi_fb_enable\ : STD_LOGIC;
  signal axi_fb_enable_buff_i_1_n_0 : STD_LOGIC;
  signal \blk_addra[7]_i_1_n_0\ : STD_LOGIC;
  signal blk_doutb : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal blk_wea_i_1_n_0 : STD_LOGIC;
  signal \^counter_reg[0]\ : STD_LOGIC;
  signal dina : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \gat_address_base[10]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[11]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[12]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[13]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[14]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[15]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[16]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[17]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[18]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[19]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[20]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[21]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[22]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[23]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[24]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[25]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[26]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[27]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[28]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[29]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[30]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[31]_i_2_n_0\ : STD_LOGIC;
  signal \gat_address_base[7]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[8]_i_1_n_0\ : STD_LOGIC;
  signal \gat_address_base[9]_i_1_n_0\ : STD_LOGIC;
  signal gat_enable_i_1_n_0 : STD_LOGIC;
  signal gat_enable_reg_n_0 : STD_LOGIC;
  signal gat_ready_i_1_n_0 : STD_LOGIC;
  signal gat_ready_reg_n_0 : STD_LOGIC;
  signal gat_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of gat_state : signal is "yes";
  signal \i_reg_n_0_[1]\ : STD_LOGIC;
  signal in8 : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \^out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  signal p_0_in_1 : STD_LOGIC;
  signal pixel_buffer : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[40]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[41]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[42]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[43]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[48]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[49]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[50]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[51]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[52]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[53]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[54]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[55]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[56]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[57]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[58]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[59]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \pixel_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal \^pixel_pointer_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal plusOp_carry_i_1_n_0 : STD_LOGIC;
  signal plusOp_carry_i_2_n_0 : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \vga_b[0]_i_1_n_0\ : STD_LOGIC;
  signal \vga_b[0]_i_2_n_0\ : STD_LOGIC;
  signal \vga_b[1]_i_1_n_0\ : STD_LOGIC;
  signal \vga_b[1]_i_2_n_0\ : STD_LOGIC;
  signal \vga_b[2]_i_1_n_0\ : STD_LOGIC;
  signal \vga_b[2]_i_2_n_0\ : STD_LOGIC;
  signal \vga_b[3]_i_3_n_0\ : STD_LOGIC;
  signal \vga_b[3]_i_5_n_0\ : STD_LOGIC;
  signal \vga_g[0]_i_1_n_0\ : STD_LOGIC;
  signal \vga_g[0]_i_2_n_0\ : STD_LOGIC;
  signal \vga_g[1]_i_1_n_0\ : STD_LOGIC;
  signal \vga_g[1]_i_2_n_0\ : STD_LOGIC;
  signal \vga_g[2]_i_1_n_0\ : STD_LOGIC;
  signal \vga_g[2]_i_2_n_0\ : STD_LOGIC;
  signal \vga_g[3]_i_1_n_0\ : STD_LOGIC;
  signal \vga_g[3]_i_2_n_0\ : STD_LOGIC;
  signal \vga_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \vga_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \vga_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \vga_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \vga_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \vga_r[2]_i_2_n_0\ : STD_LOGIC;
  signal \vga_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \vga_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \^vga_synch_reg_0\ : STD_LOGIC;
  signal vga_synch_reg_n_0 : STD_LOGIC;
  signal wea : STD_LOGIC;
  signal word_pointer : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \word_pointer[0]__0_i_1_n_0\ : STD_LOGIC;
  signal \word_pointer[1]__0_i_1_n_0\ : STD_LOGIC;
  signal \word_pointer[2]__0_i_1_n_0\ : STD_LOGIC;
  signal \word_pointer[3]__0_i_1_n_0\ : STD_LOGIC;
  signal \word_pointer[3]__0_i_2_n_0\ : STD_LOGIC;
  signal \word_pointer[4]__0_i_1_n_0\ : STD_LOGIC;
  signal \word_pointer[4]__0_i_2_n_0\ : STD_LOGIC;
  signal \word_pointer[5]__0_i_1_n_0\ : STD_LOGIC;
  signal \word_pointer[5]_i_2_n_0\ : STD_LOGIC;
  signal \word_pointer[6]__0_i_1_n_0\ : STD_LOGIC;
  signal \word_pointer[7]__0_i_1_n_0\ : STD_LOGIC;
  signal \word_pointer[7]_i_4_n_0\ : STD_LOGIC;
  signal word_pointer_0 : STD_LOGIC;
  signal \^word_pointer_reg[0]__0_0\ : STD_LOGIC;
  signal \word_pointer_reg[0]__0_n_0\ : STD_LOGIC;
  signal \word_pointer_reg[1]__0_n_0\ : STD_LOGIC;
  signal \word_pointer_reg[2]__0_n_0\ : STD_LOGIC;
  signal \word_pointer_reg[3]__0_n_0\ : STD_LOGIC;
  signal \word_pointer_reg[4]__0_n_0\ : STD_LOGIC;
  signal \word_pointer_reg[5]__0_n_0\ : STD_LOGIC;
  signal \word_pointer_reg[6]__0_n_0\ : STD_LOGIC;
  signal \word_pointer_reg[7]__0_n_0\ : STD_LOGIC;
  signal \word_pointer_reg_n_0_[0]\ : STD_LOGIC;
  signal \word_pointer_reg_n_0_[1]\ : STD_LOGIC;
  signal \word_pointer_reg_n_0_[2]\ : STD_LOGIC;
  signal \word_pointer_reg_n_0_[3]\ : STD_LOGIC;
  signal \word_pointer_reg_n_0_[4]\ : STD_LOGIC;
  signal \word_pointer_reg_n_0_[5]\ : STD_LOGIC;
  signal \word_pointer_reg_n_0_[6]\ : STD_LOGIC;
  signal \word_pointer_reg_n_0_[7]\ : STD_LOGIC;
  signal NLW_axi_fb_di_address_buff0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_axi_fb_di_address_buff0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axi_fb_di_address_buff0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gat_state_reg[0]\ : label is "s_gat_axi_fb:01,s_gat_ready:10,s_gat_enable:00,iSTATE:11";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_gat_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gat_state_reg[1]\ : label is "s_gat_axi_fb:01,s_gat_ready:10,s_gat_enable:00,iSTATE:11";
  attribute KEEP of \FSM_sequential_gat_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_vga_state_reg[0]\ : label is "s_vga_print:10,s_vga_synch_h:11,s_vga_synch_v_h:00,s_vga_gat:01";
  attribute KEEP of \FSM_sequential_vga_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_vga_state_reg[1]\ : label is "s_vga_print:10,s_vga_synch_h:11,s_vga_synch_v_h:00,s_vga_gat:01";
  attribute KEEP of \FSM_sequential_vga_state_reg[1]\ : label is "yes";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blk_mem_gen_pixel_0 : label is "blk_mem_gen_pixel,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_gen_pixel_0 : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of blk_mem_gen_pixel_0 : label is "blk_mem_gen_v8_4_1,Vivado 2018.2";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \word_pointer[0]__0_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \word_pointer[4]__0_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \word_pointer[5]__0_i_1\ : label is "soft_lutpair12";
begin
  D(0) <= \^d\(0);
  E(0) <= \^e\(0);
  Q(24 downto 0) <= \^q\(24 downto 0);
  axi_fb_enable <= \^axi_fb_enable\;
  \counter_reg[0]\ <= \^counter_reg[0]\;
  \out\(1 downto 0) <= \^out\(1 downto 0);
  pixel_pointer_reg(0) <= \^pixel_pointer_reg\(0);
  vga_synch_reg_0 <= \^vga_synch_reg_0\;
  \word_pointer_reg[0]__0_0\ <= \^word_pointer_reg[0]__0_0\;
DownSample_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DownSample
     port map (
      SR(0) => \^counter_reg[0]\,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      vga_synch_reg => \^vga_synch_reg_0\
    );
\FSM_sequential_gat_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0555DDDD00004444"
    )
        port map (
      I0 => gat_state(1),
      I1 => gat_enable_reg_n_0,
      I2 => \^axi_fb_enable\,
      I3 => axi_fb_ready,
      I4 => gat_state(0),
      I5 => gat_state(0),
      O => \FSM_sequential_gat_state[0]_i_1_n_0\
    );
\FSM_sequential_gat_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555999950000000"
    )
        port map (
      I0 => gat_state(1),
      I1 => gat_enable_reg_n_0,
      I2 => \^axi_fb_enable\,
      I3 => axi_fb_ready,
      I4 => gat_state(0),
      I5 => gat_state(1),
      O => \FSM_sequential_gat_state[1]_i_1_n_0\
    );
\FSM_sequential_gat_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_sequential_gat_state[0]_i_1_n_0\,
      Q => gat_state(0),
      R => \^counter_reg[0]\
    );
\FSM_sequential_gat_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_sequential_gat_state[1]_i_1_n_0\,
      Q => gat_state(1),
      R => \^counter_reg[0]\
    );
\FSM_sequential_vga_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^out\(0),
      I1 => \FSM_sequential_vga_state[1]_i_2_n_0\,
      I2 => \FSM_sequential_vga_state[0]_i_2_n_0\,
      I3 => axi_aresetn,
      O => \FSM_sequential_vga_state[0]_i_1_n_0\
    );
\FSM_sequential_vga_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0CF"
    )
        port map (
      I0 => vga_v_display,
      I1 => vga_synch_reg_n_0,
      I2 => \^out\(1),
      I3 => \^out\(0),
      O => \FSM_sequential_vga_state[0]_i_2_n_0\
    );
\FSM_sequential_vga_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2EE222E200000000"
    )
        port map (
      I0 => \^out\(1),
      I1 => \FSM_sequential_vga_state[1]_i_2_n_0\,
      I2 => \^out\(0),
      I3 => \^out\(1),
      I4 => vga_synch_reg_n_0,
      I5 => axi_aresetn,
      O => \FSM_sequential_vga_state[1]_i_1_n_0\
    );
\FSM_sequential_vga_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA3FFA30F030F030"
    )
        port map (
      I0 => vga_synch_reg_n_0,
      I1 => \FSM_sequential_vga_state[1]_i_3_n_0\,
      I2 => \^out\(0),
      I3 => \^out\(1),
      I4 => \start_reg_buff_reg[0]\(0),
      I5 => h_display_buff_reg,
      O => \FSM_sequential_vga_state[1]_i_2_n_0\
    );
\FSM_sequential_vga_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => gat_enable_reg_n_0,
      I1 => gat_ready_reg_n_0,
      O => \FSM_sequential_vga_state[1]_i_3_n_0\
    );
\FSM_sequential_vga_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => '1',
      D => \FSM_sequential_vga_state[0]_i_1_n_0\,
      Q => \^out\(0),
      R => '0'
    );
\FSM_sequential_vga_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => '1',
      D => \FSM_sequential_vga_state[1]_i_1_n_0\,
      Q => \^out\(1),
      R => '0'
    );
axi_fb_di_address_buff0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => axi_fb_di_address_buff0_carry_n_0,
      CO(2) => axi_fb_di_address_buff0_carry_n_1,
      CO(1) => axi_fb_di_address_buff0_carry_n_2,
      CO(0) => axi_fb_di_address_buff0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \address_reg_buff_reg[30]\(10 downto 7),
      O(3) => axi_fb_di_address_buff0_carry_n_4,
      O(2) => axi_fb_di_address_buff0_carry_n_5,
      O(1) => axi_fb_di_address_buff0_carry_n_6,
      O(0) => NLW_axi_fb_di_address_buff0_carry_O_UNCONNECTED(0),
      S(3 downto 0) => S(3 downto 0)
    );
\axi_fb_di_address_buff0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => axi_fb_di_address_buff0_carry_n_0,
      CO(3) => \axi_fb_di_address_buff0_carry__0_n_0\,
      CO(2) => \axi_fb_di_address_buff0_carry__0_n_1\,
      CO(1) => \axi_fb_di_address_buff0_carry__0_n_2\,
      CO(0) => \axi_fb_di_address_buff0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \address_reg_buff_reg[30]\(14 downto 11),
      O(3) => \axi_fb_di_address_buff0_carry__0_n_4\,
      O(2) => \axi_fb_di_address_buff0_carry__0_n_5\,
      O(1) => \axi_fb_di_address_buff0_carry__0_n_6\,
      O(0) => \axi_fb_di_address_buff0_carry__0_n_7\,
      S(3 downto 0) => \address_reg_buff_reg[14]\(3 downto 0)
    );
\axi_fb_di_address_buff0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_fb_di_address_buff0_carry__0_n_0\,
      CO(3) => \axi_fb_di_address_buff0_carry__1_n_0\,
      CO(2) => \axi_fb_di_address_buff0_carry__1_n_1\,
      CO(1) => \axi_fb_di_address_buff0_carry__1_n_2\,
      CO(0) => \axi_fb_di_address_buff0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \address_reg_buff_reg[30]\(18 downto 15),
      O(3) => \axi_fb_di_address_buff0_carry__1_n_4\,
      O(2) => \axi_fb_di_address_buff0_carry__1_n_5\,
      O(1) => \axi_fb_di_address_buff0_carry__1_n_6\,
      O(0) => \axi_fb_di_address_buff0_carry__1_n_7\,
      S(3 downto 0) => \address_reg_buff_reg[18]\(3 downto 0)
    );
\axi_fb_di_address_buff0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_fb_di_address_buff0_carry__1_n_0\,
      CO(3) => \axi_fb_di_address_buff0_carry__2_n_0\,
      CO(2) => \axi_fb_di_address_buff0_carry__2_n_1\,
      CO(1) => \axi_fb_di_address_buff0_carry__2_n_2\,
      CO(0) => \axi_fb_di_address_buff0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \address_reg_buff_reg[30]\(22 downto 19),
      O(3) => \axi_fb_di_address_buff0_carry__2_n_4\,
      O(2) => \axi_fb_di_address_buff0_carry__2_n_5\,
      O(1) => \axi_fb_di_address_buff0_carry__2_n_6\,
      O(0) => \axi_fb_di_address_buff0_carry__2_n_7\,
      S(3 downto 0) => \address_reg_buff_reg[22]\(3 downto 0)
    );
\axi_fb_di_address_buff0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_fb_di_address_buff0_carry__2_n_0\,
      CO(3) => \axi_fb_di_address_buff0_carry__3_n_0\,
      CO(2) => \axi_fb_di_address_buff0_carry__3_n_1\,
      CO(1) => \axi_fb_di_address_buff0_carry__3_n_2\,
      CO(0) => \axi_fb_di_address_buff0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \address_reg_buff_reg[30]\(26 downto 23),
      O(3) => \axi_fb_di_address_buff0_carry__3_n_4\,
      O(2) => \axi_fb_di_address_buff0_carry__3_n_5\,
      O(1) => \axi_fb_di_address_buff0_carry__3_n_6\,
      O(0) => \axi_fb_di_address_buff0_carry__3_n_7\,
      S(3 downto 0) => \address_reg_buff_reg[26]\(3 downto 0)
    );
\axi_fb_di_address_buff0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_fb_di_address_buff0_carry__3_n_0\,
      CO(3) => \axi_fb_di_address_buff0_carry__4_n_0\,
      CO(2) => \axi_fb_di_address_buff0_carry__4_n_1\,
      CO(1) => \axi_fb_di_address_buff0_carry__4_n_2\,
      CO(0) => \axi_fb_di_address_buff0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \address_reg_buff_reg[30]\(30 downto 27),
      O(3) => \axi_fb_di_address_buff0_carry__4_n_4\,
      O(2) => \axi_fb_di_address_buff0_carry__4_n_5\,
      O(1) => \axi_fb_di_address_buff0_carry__4_n_6\,
      O(0) => \axi_fb_di_address_buff0_carry__4_n_7\,
      S(3 downto 0) => \address_reg_buff_reg[30]_0\(3 downto 0)
    );
\axi_fb_di_address_buff0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \axi_fb_di_address_buff0_carry__4_n_0\,
      CO(3 downto 0) => \NLW_axi_fb_di_address_buff0_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_axi_fb_di_address_buff0_carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => \axi_fb_di_address_buff0_carry__5_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \address_reg_buff_reg[31]\(0)
    );
\axi_fb_di_address_buff[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => gat_enable_reg_n_0,
      I1 => gat_state(0),
      I2 => gat_state(1),
      O => axi_fb_di_address_buff
    );
\axi_fb_di_address_buff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \address_reg_buff_reg[30]\(0),
      Q => \m_axi_fb_araddr_buff_reg[31]\(0),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => axi_fb_di_address_buff0_carry_n_4,
      Q => \m_axi_fb_araddr_buff_reg[31]\(10),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__0_n_7\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(11),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__0_n_6\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(12),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__0_n_5\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(13),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__0_n_4\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(14),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__1_n_7\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(15),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__1_n_6\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(16),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__1_n_5\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(17),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__1_n_4\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(18),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__2_n_7\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(19),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \address_reg_buff_reg[30]\(1),
      Q => \m_axi_fb_araddr_buff_reg[31]\(1),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__2_n_6\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(20),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__2_n_5\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(21),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__2_n_4\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(22),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__3_n_7\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(23),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__3_n_6\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(24),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__3_n_5\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(25),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__3_n_4\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(26),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__4_n_7\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(27),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__4_n_6\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(28),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__4_n_5\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(29),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \address_reg_buff_reg[30]\(2),
      Q => \m_axi_fb_araddr_buff_reg[31]\(2),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__4_n_4\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(30),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \axi_fb_di_address_buff0_carry__5_n_7\,
      Q => \m_axi_fb_araddr_buff_reg[31]\(31),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \address_reg_buff_reg[30]\(3),
      Q => \m_axi_fb_araddr_buff_reg[31]\(3),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \address_reg_buff_reg[30]\(4),
      Q => \m_axi_fb_araddr_buff_reg[31]\(4),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \address_reg_buff_reg[30]\(5),
      Q => \m_axi_fb_araddr_buff_reg[31]\(5),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \address_reg_buff_reg[30]\(6),
      Q => \m_axi_fb_araddr_buff_reg[31]\(6),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => \address_reg_buff_reg[7]\(0),
      Q => \m_axi_fb_araddr_buff_reg[31]\(7),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => axi_fb_di_address_buff0_carry_n_6,
      Q => \m_axi_fb_araddr_buff_reg[31]\(8),
      R => \^counter_reg[0]\
    );
\axi_fb_di_address_buff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_fb_di_address_buff,
      D => axi_fb_di_address_buff0_carry_n_5,
      Q => \m_axi_fb_araddr_buff_reg[31]\(9),
      R => \^counter_reg[0]\
    );
axi_fb_enable_buff_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA2777AAAAAAAA"
    )
        port map (
      I0 => \^axi_fb_enable\,
      I1 => axi_fb_ready,
      I2 => m_axi_fb_rready_buff_reg,
      I3 => m_axi_fb_rvalid,
      I4 => gat_state(1),
      I5 => gat_state(0),
      O => axi_fb_enable_buff_i_1_n_0
    );
axi_fb_enable_buff_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_fb_enable_buff_i_1_n_0,
      Q => \^axi_fb_enable\,
      R => \^counter_reg[0]\
    );
\blk_addra[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080808"
    )
        port map (
      I0 => axi_aresetn,
      I1 => gat_state(0),
      I2 => gat_state(1),
      I3 => \^axi_fb_enable\,
      I4 => axi_fb_ready,
      I5 => m_axi_fb_rready_buff_reg_0,
      O => \blk_addra[7]_i_1_n_0\
    );
\blk_addra_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => \word_pointer_reg_n_0_[0]\,
      Q => addra(0),
      R => '0'
    );
\blk_addra_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => \word_pointer_reg_n_0_[1]\,
      Q => addra(1),
      R => '0'
    );
\blk_addra_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => \word_pointer_reg_n_0_[2]\,
      Q => addra(2),
      R => '0'
    );
\blk_addra_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => \word_pointer_reg_n_0_[3]\,
      Q => addra(3),
      R => '0'
    );
\blk_addra_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => \word_pointer_reg_n_0_[4]\,
      Q => addra(4),
      R => '0'
    );
\blk_addra_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => \word_pointer_reg_n_0_[5]\,
      Q => addra(5),
      R => '0'
    );
\blk_addra_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => \word_pointer_reg_n_0_[6]\,
      Q => addra(6),
      R => '0'
    );
\blk_addra_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => \word_pointer_reg_n_0_[7]\,
      Q => addra(7),
      R => '0'
    );
\blk_addrb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => \word_pointer_reg[0]__0_n_0\,
      Q => addrb(0),
      R => \^counter_reg[0]\
    );
\blk_addrb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => \word_pointer_reg[1]__0_n_0\,
      Q => addrb(1),
      R => \^counter_reg[0]\
    );
\blk_addrb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => \word_pointer_reg[2]__0_n_0\,
      Q => addrb(2),
      R => \^counter_reg[0]\
    );
\blk_addrb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => \word_pointer_reg[3]__0_n_0\,
      Q => addrb(3),
      R => \^counter_reg[0]\
    );
\blk_addrb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => \word_pointer_reg[4]__0_n_0\,
      Q => addrb(4),
      R => \^counter_reg[0]\
    );
\blk_addrb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => \word_pointer_reg[5]__0_n_0\,
      Q => addrb(5),
      R => \^counter_reg[0]\
    );
\blk_addrb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => \word_pointer_reg[6]__0_n_0\,
      Q => addrb(6),
      R => \^counter_reg[0]\
    );
\blk_addrb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => \word_pointer_reg[7]__0_n_0\,
      Q => addrb(7),
      R => \^counter_reg[0]\
    );
\blk_dina_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(0),
      Q => dina(0),
      R => '0'
    );
\blk_dina_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(10),
      Q => dina(10),
      R => '0'
    );
\blk_dina_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(11),
      Q => dina(11),
      R => '0'
    );
\blk_dina_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(12),
      Q => dina(12),
      R => '0'
    );
\blk_dina_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(13),
      Q => dina(13),
      R => '0'
    );
\blk_dina_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(14),
      Q => dina(14),
      R => '0'
    );
\blk_dina_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(15),
      Q => dina(15),
      R => '0'
    );
\blk_dina_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(16),
      Q => dina(16),
      R => '0'
    );
\blk_dina_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(17),
      Q => dina(17),
      R => '0'
    );
\blk_dina_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(18),
      Q => dina(18),
      R => '0'
    );
\blk_dina_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(19),
      Q => dina(19),
      R => '0'
    );
\blk_dina_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(1),
      Q => dina(1),
      R => '0'
    );
\blk_dina_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(20),
      Q => dina(20),
      R => '0'
    );
\blk_dina_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(21),
      Q => dina(21),
      R => '0'
    );
\blk_dina_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(22),
      Q => dina(22),
      R => '0'
    );
\blk_dina_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(23),
      Q => dina(23),
      R => '0'
    );
\blk_dina_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(24),
      Q => dina(24),
      R => '0'
    );
\blk_dina_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(25),
      Q => dina(25),
      R => '0'
    );
\blk_dina_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(26),
      Q => dina(26),
      R => '0'
    );
\blk_dina_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(27),
      Q => dina(27),
      R => '0'
    );
\blk_dina_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(28),
      Q => dina(28),
      R => '0'
    );
\blk_dina_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(29),
      Q => dina(29),
      R => '0'
    );
\blk_dina_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(2),
      Q => dina(2),
      R => '0'
    );
\blk_dina_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(30),
      Q => dina(30),
      R => '0'
    );
\blk_dina_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(31),
      Q => dina(31),
      R => '0'
    );
\blk_dina_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(32),
      Q => dina(32),
      R => '0'
    );
\blk_dina_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(33),
      Q => dina(33),
      R => '0'
    );
\blk_dina_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(34),
      Q => dina(34),
      R => '0'
    );
\blk_dina_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(35),
      Q => dina(35),
      R => '0'
    );
\blk_dina_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(36),
      Q => dina(36),
      R => '0'
    );
\blk_dina_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(37),
      Q => dina(37),
      R => '0'
    );
\blk_dina_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(38),
      Q => dina(38),
      R => '0'
    );
\blk_dina_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(39),
      Q => dina(39),
      R => '0'
    );
\blk_dina_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(3),
      Q => dina(3),
      R => '0'
    );
\blk_dina_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(40),
      Q => dina(40),
      R => '0'
    );
\blk_dina_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(41),
      Q => dina(41),
      R => '0'
    );
\blk_dina_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(42),
      Q => dina(42),
      R => '0'
    );
\blk_dina_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(43),
      Q => dina(43),
      R => '0'
    );
\blk_dina_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(44),
      Q => dina(44),
      R => '0'
    );
\blk_dina_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(45),
      Q => dina(45),
      R => '0'
    );
\blk_dina_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(46),
      Q => dina(46),
      R => '0'
    );
\blk_dina_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(47),
      Q => dina(47),
      R => '0'
    );
\blk_dina_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(48),
      Q => dina(48),
      R => '0'
    );
\blk_dina_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(49),
      Q => dina(49),
      R => '0'
    );
\blk_dina_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(4),
      Q => dina(4),
      R => '0'
    );
\blk_dina_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(50),
      Q => dina(50),
      R => '0'
    );
\blk_dina_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(51),
      Q => dina(51),
      R => '0'
    );
\blk_dina_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(52),
      Q => dina(52),
      R => '0'
    );
\blk_dina_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(53),
      Q => dina(53),
      R => '0'
    );
\blk_dina_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(54),
      Q => dina(54),
      R => '0'
    );
\blk_dina_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(55),
      Q => dina(55),
      R => '0'
    );
\blk_dina_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(56),
      Q => dina(56),
      R => '0'
    );
\blk_dina_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(57),
      Q => dina(57),
      R => '0'
    );
\blk_dina_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(58),
      Q => dina(58),
      R => '0'
    );
\blk_dina_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(59),
      Q => dina(59),
      R => '0'
    );
\blk_dina_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(5),
      Q => dina(5),
      R => '0'
    );
\blk_dina_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(60),
      Q => dina(60),
      R => '0'
    );
\blk_dina_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(61),
      Q => dina(61),
      R => '0'
    );
\blk_dina_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(62),
      Q => dina(62),
      R => '0'
    );
\blk_dina_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(63),
      Q => dina(63),
      R => '0'
    );
\blk_dina_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(6),
      Q => dina(6),
      R => '0'
    );
\blk_dina_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(7),
      Q => dina(7),
      R => '0'
    );
\blk_dina_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(8),
      Q => dina(8),
      R => '0'
    );
\blk_dina_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \blk_addra[7]_i_1_n_0\,
      D => m_axi_fb_rdata(9),
      Q => dina(9),
      R => '0'
    );
blk_mem_gen_pixel_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_pixel
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => axi_aclk,
      clkb => axi_aclk,
      dina(63 downto 0) => dina(63 downto 0),
      doutb(63 downto 0) => blk_doutb(63 downto 0),
      wea(0) => wea
    );
blk_wea_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFF700000800"
    )
        port map (
      I0 => axi_aresetn,
      I1 => gat_state(0),
      I2 => gat_state(1),
      I3 => p_0_in_1,
      I4 => m_axi_fb_rready_buff_reg_0,
      I5 => wea,
      O => blk_wea_i_1_n_0
    );
blk_wea_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^axi_fb_enable\,
      I1 => axi_fb_ready,
      O => p_0_in_1
    );
blk_wea_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => blk_wea_i_1_n_0,
      Q => wea,
      R => '0'
    );
\gat_address_base[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(10),
      O => \gat_address_base[10]_i_1_n_0\
    );
\gat_address_base[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(11),
      O => \gat_address_base[11]_i_1_n_0\
    );
\gat_address_base[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(12),
      O => \gat_address_base[12]_i_1_n_0\
    );
\gat_address_base[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(13),
      O => \gat_address_base[13]_i_1_n_0\
    );
\gat_address_base[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(14),
      O => \gat_address_base[14]_i_1_n_0\
    );
\gat_address_base[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(15),
      O => \gat_address_base[15]_i_1_n_0\
    );
\gat_address_base[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(16),
      O => \gat_address_base[16]_i_1_n_0\
    );
\gat_address_base[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(17),
      O => \gat_address_base[17]_i_1_n_0\
    );
\gat_address_base[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(18),
      O => \gat_address_base[18]_i_1_n_0\
    );
\gat_address_base[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(19),
      O => \gat_address_base[19]_i_1_n_0\
    );
\gat_address_base[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(20),
      O => \gat_address_base[20]_i_1_n_0\
    );
\gat_address_base[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(21),
      O => \gat_address_base[21]_i_1_n_0\
    );
\gat_address_base[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(22),
      O => \gat_address_base[22]_i_1_n_0\
    );
\gat_address_base[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(23),
      O => \gat_address_base[23]_i_1_n_0\
    );
\gat_address_base[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(24),
      O => \gat_address_base[24]_i_1_n_0\
    );
\gat_address_base[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(25),
      O => \gat_address_base[25]_i_1_n_0\
    );
\gat_address_base[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(26),
      O => \gat_address_base[26]_i_1_n_0\
    );
\gat_address_base[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(27),
      O => \gat_address_base[27]_i_1_n_0\
    );
\gat_address_base[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(28),
      O => \gat_address_base[28]_i_1_n_0\
    );
\gat_address_base[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(29),
      O => \gat_address_base[29]_i_1_n_0\
    );
\gat_address_base[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(30),
      O => \gat_address_base[30]_i_1_n_0\
    );
\gat_address_base[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(31),
      O => \gat_address_base[31]_i_2_n_0\
    );
\gat_address_base[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(7),
      O => \gat_address_base[7]_i_1_n_0\
    );
\gat_address_base[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(8),
      O => \gat_address_base[8]_i_1_n_0\
    );
\gat_address_base[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(1),
      I1 => in8(9),
      O => \gat_address_base[9]_i_1_n_0\
    );
\gat_address_base_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[10]_i_1_n_0\,
      Q => \^q\(3),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[11]_i_1_n_0\,
      Q => \^q\(4),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[12]_i_1_n_0\,
      Q => \^q\(5),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[13]_i_1_n_0\,
      Q => \^q\(6),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[14]_i_1_n_0\,
      Q => \^q\(7),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[15]_i_1_n_0\,
      Q => \^q\(8),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[16]_i_1_n_0\,
      Q => \^q\(9),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[17]_i_1_n_0\,
      Q => \^q\(10),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[18]_i_1_n_0\,
      Q => \^q\(11),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[19]_i_1_n_0\,
      Q => \^q\(12),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[20]_i_1_n_0\,
      Q => \^q\(13),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[21]_i_1_n_0\,
      Q => \^q\(14),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[22]_i_1_n_0\,
      Q => \^q\(15),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[23]_i_1_n_0\,
      Q => \^q\(16),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[24]_i_1_n_0\,
      Q => \^q\(17),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[25]_i_1_n_0\,
      Q => \^q\(18),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[26]_i_1_n_0\,
      Q => \^q\(19),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[27]_i_1_n_0\,
      Q => \^q\(20),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[28]_i_1_n_0\,
      Q => \^q\(21),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[29]_i_1_n_0\,
      Q => \^q\(22),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[30]_i_1_n_0\,
      Q => \^q\(23),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[31]_i_2_n_0\,
      Q => \^q\(24),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[7]_i_1_n_0\,
      Q => \^q\(0),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[8]_i_1_n_0\,
      Q => \^q\(1),
      R => \^counter_reg[0]\
    );
\gat_address_base_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => h_display_buff_reg_0(0),
      D => \gat_address_base[9]_i_1_n_0\,
      Q => \^q\(2),
      R => \^counter_reg[0]\
    );
gat_enable_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9ABA0000"
    )
        port map (
      I0 => gat_enable_reg_n_0,
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => gat_ready_reg_n_0,
      I4 => axi_aresetn,
      O => gat_enable_i_1_n_0
    );
gat_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => '1',
      D => gat_enable_i_1_n_0,
      Q => gat_enable_reg_n_0,
      R => '0'
    );
gat_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => gat_ready_reg_n_0,
      I1 => gat_state(0),
      I2 => gat_state(1),
      O => gat_ready_i_1_n_0
    );
gat_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => gat_ready_i_1_n_0,
      Q => gat_ready_reg_n_0,
      R => \^counter_reg[0]\
    );
\i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8040"
    )
        port map (
      I0 => \^pixel_pointer_reg\(0),
      I1 => vga_v_display,
      I2 => vga_h_display,
      I3 => \^word_pointer_reg[0]__0_0\,
      O => \^d\(0)
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => v_display_buff_reg(0),
      Q => \^word_pointer_reg[0]__0_0\,
      R => \^counter_reg[0]\
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \^d\(0),
      Q => \i_reg_n_0_[1]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => vga_v_display,
      I3 => vga_h_display,
      O => pixel_buffer
    );
\pixel_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(0),
      Q => \pixel_buffer_reg_n_0_[0]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(10),
      Q => \pixel_buffer_reg_n_0_[10]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(11),
      Q => \pixel_buffer_reg_n_0_[11]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(16),
      Q => \pixel_buffer_reg_n_0_[16]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(17),
      Q => \pixel_buffer_reg_n_0_[17]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(18),
      Q => \pixel_buffer_reg_n_0_[18]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(19),
      Q => \pixel_buffer_reg_n_0_[19]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(1),
      Q => \pixel_buffer_reg_n_0_[1]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(20),
      Q => \pixel_buffer_reg_n_0_[20]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(21),
      Q => \pixel_buffer_reg_n_0_[21]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(22),
      Q => \pixel_buffer_reg_n_0_[22]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(23),
      Q => \pixel_buffer_reg_n_0_[23]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(24),
      Q => \pixel_buffer_reg_n_0_[24]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(25),
      Q => \pixel_buffer_reg_n_0_[25]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(26),
      Q => \pixel_buffer_reg_n_0_[26]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(27),
      Q => \pixel_buffer_reg_n_0_[27]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(2),
      Q => \pixel_buffer_reg_n_0_[2]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(32),
      Q => \pixel_buffer_reg_n_0_[32]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(33),
      Q => \pixel_buffer_reg_n_0_[33]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(34),
      Q => \pixel_buffer_reg_n_0_[34]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(35),
      Q => \pixel_buffer_reg_n_0_[35]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(36),
      Q => \pixel_buffer_reg_n_0_[36]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(37),
      Q => \pixel_buffer_reg_n_0_[37]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(38),
      Q => \pixel_buffer_reg_n_0_[38]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(39),
      Q => \pixel_buffer_reg_n_0_[39]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(3),
      Q => \pixel_buffer_reg_n_0_[3]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(40),
      Q => \pixel_buffer_reg_n_0_[40]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(41),
      Q => \pixel_buffer_reg_n_0_[41]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(42),
      Q => \pixel_buffer_reg_n_0_[42]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(43),
      Q => \pixel_buffer_reg_n_0_[43]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(48),
      Q => \pixel_buffer_reg_n_0_[48]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(49),
      Q => \pixel_buffer_reg_n_0_[49]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(4),
      Q => \pixel_buffer_reg_n_0_[4]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(50),
      Q => \pixel_buffer_reg_n_0_[50]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(51),
      Q => \pixel_buffer_reg_n_0_[51]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(52),
      Q => \pixel_buffer_reg_n_0_[52]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(53),
      Q => \pixel_buffer_reg_n_0_[53]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(54),
      Q => \pixel_buffer_reg_n_0_[54]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(55),
      Q => \pixel_buffer_reg_n_0_[55]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(56),
      Q => \pixel_buffer_reg_n_0_[56]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(57),
      Q => \pixel_buffer_reg_n_0_[57]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(58),
      Q => \pixel_buffer_reg_n_0_[58]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(59),
      Q => \pixel_buffer_reg_n_0_[59]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(5),
      Q => \pixel_buffer_reg_n_0_[5]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(6),
      Q => \pixel_buffer_reg_n_0_[6]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(7),
      Q => \pixel_buffer_reg_n_0_[7]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(8),
      Q => \pixel_buffer_reg_n_0_[8]\,
      R => \^counter_reg[0]\
    );
\pixel_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => pixel_buffer,
      D => blk_doutb(9),
      Q => \pixel_buffer_reg_n_0_[9]\,
      R => \^counter_reg[0]\
    );
\pixel_pointer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => p_0_in(0),
      Q => \^pixel_pointer_reg\(0),
      R => \^counter_reg[0]\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => '0',
      DI(3) => \^q\(3),
      DI(2) => '0',
      DI(1) => \^q\(1),
      DI(0) => '0',
      O(3 downto 0) => in8(10 downto 7),
      S(3) => plusOp_carry_i_1_n_0,
      S(2) => \^q\(2),
      S(1) => plusOp_carry_i_2_n_0,
      S(0) => \^q\(0)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(14 downto 11),
      S(3 downto 0) => \^q\(7 downto 4)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(18 downto 15),
      S(3 downto 0) => \^q\(11 downto 8)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(22 downto 19),
      S(3 downto 0) => \^q\(15 downto 12)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(26 downto 23),
      S(3 downto 0) => \^q\(19 downto 16)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2) => \plusOp_carry__4_n_1\,
      CO(1) => \plusOp_carry__4_n_2\,
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(30 downto 27),
      S(3 downto 0) => \^q\(23 downto 20)
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => in8(31),
      S(3 downto 1) => B"000",
      S(0) => \^q\(24)
    );
plusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => plusOp_carry_i_1_n_0
    );
plusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => plusOp_carry_i_2_n_0
    );
\vga_b[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00320002"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[0]\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \^word_pointer_reg[0]__0_0\,
      I3 => h_display_buff_reg,
      I4 => \pixel_buffer_reg_n_0_[16]\,
      I5 => \vga_b[0]_i_2_n_0\,
      O => \vga_b[0]_i_1_n_0\
    );
\vga_b[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000A00000000000"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[32]\,
      I1 => \pixel_buffer_reg_n_0_[48]\,
      I2 => vga_h_display,
      I3 => vga_v_display,
      I4 => \^word_pointer_reg[0]__0_0\,
      I5 => \i_reg_n_0_[1]\,
      O => \vga_b[0]_i_2_n_0\
    );
\vga_b[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00320002"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[1]\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \^word_pointer_reg[0]__0_0\,
      I3 => h_display_buff_reg,
      I4 => \pixel_buffer_reg_n_0_[17]\,
      I5 => \vga_b[1]_i_2_n_0\,
      O => \vga_b[1]_i_1_n_0\
    );
\vga_b[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000A00000000000"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[33]\,
      I1 => \pixel_buffer_reg_n_0_[49]\,
      I2 => vga_h_display,
      I3 => vga_v_display,
      I4 => \^word_pointer_reg[0]__0_0\,
      I5 => \i_reg_n_0_[1]\,
      O => \vga_b[1]_i_2_n_0\
    );
\vga_b[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00320002"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[2]\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \^word_pointer_reg[0]__0_0\,
      I3 => h_display_buff_reg,
      I4 => \pixel_buffer_reg_n_0_[18]\,
      I5 => \vga_b[2]_i_2_n_0\,
      O => \vga_b[2]_i_1_n_0\
    );
\vga_b[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000A00000000000"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[34]\,
      I1 => \pixel_buffer_reg_n_0_[50]\,
      I2 => vga_h_display,
      I3 => vga_v_display,
      I4 => \^word_pointer_reg[0]__0_0\,
      I5 => \i_reg_n_0_[1]\,
      O => \vga_b[2]_i_2_n_0\
    );
\vga_b[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EA00"
    )
        port map (
      I0 => vga_synch_reg_n_0,
      I1 => vga_h_display,
      I2 => vga_v_display,
      I3 => \^out\(1),
      I4 => \^out\(0),
      O => \^e\(0)
    );
\vga_b[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00320002"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[3]\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \^word_pointer_reg[0]__0_0\,
      I3 => h_display_buff_reg,
      I4 => \pixel_buffer_reg_n_0_[19]\,
      I5 => \vga_b[3]_i_5_n_0\,
      O => \vga_b[3]_i_3_n_0\
    );
\vga_b[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000A00000000000"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[35]\,
      I1 => \pixel_buffer_reg_n_0_[51]\,
      I2 => vga_h_display,
      I3 => vga_v_display,
      I4 => \^word_pointer_reg[0]__0_0\,
      I5 => \i_reg_n_0_[1]\,
      O => \vga_b[3]_i_5_n_0\
    );
\vga_b_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \vga_b[0]_i_1_n_0\,
      Q => vga_b(0),
      R => \^counter_reg[0]\
    );
\vga_b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \vga_b[1]_i_1_n_0\,
      Q => vga_b(1),
      R => \^counter_reg[0]\
    );
\vga_b_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \vga_b[2]_i_1_n_0\,
      Q => vga_b(2),
      R => \^counter_reg[0]\
    );
\vga_b_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \vga_b[3]_i_3_n_0\,
      Q => vga_b(3),
      R => \^counter_reg[0]\
    );
\vga_g[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF080C0800"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[52]\,
      I1 => \B[1]\(1),
      I2 => h_display_buff_reg,
      I3 => \B[1]\(0),
      I4 => \pixel_buffer_reg_n_0_[36]\,
      I5 => \vga_g[0]_i_2_n_0\,
      O => \vga_g[0]_i_1_n_0\
    );
\vga_g[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AC000000"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[20]\,
      I1 => \pixel_buffer_reg_n_0_[4]\,
      I2 => \B[1]\(0),
      I3 => vga_h_display,
      I4 => vga_v_display,
      I5 => \B[1]\(1),
      O => \vga_g[0]_i_2_n_0\
    );
\vga_g[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF080C0800"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[53]\,
      I1 => \B[1]\(1),
      I2 => h_display_buff_reg,
      I3 => \B[1]\(0),
      I4 => \pixel_buffer_reg_n_0_[37]\,
      I5 => \vga_g[1]_i_2_n_0\,
      O => \vga_g[1]_i_1_n_0\
    );
\vga_g[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AC000000"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[21]\,
      I1 => \pixel_buffer_reg_n_0_[5]\,
      I2 => \B[1]\(0),
      I3 => vga_h_display,
      I4 => vga_v_display,
      I5 => \B[1]\(1),
      O => \vga_g[1]_i_2_n_0\
    );
\vga_g[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF080C0800"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[54]\,
      I1 => \B[1]\(1),
      I2 => h_display_buff_reg,
      I3 => \B[1]\(0),
      I4 => \pixel_buffer_reg_n_0_[38]\,
      I5 => \vga_g[2]_i_2_n_0\,
      O => \vga_g[2]_i_1_n_0\
    );
\vga_g[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AC000000"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[22]\,
      I1 => \pixel_buffer_reg_n_0_[6]\,
      I2 => \B[1]\(0),
      I3 => vga_h_display,
      I4 => vga_v_display,
      I5 => \B[1]\(1),
      O => \vga_g[2]_i_2_n_0\
    );
\vga_g[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF080C0800"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[55]\,
      I1 => \B[1]\(1),
      I2 => h_display_buff_reg,
      I3 => \B[1]\(0),
      I4 => \pixel_buffer_reg_n_0_[39]\,
      I5 => \vga_g[3]_i_2_n_0\,
      O => \vga_g[3]_i_1_n_0\
    );
\vga_g[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AC000000"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[23]\,
      I1 => \pixel_buffer_reg_n_0_[7]\,
      I2 => \B[1]\(0),
      I3 => vga_h_display,
      I4 => vga_v_display,
      I5 => \B[1]\(1),
      O => \vga_g[3]_i_2_n_0\
    );
\vga_g_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \vga_g[0]_i_1_n_0\,
      Q => vga_g(0),
      R => \^counter_reg[0]\
    );
\vga_g_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \vga_g[1]_i_1_n_0\,
      Q => vga_g(1),
      R => \^counter_reg[0]\
    );
\vga_g_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \vga_g[2]_i_1_n_0\,
      Q => vga_g(2),
      R => \^counter_reg[0]\
    );
\vga_g_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \vga_g[3]_i_1_n_0\,
      Q => vga_g(3),
      R => \^counter_reg[0]\
    );
\vga_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF080C0800"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[56]\,
      I1 => \B[1]\(1),
      I2 => h_display_buff_reg,
      I3 => \B[1]\(0),
      I4 => \pixel_buffer_reg_n_0_[40]\,
      I5 => \vga_r[0]_i_2_n_0\,
      O => \vga_r[0]_i_1_n_0\
    );
\vga_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AC000000"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[24]\,
      I1 => \pixel_buffer_reg_n_0_[8]\,
      I2 => \B[1]\(0),
      I3 => vga_h_display,
      I4 => vga_v_display,
      I5 => \B[1]\(1),
      O => \vga_r[0]_i_2_n_0\
    );
\vga_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF080C0800"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[57]\,
      I1 => \B[1]\(1),
      I2 => h_display_buff_reg,
      I3 => \B[1]\(0),
      I4 => \pixel_buffer_reg_n_0_[41]\,
      I5 => \vga_r[1]_i_2_n_0\,
      O => \vga_r[1]_i_1_n_0\
    );
\vga_r[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AC000000"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[25]\,
      I1 => \pixel_buffer_reg_n_0_[9]\,
      I2 => \B[1]\(0),
      I3 => vga_h_display,
      I4 => vga_v_display,
      I5 => \B[1]\(1),
      O => \vga_r[1]_i_2_n_0\
    );
\vga_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF080C0800"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[58]\,
      I1 => \B[1]\(1),
      I2 => h_display_buff_reg,
      I3 => \B[1]\(0),
      I4 => \pixel_buffer_reg_n_0_[42]\,
      I5 => \vga_r[2]_i_2_n_0\,
      O => \vga_r[2]_i_1_n_0\
    );
\vga_r[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AC000000"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[26]\,
      I1 => \pixel_buffer_reg_n_0_[10]\,
      I2 => \B[1]\(0),
      I3 => vga_h_display,
      I4 => vga_v_display,
      I5 => \B[1]\(1),
      O => \vga_r[2]_i_2_n_0\
    );
\vga_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF080C0800"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[59]\,
      I1 => \B[1]\(1),
      I2 => h_display_buff_reg,
      I3 => \B[1]\(0),
      I4 => \pixel_buffer_reg_n_0_[43]\,
      I5 => \vga_r[3]_i_2_n_0\,
      O => \vga_r[3]_i_1_n_0\
    );
\vga_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AC000000"
    )
        port map (
      I0 => \pixel_buffer_reg_n_0_[27]\,
      I1 => \pixel_buffer_reg_n_0_[11]\,
      I2 => \B[1]\(0),
      I3 => vga_h_display,
      I4 => vga_v_display,
      I5 => \B[1]\(1),
      O => \vga_r[3]_i_2_n_0\
    );
\vga_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \vga_r[0]_i_1_n_0\,
      Q => vga_r(0),
      R => \^counter_reg[0]\
    );
\vga_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \vga_r[1]_i_1_n_0\,
      Q => vga_r(1),
      R => \^counter_reg[0]\
    );
\vga_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \vga_r[2]_i_1_n_0\,
      Q => vga_r(2),
      R => \^counter_reg[0]\
    );
\vga_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \vga_r[3]_i_1_n_0\,
      Q => vga_r(3),
      R => \^counter_reg[0]\
    );
vga_synch_reg: unisim.vcomponents.FDRE
     port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => vga_h_v_display,
      Q => vga_synch_reg_n_0,
      R => \^counter_reg[0]\
    );
\word_pointer[0]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A000000"
    )
        port map (
      I0 => \word_pointer_reg[0]__0_n_0\,
      I1 => \^word_pointer_reg[0]__0_0\,
      I2 => \^pixel_pointer_reg\(0),
      I3 => vga_v_display,
      I4 => vga_h_display,
      O => \word_pointer[0]__0_i_1_n_0\
    );
\word_pointer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => gat_state(0),
      I1 => \word_pointer_reg_n_0_[0]\,
      O => word_pointer(0)
    );
\word_pointer[1]__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA000000000000"
    )
        port map (
      I0 => \word_pointer_reg[1]__0_n_0\,
      I1 => \^pixel_pointer_reg\(0),
      I2 => \^word_pointer_reg[0]__0_0\,
      I3 => \word_pointer_reg[0]__0_n_0\,
      I4 => vga_v_display,
      I5 => vga_h_display,
      O => \word_pointer[1]__0_i_1_n_0\
    );
\word_pointer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \word_pointer_reg_n_0_[0]\,
      I1 => gat_state(0),
      I2 => \word_pointer_reg_n_0_[1]\,
      O => word_pointer(1)
    );
\word_pointer[2]__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \word_pointer_reg[2]__0_n_0\,
      I1 => \word_pointer_reg[0]__0_n_0\,
      I2 => \^word_pointer_reg[0]__0_0\,
      I3 => \^pixel_pointer_reg\(0),
      I4 => \word_pointer_reg[1]__0_n_0\,
      I5 => h_display_buff_reg,
      O => \word_pointer[2]__0_i_1_n_0\
    );
\word_pointer[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \word_pointer_reg_n_0_[0]\,
      I1 => \word_pointer_reg_n_0_[1]\,
      I2 => gat_state(0),
      I3 => \word_pointer_reg_n_0_[2]\,
      O => word_pointer(2)
    );
\word_pointer[3]__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A6AAAAAA"
    )
        port map (
      I0 => \word_pointer_reg[3]__0_n_0\,
      I1 => \word_pointer_reg[1]__0_n_0\,
      I2 => \word_pointer[3]__0_i_2_n_0\,
      I3 => \word_pointer_reg[0]__0_n_0\,
      I4 => \word_pointer_reg[2]__0_n_0\,
      I5 => h_display_buff_reg,
      O => \word_pointer[3]__0_i_1_n_0\
    );
\word_pointer[3]__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^word_pointer_reg[0]__0_0\,
      I1 => \^pixel_pointer_reg\(0),
      O => \word_pointer[3]__0_i_2_n_0\
    );
\word_pointer[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \word_pointer_reg_n_0_[1]\,
      I1 => \word_pointer_reg_n_0_[0]\,
      I2 => \word_pointer_reg_n_0_[2]\,
      I3 => gat_state(0),
      I4 => \word_pointer_reg_n_0_[3]\,
      O => word_pointer(3)
    );
\word_pointer[4]__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => \word_pointer_reg[4]__0_n_0\,
      I1 => \word_pointer[4]__0_i_2_n_0\,
      I2 => vga_v_display,
      I3 => vga_h_display,
      O => \word_pointer[4]__0_i_1_n_0\
    );
\word_pointer[4]__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \word_pointer_reg[2]__0_n_0\,
      I1 => \word_pointer_reg[0]__0_n_0\,
      I2 => \^word_pointer_reg[0]__0_0\,
      I3 => \^pixel_pointer_reg\(0),
      I4 => \word_pointer_reg[1]__0_n_0\,
      I5 => \word_pointer_reg[3]__0_n_0\,
      O => \word_pointer[4]__0_i_2_n_0\
    );
\word_pointer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \word_pointer_reg_n_0_[2]\,
      I1 => \word_pointer_reg_n_0_[0]\,
      I2 => \word_pointer_reg_n_0_[1]\,
      I3 => \word_pointer_reg_n_0_[3]\,
      I4 => gat_state(0),
      I5 => \word_pointer_reg_n_0_[4]\,
      O => word_pointer(4)
    );
\word_pointer[5]__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A000000"
    )
        port map (
      I0 => \word_pointer_reg[5]__0_n_0\,
      I1 => \word_pointer[4]__0_i_2_n_0\,
      I2 => \word_pointer_reg[4]__0_n_0\,
      I3 => vga_v_display,
      I4 => vga_h_display,
      O => \word_pointer[5]__0_i_1_n_0\
    );
\word_pointer[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \word_pointer[5]_i_2_n_0\,
      I1 => gat_state(0),
      I2 => \word_pointer_reg_n_0_[5]\,
      O => word_pointer(5)
    );
\word_pointer[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \word_pointer_reg_n_0_[3]\,
      I1 => \word_pointer_reg_n_0_[1]\,
      I2 => \word_pointer_reg_n_0_[0]\,
      I3 => \word_pointer_reg_n_0_[2]\,
      I4 => \word_pointer_reg_n_0_[4]\,
      O => \word_pointer[5]_i_2_n_0\
    );
\word_pointer[6]__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AA000000000000"
    )
        port map (
      I0 => \word_pointer_reg[6]__0_n_0\,
      I1 => \word_pointer_reg[4]__0_n_0\,
      I2 => \word_pointer[4]__0_i_2_n_0\,
      I3 => \word_pointer_reg[5]__0_n_0\,
      I4 => vga_v_display,
      I5 => vga_h_display,
      O => \word_pointer[6]__0_i_1_n_0\
    );
\word_pointer[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \word_pointer[7]_i_4_n_0\,
      I1 => gat_state(0),
      I2 => \word_pointer_reg_n_0_[6]\,
      O => word_pointer(6)
    );
\word_pointer[7]__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A6AAAAAA"
    )
        port map (
      I0 => \word_pointer_reg[7]__0_n_0\,
      I1 => \word_pointer_reg[5]__0_n_0\,
      I2 => \word_pointer[4]__0_i_2_n_0\,
      I3 => \word_pointer_reg[4]__0_n_0\,
      I4 => \word_pointer_reg[6]__0_n_0\,
      I5 => h_display_buff_reg,
      O => \word_pointer[7]__0_i_1_n_0\
    );
\word_pointer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000333AAAA"
    )
        port map (
      I0 => gat_enable_reg_n_0,
      I1 => m_axi_fb_rready_buff_reg_0,
      I2 => axi_fb_ready,
      I3 => \^axi_fb_enable\,
      I4 => gat_state(0),
      I5 => gat_state(1),
      O => word_pointer_0
    );
\word_pointer[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \word_pointer[7]_i_4_n_0\,
      I1 => \word_pointer_reg_n_0_[6]\,
      I2 => gat_state(0),
      I3 => \word_pointer_reg_n_0_[7]\,
      O => word_pointer(7)
    );
\word_pointer[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \word_pointer_reg_n_0_[4]\,
      I1 => \word_pointer_reg_n_0_[2]\,
      I2 => \word_pointer_reg_n_0_[0]\,
      I3 => \word_pointer_reg_n_0_[1]\,
      I4 => \word_pointer_reg_n_0_[3]\,
      I5 => \word_pointer_reg_n_0_[5]\,
      O => \word_pointer[7]_i_4_n_0\
    );
\word_pointer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => word_pointer_0,
      D => word_pointer(0),
      Q => \word_pointer_reg_n_0_[0]\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[0]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \word_pointer[0]__0_i_1_n_0\,
      Q => \word_pointer_reg[0]__0_n_0\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => word_pointer_0,
      D => word_pointer(1),
      Q => \word_pointer_reg_n_0_[1]\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[1]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \word_pointer[1]__0_i_1_n_0\,
      Q => \word_pointer_reg[1]__0_n_0\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => word_pointer_0,
      D => word_pointer(2),
      Q => \word_pointer_reg_n_0_[2]\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[2]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \word_pointer[2]__0_i_1_n_0\,
      Q => \word_pointer_reg[2]__0_n_0\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => word_pointer_0,
      D => word_pointer(3),
      Q => \word_pointer_reg_n_0_[3]\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[3]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \word_pointer[3]__0_i_1_n_0\,
      Q => \word_pointer_reg[3]__0_n_0\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => word_pointer_0,
      D => word_pointer(4),
      Q => \word_pointer_reg_n_0_[4]\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[4]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \word_pointer[4]__0_i_1_n_0\,
      Q => \word_pointer_reg[4]__0_n_0\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => word_pointer_0,
      D => word_pointer(5),
      Q => \word_pointer_reg_n_0_[5]\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[5]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \word_pointer[5]__0_i_1_n_0\,
      Q => \word_pointer_reg[5]__0_n_0\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => word_pointer_0,
      D => word_pointer(6),
      Q => \word_pointer_reg_n_0_[6]\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[6]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \word_pointer[6]__0_i_1_n_0\,
      Q => \word_pointer_reg[6]__0_n_0\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => word_pointer_0,
      D => word_pointer(7),
      Q => \word_pointer_reg_n_0_[7]\,
      R => \^counter_reg[0]\
    );
\word_pointer_reg[7]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^vga_synch_reg_0\,
      CE => \^e\(0),
      D => \word_pointer[7]__0_i_1_n_0\,
      Q => \word_pointer_reg[7]__0_n_0\,
      R => \^counter_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_v1_0 is
  port (
    reset : out STD_LOGIC;
    vga_synch_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clock_vga : out STD_LOGIC;
    s_axi_config_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    h_sync : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    m_axi_fb_rready : out STD_LOGIC;
    m_axi_fb_arvalid : out STD_LOGIC;
    s_axi_config_awready : out STD_LOGIC;
    s_axi_config_wready : out STD_LOGIC;
    s_axi_config_bvalid : out STD_LOGIC;
    s_axi_config_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_config_rvalid : out STD_LOGIC;
    s_axi_config_arready : out STD_LOGIC;
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_fb_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_aclk : in STD_LOGIC;
    s_axi_config_awprot : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_config_arprot : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_aresetn : in STD_LOGIC;
    m_axi_fb_rvalid : in STD_LOGIC;
    m_axi_fb_rlast : in STD_LOGIC;
    m_axi_fb_arready : in STD_LOGIC;
    s_axi_config_awvalid : in STD_LOGIC;
    s_axi_config_wvalid : in STD_LOGIC;
    s_axi_config_bready : in STD_LOGIC;
    s_axi_config_arvalid : in STD_LOGIC;
    s_axi_config_rready : in STD_LOGIC;
    m_axi_fb_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_config_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_fb_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_v1_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal VGA_0_n_8 : STD_LOGIC;
  signal VGA_controller_0_n_0 : STD_LOGIC;
  signal VGA_controller_0_n_1 : STD_LOGIC;
  signal VGA_controller_0_n_10 : STD_LOGIC;
  signal VGA_controller_0_n_11 : STD_LOGIC;
  signal VGA_controller_0_n_12 : STD_LOGIC;
  signal VGA_controller_0_n_13 : STD_LOGIC;
  signal VGA_controller_0_n_14 : STD_LOGIC;
  signal VGA_controller_0_n_15 : STD_LOGIC;
  signal VGA_controller_0_n_16 : STD_LOGIC;
  signal VGA_controller_0_n_17 : STD_LOGIC;
  signal VGA_controller_0_n_18 : STD_LOGIC;
  signal VGA_controller_0_n_19 : STD_LOGIC;
  signal VGA_controller_0_n_20 : STD_LOGIC;
  signal VGA_controller_0_n_21 : STD_LOGIC;
  signal VGA_controller_0_n_22 : STD_LOGIC;
  signal VGA_controller_0_n_23 : STD_LOGIC;
  signal VGA_controller_0_n_24 : STD_LOGIC;
  signal VGA_controller_0_n_25 : STD_LOGIC;
  signal VGA_controller_0_n_26 : STD_LOGIC;
  signal VGA_controller_0_n_27 : STD_LOGIC;
  signal VGA_controller_0_n_28 : STD_LOGIC;
  signal VGA_controller_0_n_29 : STD_LOGIC;
  signal VGA_controller_0_n_30 : STD_LOGIC;
  signal VGA_controller_0_n_31 : STD_LOGIC;
  signal VGA_controller_0_n_32 : STD_LOGIC;
  signal VGA_controller_0_n_33 : STD_LOGIC;
  signal VGA_controller_0_n_6 : STD_LOGIC;
  signal VGA_controller_0_n_9 : STD_LOGIC;
  signal axi_config_controller_0_n_10 : STD_LOGIC;
  signal axi_config_controller_0_n_11 : STD_LOGIC;
  signal axi_config_controller_0_n_12 : STD_LOGIC;
  signal axi_config_controller_0_n_13 : STD_LOGIC;
  signal axi_config_controller_0_n_14 : STD_LOGIC;
  signal axi_config_controller_0_n_15 : STD_LOGIC;
  signal axi_config_controller_0_n_16 : STD_LOGIC;
  signal axi_config_controller_0_n_17 : STD_LOGIC;
  signal axi_config_controller_0_n_18 : STD_LOGIC;
  signal axi_config_controller_0_n_19 : STD_LOGIC;
  signal axi_config_controller_0_n_20 : STD_LOGIC;
  signal axi_config_controller_0_n_21 : STD_LOGIC;
  signal axi_config_controller_0_n_22 : STD_LOGIC;
  signal axi_config_controller_0_n_23 : STD_LOGIC;
  signal axi_config_controller_0_n_24 : STD_LOGIC;
  signal axi_config_controller_0_n_25 : STD_LOGIC;
  signal axi_config_controller_0_n_26 : STD_LOGIC;
  signal axi_config_controller_0_n_27 : STD_LOGIC;
  signal axi_config_controller_0_n_28 : STD_LOGIC;
  signal axi_config_controller_0_n_29 : STD_LOGIC;
  signal axi_config_controller_0_n_30 : STD_LOGIC;
  signal axi_config_controller_0_n_31 : STD_LOGIC;
  signal axi_config_controller_0_n_32 : STD_LOGIC;
  signal axi_config_controller_0_n_33 : STD_LOGIC;
  signal axi_config_controller_0_n_34 : STD_LOGIC;
  signal axi_config_controller_0_n_35 : STD_LOGIC;
  signal axi_config_controller_0_n_36 : STD_LOGIC;
  signal axi_config_controller_0_n_37 : STD_LOGIC;
  signal axi_config_controller_0_n_38 : STD_LOGIC;
  signal axi_config_controller_0_n_40 : STD_LOGIC;
  signal axi_config_controller_0_n_41 : STD_LOGIC;
  signal axi_config_controller_0_n_42 : STD_LOGIC;
  signal axi_config_controller_0_n_43 : STD_LOGIC;
  signal axi_config_controller_0_n_44 : STD_LOGIC;
  signal axi_config_controller_0_n_45 : STD_LOGIC;
  signal axi_config_controller_0_n_46 : STD_LOGIC;
  signal axi_config_controller_0_n_47 : STD_LOGIC;
  signal axi_config_controller_0_n_48 : STD_LOGIC;
  signal axi_config_controller_0_n_49 : STD_LOGIC;
  signal axi_config_controller_0_n_50 : STD_LOGIC;
  signal axi_config_controller_0_n_51 : STD_LOGIC;
  signal axi_config_controller_0_n_52 : STD_LOGIC;
  signal axi_config_controller_0_n_53 : STD_LOGIC;
  signal axi_config_controller_0_n_54 : STD_LOGIC;
  signal axi_config_controller_0_n_55 : STD_LOGIC;
  signal axi_config_controller_0_n_56 : STD_LOGIC;
  signal axi_config_controller_0_n_57 : STD_LOGIC;
  signal axi_config_controller_0_n_58 : STD_LOGIC;
  signal axi_config_controller_0_n_59 : STD_LOGIC;
  signal axi_config_controller_0_n_60 : STD_LOGIC;
  signal axi_config_controller_0_n_61 : STD_LOGIC;
  signal axi_config_controller_0_n_62 : STD_LOGIC;
  signal axi_config_controller_0_n_63 : STD_LOGIC;
  signal axi_config_controller_0_n_64 : STD_LOGIC;
  signal axi_config_controller_0_n_7 : STD_LOGIC;
  signal axi_config_controller_0_n_8 : STD_LOGIC;
  signal axi_config_controller_0_n_9 : STD_LOGIC;
  signal axi_fb_controller_0_n_3 : STD_LOGIC;
  signal axi_fb_enable : STD_LOGIC;
  signal axi_fb_ready : STD_LOGIC;
  signal clock : STD_LOGIC;
  signal clock_vga_i_1_n_0 : STD_LOGIC;
  signal di_address : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal error_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gat_address_base : STD_LOGIC;
  signal \^m_axi_fb_rready\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pixel_pointer_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^reset\ : STD_LOGIC;
  signal start_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vga_h_display : STD_LOGIC;
  signal vga_h_v_display : STD_LOGIC;
  signal vga_v_display : STD_LOGIC;
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  m_axi_fb_rready <= \^m_axi_fb_rready\;
  reset <= \^reset\;
VGA_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA
     port map (
      D(0) => \^d\(0),
      E(0) => gat_address_base,
      Q(0) => start_reg(0),
      axi_aresetn => axi_aresetn,
      clock => clock,
      h_sync => h_sync,
      \i_reg[0]\ => VGA_controller_0_n_6,
      \out\(1) => VGA_controller_0_n_0,
      \out\(0) => VGA_controller_0_n_1,
      p_0_in(0) => p_0_in(1),
      pixel_pointer_reg(0) => pixel_pointer_reg(1),
      v_sync => v_sync,
      vga_h_display => vga_h_display,
      vga_h_v_display => vga_h_v_display,
      vga_v_display => vga_v_display,
      \word_pointer_reg[2]__0\ => VGA_0_n_8
    );
VGA_controller_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_controller
     port map (
      \B[1]\(1 downto 0) => Q(1 downto 0),
      D(0) => \^d\(1),
      E(0) => vga_synch_reg,
      Q(24) => VGA_controller_0_n_9,
      Q(23) => VGA_controller_0_n_10,
      Q(22) => VGA_controller_0_n_11,
      Q(21) => VGA_controller_0_n_12,
      Q(20) => VGA_controller_0_n_13,
      Q(19) => VGA_controller_0_n_14,
      Q(18) => VGA_controller_0_n_15,
      Q(17) => VGA_controller_0_n_16,
      Q(16) => VGA_controller_0_n_17,
      Q(15) => VGA_controller_0_n_18,
      Q(14) => VGA_controller_0_n_19,
      Q(13) => VGA_controller_0_n_20,
      Q(12) => VGA_controller_0_n_21,
      Q(11) => VGA_controller_0_n_22,
      Q(10) => VGA_controller_0_n_23,
      Q(9) => VGA_controller_0_n_24,
      Q(8) => VGA_controller_0_n_25,
      Q(7) => VGA_controller_0_n_26,
      Q(6) => VGA_controller_0_n_27,
      Q(5) => VGA_controller_0_n_28,
      Q(4) => VGA_controller_0_n_29,
      Q(3) => VGA_controller_0_n_30,
      Q(2) => VGA_controller_0_n_31,
      Q(1) => VGA_controller_0_n_32,
      Q(0) => VGA_controller_0_n_33,
      S(3) => axi_config_controller_0_n_41,
      S(2) => axi_config_controller_0_n_42,
      S(1) => axi_config_controller_0_n_43,
      S(0) => axi_config_controller_0_n_44,
      \address_reg_buff_reg[14]\(3) => axi_config_controller_0_n_45,
      \address_reg_buff_reg[14]\(2) => axi_config_controller_0_n_46,
      \address_reg_buff_reg[14]\(1) => axi_config_controller_0_n_47,
      \address_reg_buff_reg[14]\(0) => axi_config_controller_0_n_48,
      \address_reg_buff_reg[18]\(3) => axi_config_controller_0_n_49,
      \address_reg_buff_reg[18]\(2) => axi_config_controller_0_n_50,
      \address_reg_buff_reg[18]\(1) => axi_config_controller_0_n_51,
      \address_reg_buff_reg[18]\(0) => axi_config_controller_0_n_52,
      \address_reg_buff_reg[22]\(3) => axi_config_controller_0_n_53,
      \address_reg_buff_reg[22]\(2) => axi_config_controller_0_n_54,
      \address_reg_buff_reg[22]\(1) => axi_config_controller_0_n_55,
      \address_reg_buff_reg[22]\(0) => axi_config_controller_0_n_56,
      \address_reg_buff_reg[26]\(3) => axi_config_controller_0_n_57,
      \address_reg_buff_reg[26]\(2) => axi_config_controller_0_n_58,
      \address_reg_buff_reg[26]\(1) => axi_config_controller_0_n_59,
      \address_reg_buff_reg[26]\(0) => axi_config_controller_0_n_60,
      \address_reg_buff_reg[30]\(30) => axi_config_controller_0_n_8,
      \address_reg_buff_reg[30]\(29) => axi_config_controller_0_n_9,
      \address_reg_buff_reg[30]\(28) => axi_config_controller_0_n_10,
      \address_reg_buff_reg[30]\(27) => axi_config_controller_0_n_11,
      \address_reg_buff_reg[30]\(26) => axi_config_controller_0_n_12,
      \address_reg_buff_reg[30]\(25) => axi_config_controller_0_n_13,
      \address_reg_buff_reg[30]\(24) => axi_config_controller_0_n_14,
      \address_reg_buff_reg[30]\(23) => axi_config_controller_0_n_15,
      \address_reg_buff_reg[30]\(22) => axi_config_controller_0_n_16,
      \address_reg_buff_reg[30]\(21) => axi_config_controller_0_n_17,
      \address_reg_buff_reg[30]\(20) => axi_config_controller_0_n_18,
      \address_reg_buff_reg[30]\(19) => axi_config_controller_0_n_19,
      \address_reg_buff_reg[30]\(18) => axi_config_controller_0_n_20,
      \address_reg_buff_reg[30]\(17) => axi_config_controller_0_n_21,
      \address_reg_buff_reg[30]\(16) => axi_config_controller_0_n_22,
      \address_reg_buff_reg[30]\(15) => axi_config_controller_0_n_23,
      \address_reg_buff_reg[30]\(14) => axi_config_controller_0_n_24,
      \address_reg_buff_reg[30]\(13) => axi_config_controller_0_n_25,
      \address_reg_buff_reg[30]\(12) => axi_config_controller_0_n_26,
      \address_reg_buff_reg[30]\(11) => axi_config_controller_0_n_27,
      \address_reg_buff_reg[30]\(10) => axi_config_controller_0_n_28,
      \address_reg_buff_reg[30]\(9) => axi_config_controller_0_n_29,
      \address_reg_buff_reg[30]\(8) => axi_config_controller_0_n_30,
      \address_reg_buff_reg[30]\(7) => axi_config_controller_0_n_31,
      \address_reg_buff_reg[30]\(6) => axi_config_controller_0_n_32,
      \address_reg_buff_reg[30]\(5) => axi_config_controller_0_n_33,
      \address_reg_buff_reg[30]\(4) => axi_config_controller_0_n_34,
      \address_reg_buff_reg[30]\(3) => axi_config_controller_0_n_35,
      \address_reg_buff_reg[30]\(2) => axi_config_controller_0_n_36,
      \address_reg_buff_reg[30]\(1) => axi_config_controller_0_n_37,
      \address_reg_buff_reg[30]\(0) => axi_config_controller_0_n_38,
      \address_reg_buff_reg[30]_0\(3) => axi_config_controller_0_n_61,
      \address_reg_buff_reg[30]_0\(2) => axi_config_controller_0_n_62,
      \address_reg_buff_reg[30]_0\(1) => axi_config_controller_0_n_63,
      \address_reg_buff_reg[30]_0\(0) => axi_config_controller_0_n_64,
      \address_reg_buff_reg[31]\(0) => axi_config_controller_0_n_7,
      \address_reg_buff_reg[7]\(0) => axi_config_controller_0_n_40,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_fb_enable => axi_fb_enable,
      axi_fb_ready => axi_fb_ready,
      \counter_reg[0]\ => \^reset\,
      h_display_buff_reg => VGA_0_n_8,
      h_display_buff_reg_0(0) => gat_address_base,
      \m_axi_fb_araddr_buff_reg[31]\(31 downto 0) => di_address(31 downto 0),
      m_axi_fb_rdata(63 downto 0) => m_axi_fb_rdata(63 downto 0),
      m_axi_fb_rready_buff_reg => \^m_axi_fb_rready\,
      m_axi_fb_rready_buff_reg_0 => axi_fb_controller_0_n_3,
      m_axi_fb_rvalid => m_axi_fb_rvalid,
      \out\(1) => VGA_controller_0_n_0,
      \out\(0) => VGA_controller_0_n_1,
      p_0_in(0) => p_0_in(1),
      pixel_pointer_reg(0) => pixel_pointer_reg(1),
      \start_reg_buff_reg[0]\(0) => start_reg(0),
      v_display_buff_reg(0) => \^d\(0),
      vga_b(3 downto 0) => vga_b(3 downto 0),
      vga_g(3 downto 0) => vga_g(3 downto 0),
      vga_h_display => vga_h_display,
      vga_h_v_display => vga_h_v_display,
      vga_r(3 downto 0) => vga_r(3 downto 0),
      vga_synch_reg_0 => clock_vga,
      vga_v_display => vga_v_display,
      \word_pointer_reg[0]__0_0\ => VGA_controller_0_n_6
    );
axi_config_controller_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_config_controller
     port map (
      Q(24) => VGA_controller_0_n_9,
      Q(23) => VGA_controller_0_n_10,
      Q(22) => VGA_controller_0_n_11,
      Q(21) => VGA_controller_0_n_12,
      Q(20) => VGA_controller_0_n_13,
      Q(19) => VGA_controller_0_n_14,
      Q(18) => VGA_controller_0_n_15,
      Q(17) => VGA_controller_0_n_16,
      Q(16) => VGA_controller_0_n_17,
      Q(15) => VGA_controller_0_n_18,
      Q(14) => VGA_controller_0_n_19,
      Q(13) => VGA_controller_0_n_20,
      Q(12) => VGA_controller_0_n_21,
      Q(11) => VGA_controller_0_n_22,
      Q(10) => VGA_controller_0_n_23,
      Q(9) => VGA_controller_0_n_24,
      Q(8) => VGA_controller_0_n_25,
      Q(7) => VGA_controller_0_n_26,
      Q(6) => VGA_controller_0_n_27,
      Q(5) => VGA_controller_0_n_28,
      Q(4) => VGA_controller_0_n_29,
      Q(3) => VGA_controller_0_n_30,
      Q(2) => VGA_controller_0_n_31,
      Q(1) => VGA_controller_0_n_32,
      Q(0) => VGA_controller_0_n_33,
      S(3) => axi_config_controller_0_n_41,
      S(2) => axi_config_controller_0_n_42,
      S(1) => axi_config_controller_0_n_43,
      S(0) => axi_config_controller_0_n_44,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_aresetn_0 => \^reset\,
      \axi_fb_di_address_buff_reg[14]\(3) => axi_config_controller_0_n_45,
      \axi_fb_di_address_buff_reg[14]\(2) => axi_config_controller_0_n_46,
      \axi_fb_di_address_buff_reg[14]\(1) => axi_config_controller_0_n_47,
      \axi_fb_di_address_buff_reg[14]\(0) => axi_config_controller_0_n_48,
      \axi_fb_di_address_buff_reg[18]\(3) => axi_config_controller_0_n_49,
      \axi_fb_di_address_buff_reg[18]\(2) => axi_config_controller_0_n_50,
      \axi_fb_di_address_buff_reg[18]\(1) => axi_config_controller_0_n_51,
      \axi_fb_di_address_buff_reg[18]\(0) => axi_config_controller_0_n_52,
      \axi_fb_di_address_buff_reg[22]\(3) => axi_config_controller_0_n_53,
      \axi_fb_di_address_buff_reg[22]\(2) => axi_config_controller_0_n_54,
      \axi_fb_di_address_buff_reg[22]\(1) => axi_config_controller_0_n_55,
      \axi_fb_di_address_buff_reg[22]\(0) => axi_config_controller_0_n_56,
      \axi_fb_di_address_buff_reg[26]\(3) => axi_config_controller_0_n_57,
      \axi_fb_di_address_buff_reg[26]\(2) => axi_config_controller_0_n_58,
      \axi_fb_di_address_buff_reg[26]\(1) => axi_config_controller_0_n_59,
      \axi_fb_di_address_buff_reg[26]\(0) => axi_config_controller_0_n_60,
      \axi_fb_di_address_buff_reg[30]\(3) => axi_config_controller_0_n_61,
      \axi_fb_di_address_buff_reg[30]\(2) => axi_config_controller_0_n_62,
      \axi_fb_di_address_buff_reg[30]\(1) => axi_config_controller_0_n_63,
      \axi_fb_di_address_buff_reg[30]\(0) => axi_config_controller_0_n_64,
      \axi_fb_di_address_buff_reg[31]\(0) => axi_config_controller_0_n_7,
      \axi_fb_di_address_buff_reg[7]\(0) => axi_config_controller_0_n_40,
      error_reg(1 downto 0) => error_reg(1 downto 0),
      s_axi_config_araddr(3 downto 0) => s_axi_config_araddr(3 downto 0),
      s_axi_config_arprot(0) => s_axi_config_arprot(0),
      s_axi_config_arready => s_axi_config_arready,
      s_axi_config_arvalid => s_axi_config_arvalid,
      s_axi_config_awaddr(3 downto 0) => s_axi_config_awaddr(3 downto 0),
      s_axi_config_awprot(0) => s_axi_config_awprot(0),
      s_axi_config_awready => s_axi_config_awready,
      s_axi_config_awvalid => s_axi_config_awvalid,
      s_axi_config_bready => s_axi_config_bready,
      s_axi_config_bresp(0) => s_axi_config_bresp(0),
      s_axi_config_bvalid => s_axi_config_bvalid,
      s_axi_config_rdata(31 downto 0) => s_axi_config_rdata(31 downto 0),
      \s_axi_config_rdata_reg[0]_0\(0) => start_reg(0),
      \s_axi_config_rdata_reg[30]_0\(30) => axi_config_controller_0_n_8,
      \s_axi_config_rdata_reg[30]_0\(29) => axi_config_controller_0_n_9,
      \s_axi_config_rdata_reg[30]_0\(28) => axi_config_controller_0_n_10,
      \s_axi_config_rdata_reg[30]_0\(27) => axi_config_controller_0_n_11,
      \s_axi_config_rdata_reg[30]_0\(26) => axi_config_controller_0_n_12,
      \s_axi_config_rdata_reg[30]_0\(25) => axi_config_controller_0_n_13,
      \s_axi_config_rdata_reg[30]_0\(24) => axi_config_controller_0_n_14,
      \s_axi_config_rdata_reg[30]_0\(23) => axi_config_controller_0_n_15,
      \s_axi_config_rdata_reg[30]_0\(22) => axi_config_controller_0_n_16,
      \s_axi_config_rdata_reg[30]_0\(21) => axi_config_controller_0_n_17,
      \s_axi_config_rdata_reg[30]_0\(20) => axi_config_controller_0_n_18,
      \s_axi_config_rdata_reg[30]_0\(19) => axi_config_controller_0_n_19,
      \s_axi_config_rdata_reg[30]_0\(18) => axi_config_controller_0_n_20,
      \s_axi_config_rdata_reg[30]_0\(17) => axi_config_controller_0_n_21,
      \s_axi_config_rdata_reg[30]_0\(16) => axi_config_controller_0_n_22,
      \s_axi_config_rdata_reg[30]_0\(15) => axi_config_controller_0_n_23,
      \s_axi_config_rdata_reg[30]_0\(14) => axi_config_controller_0_n_24,
      \s_axi_config_rdata_reg[30]_0\(13) => axi_config_controller_0_n_25,
      \s_axi_config_rdata_reg[30]_0\(12) => axi_config_controller_0_n_26,
      \s_axi_config_rdata_reg[30]_0\(11) => axi_config_controller_0_n_27,
      \s_axi_config_rdata_reg[30]_0\(10) => axi_config_controller_0_n_28,
      \s_axi_config_rdata_reg[30]_0\(9) => axi_config_controller_0_n_29,
      \s_axi_config_rdata_reg[30]_0\(8) => axi_config_controller_0_n_30,
      \s_axi_config_rdata_reg[30]_0\(7) => axi_config_controller_0_n_31,
      \s_axi_config_rdata_reg[30]_0\(6) => axi_config_controller_0_n_32,
      \s_axi_config_rdata_reg[30]_0\(5) => axi_config_controller_0_n_33,
      \s_axi_config_rdata_reg[30]_0\(4) => axi_config_controller_0_n_34,
      \s_axi_config_rdata_reg[30]_0\(3) => axi_config_controller_0_n_35,
      \s_axi_config_rdata_reg[30]_0\(2) => axi_config_controller_0_n_36,
      \s_axi_config_rdata_reg[30]_0\(1) => axi_config_controller_0_n_37,
      \s_axi_config_rdata_reg[30]_0\(0) => axi_config_controller_0_n_38,
      s_axi_config_rready => s_axi_config_rready,
      s_axi_config_rresp(0) => s_axi_config_rresp(0),
      s_axi_config_rvalid => s_axi_config_rvalid,
      s_axi_config_wdata(31 downto 0) => s_axi_config_wdata(31 downto 0),
      s_axi_config_wready => s_axi_config_wready,
      s_axi_config_wstrb(3 downto 0) => s_axi_config_wstrb(3 downto 0),
      s_axi_config_wvalid => s_axi_config_wvalid
    );
axi_fb_controller_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_fb_controller
     port map (
      D(31 downto 0) => di_address(31 downto 0),
      axi_aclk => axi_aclk,
      axi_aresetn => \^reset\,
      axi_fb_enable => axi_fb_enable,
      axi_fb_ready => axi_fb_ready,
      blk_wea_reg => axi_fb_controller_0_n_3,
      error_reg(1 downto 0) => error_reg(1 downto 0),
      m_axi_fb_araddr(31 downto 0) => m_axi_fb_araddr(31 downto 0),
      m_axi_fb_arready => m_axi_fb_arready,
      m_axi_fb_arvalid => m_axi_fb_arvalid,
      m_axi_fb_rlast => m_axi_fb_rlast,
      m_axi_fb_rready => \^m_axi_fb_rready\,
      m_axi_fb_rresp(1 downto 0) => m_axi_fb_rresp(1 downto 0),
      m_axi_fb_rvalid => m_axi_fb_rvalid
    );
clock_vga_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clock,
      O => clock_vga_i_1_n_0
    );
clock_vga_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => clock_vga_i_1_n_0,
      Q => clock,
      R => \^reset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    h_sync : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_fb_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_fb_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_fb_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_fb_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_fb_awlock : out STD_LOGIC;
    m_axi_fb_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_fb_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_fb_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_fb_awvalid : out STD_LOGIC;
    m_axi_fb_awready : in STD_LOGIC;
    m_axi_fb_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_fb_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_fb_wlast : out STD_LOGIC;
    m_axi_fb_wvalid : out STD_LOGIC;
    m_axi_fb_wready : in STD_LOGIC;
    m_axi_fb_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_fb_bvalid : in STD_LOGIC;
    m_axi_fb_bready : out STD_LOGIC;
    m_axi_fb_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_fb_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_fb_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_fb_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_fb_arlock : out STD_LOGIC;
    m_axi_fb_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_fb_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_fb_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_fb_arvalid : out STD_LOGIC;
    m_axi_fb_arready : in STD_LOGIC;
    m_axi_fb_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_fb_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_fb_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_fb_rlast : in STD_LOGIC;
    m_axi_fb_rvalid : in STD_LOGIC;
    m_axi_fb_rready : out STD_LOGIC;
    s_axi_config_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_config_awvalid : in STD_LOGIC;
    s_axi_config_awready : out STD_LOGIC;
    s_axi_config_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_wvalid : in STD_LOGIC;
    s_axi_config_wready : out STD_LOGIC;
    s_axi_config_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_bvalid : out STD_LOGIC;
    s_axi_config_bready : in STD_LOGIC;
    s_axi_config_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_config_arvalid : in STD_LOGIC;
    s_axi_config_arready : out STD_LOGIC;
    s_axi_config_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_rvalid : out STD_LOGIC;
    s_axi_config_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_VGA_0_0,VGA_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "VGA_v1_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \B_n_0_[0]\ : STD_LOGIC;
  signal \B_n_0_[1]\ : STD_LOGIC;
  signal U0_n_1 : STD_LOGIC;
  signal U0_n_2 : STD_LOGIC;
  signal U0_n_3 : STD_LOGIC;
  signal \VGA_controller_0/clock_vga\ : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal \^s_axi_config_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_config_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of axi_aclk : signal is "xilinx.com:signal:clock:1.0 axi_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of axi_aclk : signal is "XIL_INTERFACENAME axi_aclk, ASSOCIATED_RESET axi_aresetn, ASSOCIATED_BUSIF s_axi_config:m_axi_fb, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of axi_aresetn : signal is "xilinx.com:signal:reset:1.0 axi_aresetn RST";
  attribute x_interface_parameter of axi_aresetn : signal is "XIL_INTERFACENAME axi_aresetn, POLARITY ACTIVE_LOW";
  attribute x_interface_info of m_axi_fb_arlock : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb ARLOCK";
  attribute x_interface_info of m_axi_fb_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb ARREADY";
  attribute x_interface_info of m_axi_fb_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb ARVALID";
  attribute x_interface_info of m_axi_fb_awlock : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb AWLOCK";
  attribute x_interface_info of m_axi_fb_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb AWREADY";
  attribute x_interface_info of m_axi_fb_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb AWVALID";
  attribute x_interface_info of m_axi_fb_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb BREADY";
  attribute x_interface_info of m_axi_fb_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb BVALID";
  attribute x_interface_info of m_axi_fb_rlast : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb RLAST";
  attribute x_interface_info of m_axi_fb_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb RREADY";
  attribute x_interface_info of m_axi_fb_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb RVALID";
  attribute x_interface_info of m_axi_fb_wlast : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb WLAST";
  attribute x_interface_info of m_axi_fb_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb WREADY";
  attribute x_interface_info of m_axi_fb_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb WVALID";
  attribute x_interface_info of s_axi_config_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_config ARREADY";
  attribute x_interface_info of s_axi_config_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_config ARVALID";
  attribute x_interface_info of s_axi_config_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_config AWREADY";
  attribute x_interface_info of s_axi_config_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_config AWVALID";
  attribute x_interface_info of s_axi_config_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_config BREADY";
  attribute x_interface_info of s_axi_config_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_config BVALID";
  attribute x_interface_info of s_axi_config_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_config RREADY";
  attribute x_interface_info of s_axi_config_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_config RVALID";
  attribute x_interface_info of s_axi_config_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_config WREADY";
  attribute x_interface_info of s_axi_config_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_config WVALID";
  attribute x_interface_info of m_axi_fb_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb ARADDR";
  attribute x_interface_info of m_axi_fb_arburst : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb ARBURST";
  attribute x_interface_info of m_axi_fb_arcache : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb ARCACHE";
  attribute x_interface_info of m_axi_fb_arid : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb ARID";
  attribute x_interface_info of m_axi_fb_arlen : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb ARLEN";
  attribute x_interface_info of m_axi_fb_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb ARPROT";
  attribute x_interface_info of m_axi_fb_arqos : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb ARQOS";
  attribute x_interface_info of m_axi_fb_arsize : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb ARSIZE";
  attribute x_interface_info of m_axi_fb_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb AWADDR";
  attribute x_interface_info of m_axi_fb_awburst : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb AWBURST";
  attribute x_interface_info of m_axi_fb_awcache : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb AWCACHE";
  attribute x_interface_info of m_axi_fb_awid : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb AWID";
  attribute x_interface_parameter of m_axi_fb_awid : signal is "XIL_INTERFACENAME m_axi_fb, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of m_axi_fb_awlen : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb AWLEN";
  attribute x_interface_info of m_axi_fb_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb AWPROT";
  attribute x_interface_info of m_axi_fb_awqos : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb AWQOS";
  attribute x_interface_info of m_axi_fb_awsize : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb AWSIZE";
  attribute x_interface_info of m_axi_fb_bid : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb BID";
  attribute x_interface_info of m_axi_fb_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb BRESP";
  attribute x_interface_info of m_axi_fb_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb RDATA";
  attribute x_interface_info of m_axi_fb_rid : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb RID";
  attribute x_interface_info of m_axi_fb_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb RRESP";
  attribute x_interface_info of m_axi_fb_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb WDATA";
  attribute x_interface_info of m_axi_fb_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi_fb WSTRB";
  attribute x_interface_info of s_axi_config_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_config ARADDR";
  attribute x_interface_info of s_axi_config_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_config ARPROT";
  attribute x_interface_info of s_axi_config_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_config AWADDR";
  attribute x_interface_parameter of s_axi_config_awaddr : signal is "XIL_INTERFACENAME s_axi_config, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_config_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_config AWPROT";
  attribute x_interface_info of s_axi_config_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_config BRESP";
  attribute x_interface_info of s_axi_config_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_config RDATA";
  attribute x_interface_info of s_axi_config_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_config RRESP";
  attribute x_interface_info of s_axi_config_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_config WDATA";
  attribute x_interface_info of s_axi_config_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_config WSTRB";
begin
  m_axi_fb_arburst(1) <= \<const0>\;
  m_axi_fb_arburst(0) <= \<const1>\;
  m_axi_fb_arcache(3) <= \<const0>\;
  m_axi_fb_arcache(2) <= \<const0>\;
  m_axi_fb_arcache(1) <= \<const1>\;
  m_axi_fb_arcache(0) <= \<const0>\;
  m_axi_fb_arid(0) <= \<const0>\;
  m_axi_fb_arlen(7) <= \<const1>\;
  m_axi_fb_arlen(6) <= \<const1>\;
  m_axi_fb_arlen(5) <= \<const1>\;
  m_axi_fb_arlen(4) <= \<const1>\;
  m_axi_fb_arlen(3) <= \<const1>\;
  m_axi_fb_arlen(2) <= \<const1>\;
  m_axi_fb_arlen(1) <= \<const1>\;
  m_axi_fb_arlen(0) <= \<const1>\;
  m_axi_fb_arlock <= \<const0>\;
  m_axi_fb_arprot(2) <= \<const0>\;
  m_axi_fb_arprot(1) <= \<const0>\;
  m_axi_fb_arprot(0) <= \<const0>\;
  m_axi_fb_arqos(3) <= \<const0>\;
  m_axi_fb_arqos(2) <= \<const0>\;
  m_axi_fb_arqos(1) <= \<const0>\;
  m_axi_fb_arqos(0) <= \<const0>\;
  m_axi_fb_arsize(2) <= \<const0>\;
  m_axi_fb_arsize(1) <= \<const1>\;
  m_axi_fb_arsize(0) <= \<const1>\;
  m_axi_fb_awaddr(31) <= \<const0>\;
  m_axi_fb_awaddr(30) <= \<const0>\;
  m_axi_fb_awaddr(29) <= \<const0>\;
  m_axi_fb_awaddr(28) <= \<const0>\;
  m_axi_fb_awaddr(27) <= \<const0>\;
  m_axi_fb_awaddr(26) <= \<const0>\;
  m_axi_fb_awaddr(25) <= \<const0>\;
  m_axi_fb_awaddr(24) <= \<const0>\;
  m_axi_fb_awaddr(23) <= \<const0>\;
  m_axi_fb_awaddr(22) <= \<const0>\;
  m_axi_fb_awaddr(21) <= \<const0>\;
  m_axi_fb_awaddr(20) <= \<const0>\;
  m_axi_fb_awaddr(19) <= \<const0>\;
  m_axi_fb_awaddr(18) <= \<const0>\;
  m_axi_fb_awaddr(17) <= \<const0>\;
  m_axi_fb_awaddr(16) <= \<const0>\;
  m_axi_fb_awaddr(15) <= \<const0>\;
  m_axi_fb_awaddr(14) <= \<const0>\;
  m_axi_fb_awaddr(13) <= \<const0>\;
  m_axi_fb_awaddr(12) <= \<const0>\;
  m_axi_fb_awaddr(11) <= \<const0>\;
  m_axi_fb_awaddr(10) <= \<const0>\;
  m_axi_fb_awaddr(9) <= \<const0>\;
  m_axi_fb_awaddr(8) <= \<const0>\;
  m_axi_fb_awaddr(7) <= \<const0>\;
  m_axi_fb_awaddr(6) <= \<const0>\;
  m_axi_fb_awaddr(5) <= \<const0>\;
  m_axi_fb_awaddr(4) <= \<const0>\;
  m_axi_fb_awaddr(3) <= \<const0>\;
  m_axi_fb_awaddr(2) <= \<const0>\;
  m_axi_fb_awaddr(1) <= \<const0>\;
  m_axi_fb_awaddr(0) <= \<const0>\;
  m_axi_fb_awburst(1) <= \<const0>\;
  m_axi_fb_awburst(0) <= \<const0>\;
  m_axi_fb_awcache(3) <= \<const0>\;
  m_axi_fb_awcache(2) <= \<const0>\;
  m_axi_fb_awcache(1) <= \<const0>\;
  m_axi_fb_awcache(0) <= \<const0>\;
  m_axi_fb_awid(0) <= \<const0>\;
  m_axi_fb_awlen(7) <= \<const0>\;
  m_axi_fb_awlen(6) <= \<const0>\;
  m_axi_fb_awlen(5) <= \<const0>\;
  m_axi_fb_awlen(4) <= \<const0>\;
  m_axi_fb_awlen(3) <= \<const0>\;
  m_axi_fb_awlen(2) <= \<const0>\;
  m_axi_fb_awlen(1) <= \<const0>\;
  m_axi_fb_awlen(0) <= \<const0>\;
  m_axi_fb_awlock <= \<const0>\;
  m_axi_fb_awprot(2) <= \<const0>\;
  m_axi_fb_awprot(1) <= \<const0>\;
  m_axi_fb_awprot(0) <= \<const0>\;
  m_axi_fb_awqos(3) <= \<const0>\;
  m_axi_fb_awqos(2) <= \<const0>\;
  m_axi_fb_awqos(1) <= \<const0>\;
  m_axi_fb_awqos(0) <= \<const0>\;
  m_axi_fb_awsize(2) <= \<const0>\;
  m_axi_fb_awsize(1) <= \<const0>\;
  m_axi_fb_awsize(0) <= \<const0>\;
  m_axi_fb_awvalid <= \<const0>\;
  m_axi_fb_bready <= \<const0>\;
  m_axi_fb_wdata(63) <= \<const0>\;
  m_axi_fb_wdata(62) <= \<const0>\;
  m_axi_fb_wdata(61) <= \<const0>\;
  m_axi_fb_wdata(60) <= \<const0>\;
  m_axi_fb_wdata(59) <= \<const0>\;
  m_axi_fb_wdata(58) <= \<const0>\;
  m_axi_fb_wdata(57) <= \<const0>\;
  m_axi_fb_wdata(56) <= \<const0>\;
  m_axi_fb_wdata(55) <= \<const0>\;
  m_axi_fb_wdata(54) <= \<const0>\;
  m_axi_fb_wdata(53) <= \<const0>\;
  m_axi_fb_wdata(52) <= \<const0>\;
  m_axi_fb_wdata(51) <= \<const0>\;
  m_axi_fb_wdata(50) <= \<const0>\;
  m_axi_fb_wdata(49) <= \<const0>\;
  m_axi_fb_wdata(48) <= \<const0>\;
  m_axi_fb_wdata(47) <= \<const0>\;
  m_axi_fb_wdata(46) <= \<const0>\;
  m_axi_fb_wdata(45) <= \<const0>\;
  m_axi_fb_wdata(44) <= \<const0>\;
  m_axi_fb_wdata(43) <= \<const0>\;
  m_axi_fb_wdata(42) <= \<const0>\;
  m_axi_fb_wdata(41) <= \<const0>\;
  m_axi_fb_wdata(40) <= \<const0>\;
  m_axi_fb_wdata(39) <= \<const0>\;
  m_axi_fb_wdata(38) <= \<const0>\;
  m_axi_fb_wdata(37) <= \<const0>\;
  m_axi_fb_wdata(36) <= \<const0>\;
  m_axi_fb_wdata(35) <= \<const0>\;
  m_axi_fb_wdata(34) <= \<const0>\;
  m_axi_fb_wdata(33) <= \<const0>\;
  m_axi_fb_wdata(32) <= \<const0>\;
  m_axi_fb_wdata(31) <= \<const0>\;
  m_axi_fb_wdata(30) <= \<const0>\;
  m_axi_fb_wdata(29) <= \<const0>\;
  m_axi_fb_wdata(28) <= \<const0>\;
  m_axi_fb_wdata(27) <= \<const0>\;
  m_axi_fb_wdata(26) <= \<const0>\;
  m_axi_fb_wdata(25) <= \<const0>\;
  m_axi_fb_wdata(24) <= \<const0>\;
  m_axi_fb_wdata(23) <= \<const0>\;
  m_axi_fb_wdata(22) <= \<const0>\;
  m_axi_fb_wdata(21) <= \<const0>\;
  m_axi_fb_wdata(20) <= \<const0>\;
  m_axi_fb_wdata(19) <= \<const0>\;
  m_axi_fb_wdata(18) <= \<const0>\;
  m_axi_fb_wdata(17) <= \<const0>\;
  m_axi_fb_wdata(16) <= \<const0>\;
  m_axi_fb_wdata(15) <= \<const0>\;
  m_axi_fb_wdata(14) <= \<const0>\;
  m_axi_fb_wdata(13) <= \<const0>\;
  m_axi_fb_wdata(12) <= \<const0>\;
  m_axi_fb_wdata(11) <= \<const0>\;
  m_axi_fb_wdata(10) <= \<const0>\;
  m_axi_fb_wdata(9) <= \<const0>\;
  m_axi_fb_wdata(8) <= \<const0>\;
  m_axi_fb_wdata(7) <= \<const0>\;
  m_axi_fb_wdata(6) <= \<const0>\;
  m_axi_fb_wdata(5) <= \<const0>\;
  m_axi_fb_wdata(4) <= \<const0>\;
  m_axi_fb_wdata(3) <= \<const0>\;
  m_axi_fb_wdata(2) <= \<const0>\;
  m_axi_fb_wdata(1) <= \<const0>\;
  m_axi_fb_wdata(0) <= \<const0>\;
  m_axi_fb_wlast <= \<const0>\;
  m_axi_fb_wstrb(7) <= \<const0>\;
  m_axi_fb_wstrb(6) <= \<const0>\;
  m_axi_fb_wstrb(5) <= \<const0>\;
  m_axi_fb_wstrb(4) <= \<const0>\;
  m_axi_fb_wstrb(3) <= \<const0>\;
  m_axi_fb_wstrb(2) <= \<const0>\;
  m_axi_fb_wstrb(1) <= \<const0>\;
  m_axi_fb_wstrb(0) <= \<const0>\;
  m_axi_fb_wvalid <= \<const0>\;
  s_axi_config_bresp(1) <= \^s_axi_config_bresp\(1);
  s_axi_config_bresp(0) <= \<const0>\;
  s_axi_config_rresp(1) <= \^s_axi_config_rresp\(1);
  s_axi_config_rresp(0) <= \<const0>\;
\B[0]\: unisim.vcomponents.FDRE
     port map (
      C => \VGA_controller_0/clock_vga\,
      CE => U0_n_1,
      D => U0_n_3,
      Q => \B_n_0_[0]\,
      R => reset
    );
\B[1]\: unisim.vcomponents.FDRE
     port map (
      C => \VGA_controller_0/clock_vga\,
      CE => U0_n_1,
      D => U0_n_2,
      Q => \B_n_0_[1]\,
      R => reset
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_v1_0
     port map (
      D(1) => U0_n_2,
      D(0) => U0_n_3,
      Q(1) => \B_n_0_[1]\,
      Q(0) => \B_n_0_[0]\,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      clock_vga => \VGA_controller_0/clock_vga\,
      h_sync => h_sync,
      m_axi_fb_araddr(31 downto 0) => m_axi_fb_araddr(31 downto 0),
      m_axi_fb_arready => m_axi_fb_arready,
      m_axi_fb_arvalid => m_axi_fb_arvalid,
      m_axi_fb_rdata(63 downto 0) => m_axi_fb_rdata(63 downto 0),
      m_axi_fb_rlast => m_axi_fb_rlast,
      m_axi_fb_rready => m_axi_fb_rready,
      m_axi_fb_rresp(1 downto 0) => m_axi_fb_rresp(1 downto 0),
      m_axi_fb_rvalid => m_axi_fb_rvalid,
      reset => reset,
      s_axi_config_araddr(3 downto 0) => s_axi_config_araddr(3 downto 0),
      s_axi_config_arprot(0) => s_axi_config_arprot(2),
      s_axi_config_arready => s_axi_config_arready,
      s_axi_config_arvalid => s_axi_config_arvalid,
      s_axi_config_awaddr(3 downto 0) => s_axi_config_awaddr(3 downto 0),
      s_axi_config_awprot(0) => s_axi_config_awprot(2),
      s_axi_config_awready => s_axi_config_awready,
      s_axi_config_awvalid => s_axi_config_awvalid,
      s_axi_config_bready => s_axi_config_bready,
      s_axi_config_bresp(0) => \^s_axi_config_bresp\(1),
      s_axi_config_bvalid => s_axi_config_bvalid,
      s_axi_config_rdata(31 downto 0) => s_axi_config_rdata(31 downto 0),
      s_axi_config_rready => s_axi_config_rready,
      s_axi_config_rresp(0) => \^s_axi_config_rresp\(1),
      s_axi_config_rvalid => s_axi_config_rvalid,
      s_axi_config_wdata(31 downto 0) => s_axi_config_wdata(31 downto 0),
      s_axi_config_wready => s_axi_config_wready,
      s_axi_config_wstrb(3 downto 0) => s_axi_config_wstrb(3 downto 0),
      s_axi_config_wvalid => s_axi_config_wvalid,
      v_sync => v_sync,
      vga_b(3 downto 0) => vga_b(3 downto 0),
      vga_g(3 downto 0) => vga_g(3 downto 0),
      vga_r(3 downto 0) => vga_r(3 downto 0),
      vga_synch_reg => U0_n_1
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
