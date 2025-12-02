-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/18/2013 15:28:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CHATTER IS
    PORT (
	SSW : OUT std_logic;
	clock : IN std_logic;
	SW : IN std_logic
	);
END CHATTER;

-- Design Ports Information
-- SSW	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CHATTER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SSW : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_SW : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \SSW~output_o\ : std_logic;
SIGNAL \SW~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \CNT1ms~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \CNT1ms~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \CNT1ms~2_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \CNT1ms~3_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \CNT1ms~5_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \CNT1ms~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \CHATT[1]~feeder_combout\ : std_logic;
SIGNAL \CHATT[2]~feeder_combout\ : std_logic;
SIGNAL \SSW~0_combout\ : std_logic;
SIGNAL CNT1ms : std_logic_vector(15 DOWNTO 0);
SIGNAL CHATT : std_logic_vector(3 DOWNTO 0);

BEGIN

SSW <= ww_SSW;
ww_clock <= clock;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: LCCOMB_X69_Y70_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (CNT1ms(3) & (!\Add0~5\)) # (!CNT1ms(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!CNT1ms(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X69_Y70_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (CNT1ms(5) & (!\Add0~9\)) # (!CNT1ms(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!CNT1ms(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X69_Y70_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (CNT1ms(13) & (!\Add0~25\)) # (!CNT1ms(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!CNT1ms(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X69_Y70_N7
\CNT1ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(3));

-- Location: LCCOMB_X70_Y70_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (CNT1ms(0) & (CNT1ms(2) & (CNT1ms(3) & CNT1ms(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(0),
	datab => CNT1ms(2),
	datac => CNT1ms(3),
	datad => CNT1ms(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X69_Y70_N11
\CNT1ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(5));

-- Location: FF_X69_Y70_N27
\CNT1ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(13));

-- Location: IOIBUF_X0_Y36_N15
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOOBUF_X72_Y73_N23
\SSW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SSW~0_combout\,
	devoe => ww_devoe,
	o => \SSW~output_o\);

-- Location: IOIBUF_X115_Y35_N22
\SW~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW,
	o => \SW~input_o\);

-- Location: LCCOMB_X69_Y70_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = CNT1ms(0) $ (VCC)
-- \Add0~1\ = CARRY(CNT1ms(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CNT1ms(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X69_Y70_N1
\CNT1ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(0));

-- Location: LCCOMB_X69_Y70_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (CNT1ms(1) & (!\Add0~1\)) # (!CNT1ms(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!CNT1ms(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT1ms(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X69_Y70_N3
\CNT1ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(1));

-- Location: LCCOMB_X69_Y70_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (CNT1ms(2) & (\Add0~3\ $ (GND))) # (!CNT1ms(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((CNT1ms(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT1ms(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X69_Y70_N5
\CNT1ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(2));

-- Location: LCCOMB_X69_Y70_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (CNT1ms(4) & (\Add0~7\ $ (GND))) # (!CNT1ms(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((CNT1ms(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT1ms(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X70_Y70_N0
\CNT1ms~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT1ms~1_combout\ = (!\Equal0~4_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \Add0~8_combout\,
	combout => \CNT1ms~1_combout\);

-- Location: FF_X69_Y70_N19
\CNT1ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \CNT1ms~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(4));

-- Location: LCCOMB_X69_Y70_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (CNT1ms(6) & (\Add0~11\ $ (GND))) # (!CNT1ms(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((CNT1ms(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X70_Y70_N2
\CNT1ms~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT1ms~0_combout\ = (!\Equal0~4_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \Add0~12_combout\,
	combout => \CNT1ms~0_combout\);

-- Location: FF_X70_Y70_N3
\CNT1ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT1ms~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(6));

-- Location: LCCOMB_X69_Y70_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (CNT1ms(7) & (!\Add0~13\)) # (!CNT1ms(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!CNT1ms(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT1ms(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X69_Y70_N15
\CNT1ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(7));

-- Location: LCCOMB_X70_Y70_N20
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!CNT1ms(5) & (CNT1ms(6) & (!CNT1ms(4) & !CNT1ms(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(5),
	datab => CNT1ms(6),
	datac => CNT1ms(4),
	datad => CNT1ms(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X69_Y70_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (CNT1ms(8) & (\Add0~15\ $ (GND))) # (!CNT1ms(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((CNT1ms(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT1ms(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X70_Y70_N26
\CNT1ms~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT1ms~2_combout\ = (!\Equal0~4_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Add0~16_combout\,
	combout => \CNT1ms~2_combout\);

-- Location: FF_X70_Y70_N27
\CNT1ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT1ms~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(8));

-- Location: LCCOMB_X69_Y70_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (CNT1ms(9) & (!\Add0~17\)) # (!CNT1ms(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!CNT1ms(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT1ms(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X70_Y70_N28
\CNT1ms~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT1ms~3_combout\ = (!\Equal0~4_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \Add0~18_combout\,
	combout => \CNT1ms~3_combout\);

-- Location: FF_X70_Y70_N29
\CNT1ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT1ms~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(9));

-- Location: LCCOMB_X69_Y70_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (CNT1ms(10) & (\Add0~19\ $ (GND))) # (!CNT1ms(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((CNT1ms(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT1ms(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X69_Y70_N21
\CNT1ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(10));

-- Location: LCCOMB_X69_Y70_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (CNT1ms(11) & (!\Add0~21\)) # (!CNT1ms(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!CNT1ms(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X69_Y70_N23
\CNT1ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(11));

-- Location: LCCOMB_X70_Y70_N22
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (CNT1ms(8) & (!CNT1ms(11) & (CNT1ms(9) & !CNT1ms(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(8),
	datab => CNT1ms(11),
	datac => CNT1ms(9),
	datad => CNT1ms(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X69_Y70_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (CNT1ms(12) & (\Add0~23\ $ (GND))) # (!CNT1ms(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((CNT1ms(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT1ms(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X69_Y70_N25
\CNT1ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(12));

-- Location: LCCOMB_X69_Y70_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (CNT1ms(14) & (\Add0~27\ $ (GND))) # (!CNT1ms(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((CNT1ms(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X69_Y70_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = CNT1ms(15) $ (\Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT1ms(15),
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X70_Y70_N14
\CNT1ms~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT1ms~5_combout\ = (!\Equal0~4_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \Add0~30_combout\,
	combout => \CNT1ms~5_combout\);

-- Location: FF_X70_Y70_N15
\CNT1ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT1ms~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(15));

-- Location: LCCOMB_X70_Y70_N4
\CNT1ms~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT1ms~4_combout\ = (!\Equal0~4_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \Add0~28_combout\,
	combout => \CNT1ms~4_combout\);

-- Location: FF_X70_Y70_N5
\CNT1ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT1ms~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT1ms(14));

-- Location: LCCOMB_X70_Y70_N16
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!CNT1ms(13) & (CNT1ms(15) & (CNT1ms(14) & !CNT1ms(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(13),
	datab => CNT1ms(15),
	datac => CNT1ms(14),
	datad => CNT1ms(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X70_Y70_N30
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X70_Y70_N25
\CHATT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \SW~input_o\,
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHATT(0));

-- Location: LCCOMB_X70_Y70_N18
\CHATT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHATT[1]~feeder_combout\ = CHATT(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => CHATT(0),
	combout => \CHATT[1]~feeder_combout\);

-- Location: FF_X70_Y70_N19
\CHATT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CHATT[1]~feeder_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHATT(1));

-- Location: LCCOMB_X70_Y70_N8
\CHATT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHATT[2]~feeder_combout\ = CHATT(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => CHATT(1),
	combout => \CHATT[2]~feeder_combout\);

-- Location: FF_X70_Y70_N9
\CHATT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CHATT[2]~feeder_combout\,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHATT(2));

-- Location: FF_X70_Y70_N7
\CHATT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => CHATT(2),
	sload => VCC,
	ena => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHATT(3));

-- Location: LCCOMB_X70_Y70_N6
\SSW~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSW~0_combout\ = (CHATT(0)) # ((CHATT(2)) # ((CHATT(3)) # (CHATT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHATT(0),
	datab => CHATT(2),
	datac => CHATT(3),
	datad => CHATT(1),
	combout => \SSW~0_combout\);

ww_SSW <= \SSW~output_o\;
END structure;


