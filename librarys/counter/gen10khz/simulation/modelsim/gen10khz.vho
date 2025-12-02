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

-- DATE "08/30/2013 16:33:40"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	GEN10KHz IS
    PORT (
	Q : OUT std_logic;
	clock : IN std_logic
	);
END GEN10KHz;

-- Design Ports Information
-- Q	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF GEN10KHz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \CNT1ms~4_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \CNT1ms~1_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \CNT1ms~2_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \CNT1ms~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \CNT1ms~0_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \o~0_combout\ : std_logic;
SIGNAL \o~regout\ : std_logic;
SIGNAL CNT1ms : std_logic_vector(11 DOWNTO 0);

BEGIN

Q <= ww_Q;
ww_clock <= clock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

-- Location: LCCOMB_X28_Y35_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (CNT1ms(10) & (\Add0~19\ $ (GND))) # (!CNT1ms(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((CNT1ms(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X28_Y35_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = \Add0~21\ $ (CNT1ms(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => CNT1ms(11),
	cin => \Add0~21\,
	combout => \Add0~22_combout\);

-- Location: LCFF_X28_Y35_N31
\CNT1ms[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT1ms~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT1ms(11));

-- Location: LCCOMB_X28_Y35_N30
\CNT1ms~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT1ms~4_combout\ = (\Add0~22_combout\ & (((!\Equal0~1_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add0~22_combout\,
	combout => \CNT1ms~4_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y35_N0
\Add0~0\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y35_N1
\CNT1ms[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT1ms(0));

-- Location: LCCOMB_X28_Y35_N2
\Add0~2\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y35_N3
\CNT1ms[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT1ms(1));

-- Location: LCCOMB_X28_Y35_N4
\Add0~4\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y35_N6
\Add0~6\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y35_N8
\Add0~8\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y35_N9
\CNT1ms[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT1ms(4));

-- Location: LCCOMB_X28_Y35_N10
\Add0~10\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y35_N11
\CNT1ms[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT1ms(5));

-- Location: LCCOMB_X27_Y35_N30
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (CNT1ms(7) & (!CNT1ms(5) & (CNT1ms(6) & !CNT1ms(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(7),
	datab => CNT1ms(5),
	datac => CNT1ms(6),
	datad => CNT1ms(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X28_Y35_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (CNT1ms(6) & (\Add0~11\ $ (GND))) # (!CNT1ms(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((CNT1ms(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT1ms(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X28_Y35_N26
\CNT1ms~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT1ms~1_combout\ = (\Add0~12_combout\ & (((!\Equal0~1_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add0~12_combout\,
	combout => \CNT1ms~1_combout\);

-- Location: LCFF_X28_Y35_N27
\CNT1ms[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT1ms~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT1ms(6));

-- Location: LCCOMB_X28_Y35_N14
\Add0~14\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X27_Y35_N16
\CNT1ms~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT1ms~2_combout\ = (\Add0~14_combout\ & (((!\Equal0~1_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add0~14_combout\,
	datad => \Equal0~1_combout\,
	combout => \CNT1ms~2_combout\);

-- Location: LCFF_X27_Y35_N17
\CNT1ms[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT1ms~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT1ms(7));

-- Location: LCCOMB_X28_Y35_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (CNT1ms(8) & (\Add0~15\ $ (GND))) # (!CNT1ms(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((CNT1ms(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X28_Y35_N18
\Add0~18\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y35_N19
\CNT1ms[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT1ms(9));

-- Location: LCFF_X28_Y35_N21
\CNT1ms[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT1ms(10));

-- Location: LCCOMB_X28_Y35_N24
\CNT1ms~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT1ms~3_combout\ = (\Add0~16_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add0~16_combout\,
	datad => \Equal0~0_combout\,
	combout => \CNT1ms~3_combout\);

-- Location: LCFF_X28_Y35_N25
\CNT1ms[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT1ms~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT1ms(8));

-- Location: LCCOMB_X27_Y35_N12
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (CNT1ms(11) & (!CNT1ms(10) & (CNT1ms(8) & !CNT1ms(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(11),
	datab => CNT1ms(10),
	datac => CNT1ms(8),
	datad => CNT1ms(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X28_Y35_N28
\CNT1ms~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT1ms~0_combout\ = (\Add0~4_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add0~4_combout\,
	datad => \Equal0~0_combout\,
	combout => \CNT1ms~0_combout\);

-- Location: LCFF_X28_Y35_N29
\CNT1ms[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT1ms~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT1ms(2));

-- Location: LCFF_X28_Y35_N7
\CNT1ms[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT1ms(3));

-- Location: LCCOMB_X27_Y35_N14
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (CNT1ms(1) & (!CNT1ms(2) & (CNT1ms(0) & !CNT1ms(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT1ms(1),
	datab => CNT1ms(2),
	datac => CNT1ms(0),
	datad => CNT1ms(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y35_N20
\o~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \o~0_combout\ = \o~regout\ $ (((\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \o~regout\,
	datad => \Equal0~1_combout\,
	combout => \o~0_combout\);

-- Location: LCFF_X27_Y35_N21
o : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o~regout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \o~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q);
END structure;


