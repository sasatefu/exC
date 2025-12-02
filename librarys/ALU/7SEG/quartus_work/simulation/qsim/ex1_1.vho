-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 Patches 1.02i SJ Lite Edition"

-- DATE "10/03/2025 22:43:41"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ex1_1 IS
    PORT (
	\2\ : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	\1\ : OUT std_logic;
	\0\ : OUT std_logic
	);
END ex1_1;

-- Design Ports Information
-- 2	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 1	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 0	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex1_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_2\ : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL \ww_1\ : std_logic;
SIGNAL \ww_0\ : std_logic;
SIGNAL \2~output_o\ : std_logic;
SIGNAL \1~output_o\ : std_logic;
SIGNAL \0~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst42~0_combout\ : std_logic;
SIGNAL \inst38~0_combout\ : std_logic;
SIGNAL \inst23~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst23~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

\2\ <= \ww_2\;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
\1\ <= \ww_1\;
\0\ <= \ww_0\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst23~0_combout\ <= NOT \inst23~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y29_N16
\2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst42~0_combout\,
	devoe => ww_devoe,
	o => \2~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst38~0_combout\,
	devoe => ww_devoe,
	o => \1~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst23~0_combout\,
	devoe => ww_devoe,
	o => \0~output_o\);

-- Location: IOIBUF_X0_Y30_N1
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X1_Y30_N16
\inst42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst42~0_combout\ = (\A~input_o\ & (((!\C~input_o\ & \D~input_o\)) # (!\B~input_o\))) # (!\A~input_o\ & (((\D~input_o\) # (\B~input_o\)) # (!\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \D~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \inst42~0_combout\);

-- Location: LCCOMB_X1_Y30_N18
\inst38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst38~0_combout\ = (\C~input_o\ & ((\D~input_o\ & (!\A~input_o\)) # (!\D~input_o\ & ((!\B~input_o\))))) # (!\C~input_o\ & ((\D~input_o\ $ (!\A~input_o\)) # (!\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \D~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \inst38~0_combout\);

-- Location: LCCOMB_X1_Y30_N20
\inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23~0_combout\ = (\A~input_o\ & (\D~input_o\ & (\C~input_o\ $ (\B~input_o\)))) # (!\A~input_o\ & (!\C~input_o\ & (\D~input_o\ $ (\B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \D~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \inst23~0_combout\);

\ww_2\ <= \2~output_o\;

\ww_1\ <= \1~output_o\;

\ww_0\ <= \0~output_o\;
END structure;


