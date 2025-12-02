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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/10/2013 15:12:59"

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

ENTITY 	COUNTER500ms IS
    PORT (
	count : OUT std_logic_vector(15 DOWNTO 0);
	clock : IN std_logic;
	pulse_in : IN std_logic;
	reset : IN std_logic
	);
END COUNTER500ms;

-- Design Ports Information
-- count[0]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[2]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[3]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[5]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[6]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[7]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[8]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[9]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[10]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[11]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[12]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[13]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[14]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[15]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pulse_in	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF COUNTER500ms IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_count : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_pulse_in : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \CNT500ms~0_combout\ : std_logic;
SIGNAL \CNT500ms~3_combout\ : std_logic;
SIGNAL \pulse_in~combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \counter[0][0]~15_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \CNT500ms~10_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \CNT500ms~8_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \CNT500ms~7_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \CNT500ms~6_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \CNT500ms~5_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \CNT500ms~4_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \CNT500ms~1_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \CNT500ms~2_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \CNT500ms~9_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \CNT500ms~11_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \old_pulse_in~0_combout\ : std_logic;
SIGNAL \old_pulse_in~regout\ : std_logic;
SIGNAL \counter[0][0]~17_combout\ : std_logic;
SIGNAL \counter[0][0]~regout\ : std_logic;
SIGNAL \counter[1][0]~feeder_combout\ : std_logic;
SIGNAL \counter[1][0]~regout\ : std_logic;
SIGNAL \tmp[14]~0_combout\ : std_logic;
SIGNAL \count[1]~reg0feeder_combout\ : std_logic;
SIGNAL \count[1]~reg0_regout\ : std_logic;
SIGNAL \counter[0][0]~16\ : std_logic;
SIGNAL \counter[0][1]~18_combout\ : std_logic;
SIGNAL \counter[0][1]~regout\ : std_logic;
SIGNAL \counter[1][1]~feeder_combout\ : std_logic;
SIGNAL \counter[1][1]~regout\ : std_logic;
SIGNAL \count[2]~reg0feeder_combout\ : std_logic;
SIGNAL \count[2]~reg0_regout\ : std_logic;
SIGNAL \counter[0][1]~19\ : std_logic;
SIGNAL \counter[0][2]~20_combout\ : std_logic;
SIGNAL \counter[0][2]~regout\ : std_logic;
SIGNAL \counter[1][2]~feeder_combout\ : std_logic;
SIGNAL \counter[1][2]~regout\ : std_logic;
SIGNAL \tmp[2]~feeder_combout\ : std_logic;
SIGNAL \count[3]~reg0feeder_combout\ : std_logic;
SIGNAL \count[3]~reg0_regout\ : std_logic;
SIGNAL \counter[0][2]~21\ : std_logic;
SIGNAL \counter[0][3]~22_combout\ : std_logic;
SIGNAL \counter[0][3]~regout\ : std_logic;
SIGNAL \counter[1][3]~feeder_combout\ : std_logic;
SIGNAL \counter[1][3]~regout\ : std_logic;
SIGNAL \tmp[3]~feeder_combout\ : std_logic;
SIGNAL \count[4]~reg0feeder_combout\ : std_logic;
SIGNAL \count[4]~reg0_regout\ : std_logic;
SIGNAL \counter[0][3]~23\ : std_logic;
SIGNAL \counter[0][4]~24_combout\ : std_logic;
SIGNAL \counter[0][4]~regout\ : std_logic;
SIGNAL \counter[1][4]~feeder_combout\ : std_logic;
SIGNAL \counter[1][4]~regout\ : std_logic;
SIGNAL \tmp[4]~feeder_combout\ : std_logic;
SIGNAL \count[5]~reg0feeder_combout\ : std_logic;
SIGNAL \count[5]~reg0_regout\ : std_logic;
SIGNAL \counter[0][4]~25\ : std_logic;
SIGNAL \counter[0][5]~26_combout\ : std_logic;
SIGNAL \counter[0][5]~regout\ : std_logic;
SIGNAL \counter[1][5]~regout\ : std_logic;
SIGNAL \tmp[5]~feeder_combout\ : std_logic;
SIGNAL \count[6]~reg0feeder_combout\ : std_logic;
SIGNAL \count[6]~reg0_regout\ : std_logic;
SIGNAL \counter[0][5]~27\ : std_logic;
SIGNAL \counter[0][6]~28_combout\ : std_logic;
SIGNAL \counter[0][6]~regout\ : std_logic;
SIGNAL \counter[1][6]~regout\ : std_logic;
SIGNAL \tmp[6]~feeder_combout\ : std_logic;
SIGNAL \count[7]~reg0feeder_combout\ : std_logic;
SIGNAL \count[7]~reg0_regout\ : std_logic;
SIGNAL \counter[0][6]~29\ : std_logic;
SIGNAL \counter[0][7]~30_combout\ : std_logic;
SIGNAL \counter[0][7]~regout\ : std_logic;
SIGNAL \counter[1][7]~regout\ : std_logic;
SIGNAL \tmp[7]~feeder_combout\ : std_logic;
SIGNAL \count[8]~reg0feeder_combout\ : std_logic;
SIGNAL \count[8]~reg0_regout\ : std_logic;
SIGNAL \counter[0][7]~31\ : std_logic;
SIGNAL \counter[0][8]~32_combout\ : std_logic;
SIGNAL \counter[0][8]~regout\ : std_logic;
SIGNAL \counter[1][8]~feeder_combout\ : std_logic;
SIGNAL \counter[1][8]~regout\ : std_logic;
SIGNAL \tmp[8]~feeder_combout\ : std_logic;
SIGNAL \count[9]~reg0feeder_combout\ : std_logic;
SIGNAL \count[9]~reg0_regout\ : std_logic;
SIGNAL \counter[0][8]~33\ : std_logic;
SIGNAL \counter[0][9]~34_combout\ : std_logic;
SIGNAL \counter[0][9]~regout\ : std_logic;
SIGNAL \counter[1][9]~regout\ : std_logic;
SIGNAL \tmp[9]~feeder_combout\ : std_logic;
SIGNAL \count[10]~reg0feeder_combout\ : std_logic;
SIGNAL \count[10]~reg0_regout\ : std_logic;
SIGNAL \counter[0][9]~35\ : std_logic;
SIGNAL \counter[0][10]~36_combout\ : std_logic;
SIGNAL \counter[0][10]~regout\ : std_logic;
SIGNAL \counter[1][10]~feeder_combout\ : std_logic;
SIGNAL \counter[1][10]~regout\ : std_logic;
SIGNAL \tmp[10]~feeder_combout\ : std_logic;
SIGNAL \count[11]~reg0feeder_combout\ : std_logic;
SIGNAL \count[11]~reg0_regout\ : std_logic;
SIGNAL \counter[0][10]~37\ : std_logic;
SIGNAL \counter[0][11]~38_combout\ : std_logic;
SIGNAL \counter[0][11]~regout\ : std_logic;
SIGNAL \counter[1][11]~regout\ : std_logic;
SIGNAL \tmp[11]~feeder_combout\ : std_logic;
SIGNAL \count[12]~reg0_regout\ : std_logic;
SIGNAL \counter[0][11]~39\ : std_logic;
SIGNAL \counter[0][12]~40_combout\ : std_logic;
SIGNAL \counter[0][12]~regout\ : std_logic;
SIGNAL \counter[1][12]~regout\ : std_logic;
SIGNAL \tmp[12]~feeder_combout\ : std_logic;
SIGNAL \count[13]~reg0feeder_combout\ : std_logic;
SIGNAL \count[13]~reg0_regout\ : std_logic;
SIGNAL \counter[0][12]~41\ : std_logic;
SIGNAL \counter[0][13]~42_combout\ : std_logic;
SIGNAL \counter[0][13]~regout\ : std_logic;
SIGNAL \counter[1][13]~feeder_combout\ : std_logic;
SIGNAL \counter[1][13]~regout\ : std_logic;
SIGNAL \count[14]~reg0feeder_combout\ : std_logic;
SIGNAL \count[14]~reg0_regout\ : std_logic;
SIGNAL \counter[0][13]~43\ : std_logic;
SIGNAL \counter[0][14]~44_combout\ : std_logic;
SIGNAL \counter[0][14]~regout\ : std_logic;
SIGNAL \counter[1][14]~feeder_combout\ : std_logic;
SIGNAL \counter[1][14]~regout\ : std_logic;
SIGNAL \tmp[14]~feeder_combout\ : std_logic;
SIGNAL \count[15]~reg0feeder_combout\ : std_logic;
SIGNAL \count[15]~reg0_regout\ : std_logic;
SIGNAL tmp : std_logic_vector(15 DOWNTO 0);
SIGNAL CNT500ms : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

count <= ww_count;
ww_clock <= clock;
ww_pulse_in <= pulse_in;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: LCCOMB_X40_Y23_N12
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (CNT500ms(2) & (\Add0~3\ $ (GND))) # (!CNT500ms(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((CNT500ms(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X40_Y22_N16
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (CNT500ms(20) & (\Add0~39\ $ (GND))) # (!CNT500ms(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((CNT500ms(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X40_Y22_N22
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (CNT500ms(23) & (!\Add0~45\)) # (!CNT500ms(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!CNT500ms(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X40_Y22_N24
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = \Add0~47\ $ (!CNT500ms(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => CNT500ms(24),
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: LCFF_X40_Y22_N31
\CNT500ms[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT500ms~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(24));

-- Location: LCFF_X41_Y22_N27
\CNT500ms[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT500ms~3_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(20));

-- Location: LCCOMB_X41_Y22_N10
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (CNT500ms(18) & (CNT500ms(20) & (!CNT500ms(17) & CNT500ms(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(18),
	datab => CNT500ms(20),
	datac => CNT500ms(17),
	datad => CNT500ms(19),
	combout => \Equal0~1_combout\);

-- Location: LCFF_X40_Y23_N13
\CNT500ms[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(2));

-- Location: LCCOMB_X40_Y22_N30
\CNT500ms~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT500ms~0_combout\ = (!\Equal0~8_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \Add0~48_combout\,
	combout => \CNT500ms~0_combout\);

-- Location: LCCOMB_X41_Y22_N26
\CNT500ms~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT500ms~3_combout\ = (!\Equal0~8_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Add0~40_combout\,
	combout => \CNT500ms~3_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pulse_in~I\ : cycloneii_io
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
	padio => ww_pulse_in,
	combout => \pulse_in~combout\);

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

-- Location: LCCOMB_X42_Y23_N2
\counter[0][0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][0]~15_combout\ = \counter[0][0]~regout\ $ (VCC)
-- \counter[0][0]~16\ = CARRY(\counter[0][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][0]~regout\,
	datad => VCC,
	combout => \counter[0][0]~15_combout\,
	cout => \counter[0][0]~16\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y23_N8
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = CNT500ms(0) $ (VCC)
-- \Add0~1\ = CARRY(CNT500ms(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCFF_X40_Y23_N9
\CNT500ms[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(0));

-- Location: LCCOMB_X40_Y23_N10
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (CNT500ms(1) & (!\Add0~1\)) # (!CNT500ms(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!CNT500ms(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X40_Y23_N14
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (CNT500ms(3) & (!\Add0~5\)) # (!CNT500ms(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!CNT500ms(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCFF_X40_Y23_N15
\CNT500ms[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(3));

-- Location: LCCOMB_X40_Y23_N16
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (CNT500ms(4) & (\Add0~7\ $ (GND))) # (!CNT500ms(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((CNT500ms(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X40_Y23_N18
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (CNT500ms(5) & (!\Add0~9\)) # (!CNT500ms(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!CNT500ms(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCFF_X40_Y23_N19
\CNT500ms[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~10_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(5));

-- Location: LCFF_X40_Y23_N17
\CNT500ms[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~8_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(4));

-- Location: LCFF_X40_Y23_N11
\CNT500ms[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(1));

-- Location: LCCOMB_X40_Y23_N4
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (CNT500ms(2) & (CNT500ms(3) & (CNT500ms(4) & CNT500ms(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(2),
	datab => CNT500ms(3),
	datac => CNT500ms(4),
	datad => CNT500ms(1),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X41_Y22_N28
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (CNT500ms(0) & (\Equal0~6_combout\ & \Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(0),
	datab => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X40_Y23_N24
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (CNT500ms(8) & (\Add0~15\ $ (GND))) # (!CNT500ms(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((CNT500ms(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X40_Y23_N26
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (CNT500ms(9) & (!\Add0~17\)) # (!CNT500ms(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!CNT500ms(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCFF_X40_Y23_N27
\CNT500ms[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(9));

-- Location: LCCOMB_X40_Y23_N28
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (CNT500ms(10) & (\Add0~19\ $ (GND))) # (!CNT500ms(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((CNT500ms(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCFF_X40_Y23_N29
\CNT500ms[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~20_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(10));

-- Location: LCCOMB_X40_Y23_N30
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (CNT500ms(11) & (!\Add0~21\)) # (!CNT500ms(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!CNT500ms(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X41_Y22_N6
\CNT500ms~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT500ms~10_combout\ = (\Add0~22_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datad => \Add0~22_combout\,
	combout => \CNT500ms~10_combout\);

-- Location: LCFF_X41_Y22_N7
\CNT500ms[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT500ms~10_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(11));

-- Location: LCCOMB_X40_Y22_N0
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (CNT500ms(12) & (\Add0~23\ $ (GND))) # (!CNT500ms(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((CNT500ms(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X40_Y22_N2
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (CNT500ms(13) & (!\Add0~25\)) # (!CNT500ms(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!CNT500ms(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X41_Y22_N8
\CNT500ms~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT500ms~8_combout\ = (\Add0~26_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datad => \Add0~26_combout\,
	combout => \CNT500ms~8_combout\);

-- Location: LCFF_X41_Y22_N9
\CNT500ms[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT500ms~8_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(13));

-- Location: LCCOMB_X40_Y22_N4
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (CNT500ms(14) & (\Add0~27\ $ (GND))) # (!CNT500ms(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((CNT500ms(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X41_Y22_N30
\CNT500ms~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT500ms~7_combout\ = (\Add0~28_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Add0~28_combout\,
	datad => \Equal0~7_combout\,
	combout => \CNT500ms~7_combout\);

-- Location: LCFF_X41_Y22_N31
\CNT500ms[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT500ms~7_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(14));

-- Location: LCCOMB_X40_Y22_N6
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (CNT500ms(15) & (!\Add0~29\)) # (!CNT500ms(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!CNT500ms(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCFF_X40_Y22_N7
\CNT500ms[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~30_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(15));

-- Location: LCCOMB_X41_Y22_N22
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (CNT500ms(16) & (CNT500ms(14) & (CNT500ms(13) & !CNT500ms(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(16),
	datab => CNT500ms(14),
	datac => CNT500ms(13),
	datad => CNT500ms(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X40_Y22_N8
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (CNT500ms(16) & (\Add0~31\ $ (GND))) # (!CNT500ms(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((CNT500ms(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X41_Y22_N24
\CNT500ms~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT500ms~6_combout\ = (\Add0~32_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datad => \Add0~32_combout\,
	combout => \CNT500ms~6_combout\);

-- Location: LCFF_X41_Y22_N25
\CNT500ms[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT500ms~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(16));

-- Location: LCCOMB_X40_Y22_N10
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (CNT500ms(17) & (!\Add0~33\)) # (!CNT500ms(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!CNT500ms(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCFF_X41_Y22_N11
\CNT500ms[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~34_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(17));

-- Location: LCCOMB_X40_Y22_N12
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (CNT500ms(18) & (\Add0~35\ $ (GND))) # (!CNT500ms(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((CNT500ms(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X41_Y22_N20
\CNT500ms~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT500ms~5_combout\ = (\Add0~36_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datad => \Add0~36_combout\,
	combout => \CNT500ms~5_combout\);

-- Location: LCFF_X41_Y22_N21
\CNT500ms[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT500ms~5_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(18));

-- Location: LCCOMB_X40_Y22_N14
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (CNT500ms(19) & (!\Add0~37\)) # (!CNT500ms(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!CNT500ms(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X40_Y22_N26
\CNT500ms~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT500ms~4_combout\ = (\Add0~38_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Add0~38_combout\,
	datad => \Equal0~4_combout\,
	combout => \CNT500ms~4_combout\);

-- Location: LCFF_X40_Y22_N27
\CNT500ms[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT500ms~4_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(19));

-- Location: LCCOMB_X40_Y22_N18
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (CNT500ms(21) & (!\Add0~41\)) # (!CNT500ms(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!CNT500ms(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X40_Y22_N20
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (CNT500ms(22) & (\Add0~43\ $ (GND))) # (!CNT500ms(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((CNT500ms(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X40_Y22_N28
\CNT500ms~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT500ms~1_combout\ = (!\Equal0~8_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \Add0~44_combout\,
	combout => \CNT500ms~1_combout\);

-- Location: LCFF_X40_Y22_N29
\CNT500ms[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT500ms~1_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(22));

-- Location: LCCOMB_X38_Y22_N20
\CNT500ms~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT500ms~2_combout\ = (!\Equal0~8_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~42_combout\,
	combout => \CNT500ms~2_combout\);

-- Location: LCFF_X38_Y22_N21
\CNT500ms[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT500ms~2_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(21));

-- Location: LCFF_X40_Y22_N23
\CNT500ms[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~46_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(23));

-- Location: LCCOMB_X41_Y22_N4
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (CNT500ms(24) & (CNT500ms(22) & (CNT500ms(21) & !CNT500ms(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(24),
	datab => CNT500ms(22),
	datac => CNT500ms(21),
	datad => CNT500ms(23),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X41_Y22_N16
\CNT500ms~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT500ms~9_combout\ = (\Add0~24_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Add0~24_combout\,
	datad => \Equal0~7_combout\,
	combout => \CNT500ms~9_combout\);

-- Location: LCFF_X41_Y22_N17
\CNT500ms[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT500ms~9_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(12));

-- Location: LCCOMB_X41_Y22_N12
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (CNT500ms(11) & (!CNT500ms(10) & (CNT500ms(12) & !CNT500ms(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(11),
	datab => CNT500ms(10),
	datac => CNT500ms(12),
	datad => CNT500ms(9),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X41_Y22_N14
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X40_Y23_N20
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (CNT500ms(6) & (\Add0~11\ $ (GND))) # (!CNT500ms(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((CNT500ms(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X40_Y23_N0
\CNT500ms~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT500ms~11_combout\ = (\Add0~12_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~12_combout\,
	datad => \Equal0~7_combout\,
	combout => \CNT500ms~11_combout\);

-- Location: LCFF_X40_Y23_N1
\CNT500ms[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT500ms~11_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(6));

-- Location: LCCOMB_X40_Y23_N22
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (CNT500ms(7) & (!\Add0~13\)) # (!CNT500ms(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!CNT500ms(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCFF_X40_Y23_N23
\CNT500ms[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~14_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(7));

-- Location: LCFF_X40_Y23_N25
\CNT500ms[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CNT500ms(8));

-- Location: LCCOMB_X40_Y23_N6
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!CNT500ms(7) & (CNT500ms(5) & (!CNT500ms(8) & !CNT500ms(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(7),
	datab => CNT500ms(5),
	datac => CNT500ms(8),
	datad => CNT500ms(6),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X41_Y22_N0
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (CNT500ms(0) & (\Equal0~5_combout\ & (\Equal0~4_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(0),
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X38_Y22_N18
\old_pulse_in~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \old_pulse_in~0_combout\ = (\reset~combout\ & (((\old_pulse_in~regout\)))) # (!\reset~combout\ & ((\Equal0~8_combout\ & ((\old_pulse_in~regout\))) # (!\Equal0~8_combout\ & (\pulse_in~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_in~combout\,
	datab => \reset~combout\,
	datac => \old_pulse_in~regout\,
	datad => \Equal0~8_combout\,
	combout => \old_pulse_in~0_combout\);

-- Location: LCFF_X38_Y22_N19
old_pulse_in : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \old_pulse_in~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \old_pulse_in~regout\);

-- Location: LCCOMB_X41_Y22_N18
\counter[0][0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][0]~17_combout\ = (\pulse_in~combout\ & (((\Equal0~4_combout\ & \Equal0~7_combout\)) # (!\old_pulse_in~regout\))) # (!\pulse_in~combout\ & (((\Equal0~4_combout\ & \Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_in~combout\,
	datab => \old_pulse_in~regout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \counter[0][0]~17_combout\);

-- Location: LCFF_X42_Y23_N3
\counter[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][0]~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][0]~regout\);

-- Location: LCCOMB_X41_Y23_N0
\counter[1][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1][0]~feeder_combout\ = \counter[0][0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][0]~regout\,
	combout => \counter[1][0]~feeder_combout\);

-- Location: LCFF_X41_Y23_N1
\counter[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[1][0]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][0]~regout\);

-- Location: LCCOMB_X41_Y22_N2
\tmp[14]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[14]~0_combout\ = (!\reset~combout\ & (\Equal0~4_combout\ & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \tmp[14]~0_combout\);

-- Location: LCFF_X41_Y24_N13
\tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[1][0]~regout\,
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(0));

-- Location: LCCOMB_X41_Y24_N0
\count[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~reg0feeder_combout\ = tmp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(0),
	combout => \count[1]~reg0feeder_combout\);

-- Location: LCFF_X41_Y24_N1
\count[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[1]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[1]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N4
\counter[0][1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][1]~18_combout\ = (\counter[0][1]~regout\ & (!\counter[0][0]~16\)) # (!\counter[0][1]~regout\ & ((\counter[0][0]~16\) # (GND)))
-- \counter[0][1]~19\ = CARRY((!\counter[0][0]~16\) # (!\counter[0][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][1]~regout\,
	datad => VCC,
	cin => \counter[0][0]~16\,
	combout => \counter[0][1]~18_combout\,
	cout => \counter[0][1]~19\);

-- Location: LCFF_X42_Y23_N5
\counter[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][1]~18_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][1]~regout\);

-- Location: LCCOMB_X42_Y22_N24
\counter[1][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1][1]~feeder_combout\ = \counter[0][1]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][1]~regout\,
	combout => \counter[1][1]~feeder_combout\);

-- Location: LCFF_X42_Y22_N25
\counter[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[1][1]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][1]~regout\);

-- Location: LCFF_X42_Y22_N29
\tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[1][1]~regout\,
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(1));

-- Location: LCCOMB_X42_Y22_N20
\count[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~reg0feeder_combout\ = tmp(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(1),
	combout => \count[2]~reg0feeder_combout\);

-- Location: LCFF_X42_Y22_N21
\count[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[2]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[2]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N6
\counter[0][2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][2]~20_combout\ = (\counter[0][2]~regout\ & (\counter[0][1]~19\ $ (GND))) # (!\counter[0][2]~regout\ & (!\counter[0][1]~19\ & VCC))
-- \counter[0][2]~21\ = CARRY((\counter[0][2]~regout\ & !\counter[0][1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0][2]~regout\,
	datad => VCC,
	cin => \counter[0][1]~19\,
	combout => \counter[0][2]~20_combout\,
	cout => \counter[0][2]~21\);

-- Location: LCFF_X42_Y23_N7
\counter[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][2]~20_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][2]~regout\);

-- Location: LCCOMB_X42_Y23_N0
\counter[1][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1][2]~feeder_combout\ = \counter[0][2]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][2]~regout\,
	combout => \counter[1][2]~feeder_combout\);

-- Location: LCFF_X42_Y23_N1
\counter[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[1][2]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][2]~regout\);

-- Location: LCCOMB_X42_Y22_N10
\tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[2]~feeder_combout\ = \counter[1][2]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][2]~regout\,
	combout => \tmp[2]~feeder_combout\);

-- Location: LCFF_X42_Y22_N11
\tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tmp[2]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(2));

-- Location: LCCOMB_X42_Y22_N18
\count[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~reg0feeder_combout\ = tmp(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(2),
	combout => \count[3]~reg0feeder_combout\);

-- Location: LCFF_X42_Y22_N19
\count[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[3]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[3]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N8
\counter[0][3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][3]~22_combout\ = (\counter[0][3]~regout\ & (!\counter[0][2]~21\)) # (!\counter[0][3]~regout\ & ((\counter[0][2]~21\) # (GND)))
-- \counter[0][3]~23\ = CARRY((!\counter[0][2]~21\) # (!\counter[0][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][3]~regout\,
	datad => VCC,
	cin => \counter[0][2]~21\,
	combout => \counter[0][3]~22_combout\,
	cout => \counter[0][3]~23\);

-- Location: LCFF_X42_Y23_N9
\counter[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][3]~22_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][3]~regout\);

-- Location: LCCOMB_X42_Y22_N2
\counter[1][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1][3]~feeder_combout\ = \counter[0][3]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][3]~regout\,
	combout => \counter[1][3]~feeder_combout\);

-- Location: LCFF_X42_Y22_N3
\counter[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[1][3]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][3]~regout\);

-- Location: LCCOMB_X42_Y22_N12
\tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[3]~feeder_combout\ = \counter[1][3]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][3]~regout\,
	combout => \tmp[3]~feeder_combout\);

-- Location: LCFF_X42_Y22_N13
\tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tmp[3]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(3));

-- Location: LCCOMB_X42_Y22_N4
\count[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~reg0feeder_combout\ = tmp(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(3),
	combout => \count[4]~reg0feeder_combout\);

-- Location: LCFF_X42_Y22_N5
\count[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[4]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[4]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N10
\counter[0][4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][4]~24_combout\ = (\counter[0][4]~regout\ & (\counter[0][3]~23\ $ (GND))) # (!\counter[0][4]~regout\ & (!\counter[0][3]~23\ & VCC))
-- \counter[0][4]~25\ = CARRY((\counter[0][4]~regout\ & !\counter[0][3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0][4]~regout\,
	datad => VCC,
	cin => \counter[0][3]~23\,
	combout => \counter[0][4]~24_combout\,
	cout => \counter[0][4]~25\);

-- Location: LCFF_X42_Y23_N11
\counter[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][4]~24_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][4]~regout\);

-- Location: LCCOMB_X41_Y23_N10
\counter[1][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1][4]~feeder_combout\ = \counter[0][4]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][4]~regout\,
	combout => \counter[1][4]~feeder_combout\);

-- Location: LCFF_X41_Y23_N11
\counter[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[1][4]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][4]~regout\);

-- Location: LCCOMB_X41_Y23_N28
\tmp[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[4]~feeder_combout\ = \counter[1][4]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][4]~regout\,
	combout => \tmp[4]~feeder_combout\);

-- Location: LCFF_X41_Y23_N29
\tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tmp[4]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(4));

-- Location: LCCOMB_X41_Y23_N16
\count[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~reg0feeder_combout\ = tmp(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(4),
	combout => \count[5]~reg0feeder_combout\);

-- Location: LCFF_X41_Y23_N17
\count[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[5]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[5]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N12
\counter[0][5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][5]~26_combout\ = (\counter[0][5]~regout\ & (!\counter[0][4]~25\)) # (!\counter[0][5]~regout\ & ((\counter[0][4]~25\) # (GND)))
-- \counter[0][5]~27\ = CARRY((!\counter[0][4]~25\) # (!\counter[0][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0][5]~regout\,
	datad => VCC,
	cin => \counter[0][4]~25\,
	combout => \counter[0][5]~26_combout\,
	cout => \counter[0][5]~27\);

-- Location: LCFF_X42_Y23_N13
\counter[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][5]~26_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][5]~regout\);

-- Location: LCFF_X41_Y23_N5
\counter[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[0][5]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][5]~regout\);

-- Location: LCCOMB_X41_Y24_N18
\tmp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[5]~feeder_combout\ = \counter[1][5]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][5]~regout\,
	combout => \tmp[5]~feeder_combout\);

-- Location: LCFF_X41_Y24_N19
\tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tmp[5]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(5));

-- Location: LCCOMB_X41_Y24_N6
\count[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~reg0feeder_combout\ = tmp(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(5),
	combout => \count[6]~reg0feeder_combout\);

-- Location: LCFF_X41_Y24_N7
\count[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[6]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[6]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N14
\counter[0][6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][6]~28_combout\ = (\counter[0][6]~regout\ & (\counter[0][5]~27\ $ (GND))) # (!\counter[0][6]~regout\ & (!\counter[0][5]~27\ & VCC))
-- \counter[0][6]~29\ = CARRY((\counter[0][6]~regout\ & !\counter[0][5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][6]~regout\,
	datad => VCC,
	cin => \counter[0][5]~27\,
	combout => \counter[0][6]~28_combout\,
	cout => \counter[0][6]~29\);

-- Location: LCFF_X42_Y23_N15
\counter[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][6]~28_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][6]~regout\);

-- Location: LCFF_X41_Y23_N23
\counter[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[0][6]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][6]~regout\);

-- Location: LCCOMB_X41_Y23_N6
\tmp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[6]~feeder_combout\ = \counter[1][6]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][6]~regout\,
	combout => \tmp[6]~feeder_combout\);

-- Location: LCFF_X41_Y23_N7
\tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tmp[6]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(6));

-- Location: LCCOMB_X41_Y23_N30
\count[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[7]~reg0feeder_combout\ = tmp(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(6),
	combout => \count[7]~reg0feeder_combout\);

-- Location: LCFF_X41_Y23_N31
\count[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[7]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[7]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N16
\counter[0][7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][7]~30_combout\ = (\counter[0][7]~regout\ & (!\counter[0][6]~29\)) # (!\counter[0][7]~regout\ & ((\counter[0][6]~29\) # (GND)))
-- \counter[0][7]~31\ = CARRY((!\counter[0][6]~29\) # (!\counter[0][7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0][7]~regout\,
	datad => VCC,
	cin => \counter[0][6]~29\,
	combout => \counter[0][7]~30_combout\,
	cout => \counter[0][7]~31\);

-- Location: LCFF_X42_Y23_N17
\counter[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][7]~30_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][7]~regout\);

-- Location: LCFF_X41_Y23_N9
\counter[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[0][7]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][7]~regout\);

-- Location: LCCOMB_X41_Y24_N28
\tmp[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[7]~feeder_combout\ = \counter[1][7]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][7]~regout\,
	combout => \tmp[7]~feeder_combout\);

-- Location: LCFF_X41_Y24_N29
\tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tmp[7]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(7));

-- Location: LCCOMB_X41_Y24_N24
\count[8]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[8]~reg0feeder_combout\ = tmp(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(7),
	combout => \count[8]~reg0feeder_combout\);

-- Location: LCFF_X41_Y24_N25
\count[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[8]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[8]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N18
\counter[0][8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][8]~32_combout\ = (\counter[0][8]~regout\ & (\counter[0][7]~31\ $ (GND))) # (!\counter[0][8]~regout\ & (!\counter[0][7]~31\ & VCC))
-- \counter[0][8]~33\ = CARRY((\counter[0][8]~regout\ & !\counter[0][7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][8]~regout\,
	datad => VCC,
	cin => \counter[0][7]~31\,
	combout => \counter[0][8]~32_combout\,
	cout => \counter[0][8]~33\);

-- Location: LCFF_X42_Y23_N19
\counter[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][8]~32_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][8]~regout\);

-- Location: LCCOMB_X42_Y22_N0
\counter[1][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1][8]~feeder_combout\ = \counter[0][8]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][8]~regout\,
	combout => \counter[1][8]~feeder_combout\);

-- Location: LCFF_X42_Y22_N1
\counter[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[1][8]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][8]~regout\);

-- Location: LCCOMB_X42_Y22_N6
\tmp[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[8]~feeder_combout\ = \counter[1][8]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][8]~regout\,
	combout => \tmp[8]~feeder_combout\);

-- Location: LCFF_X42_Y22_N7
\tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tmp[8]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(8));

-- Location: LCCOMB_X42_Y22_N14
\count[9]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[9]~reg0feeder_combout\ = tmp(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(8),
	combout => \count[9]~reg0feeder_combout\);

-- Location: LCFF_X42_Y22_N15
\count[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[9]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[9]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N20
\counter[0][9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][9]~34_combout\ = (\counter[0][9]~regout\ & (!\counter[0][8]~33\)) # (!\counter[0][9]~regout\ & ((\counter[0][8]~33\) # (GND)))
-- \counter[0][9]~35\ = CARRY((!\counter[0][8]~33\) # (!\counter[0][9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0][9]~regout\,
	datad => VCC,
	cin => \counter[0][8]~33\,
	combout => \counter[0][9]~34_combout\,
	cout => \counter[0][9]~35\);

-- Location: LCFF_X42_Y23_N21
\counter[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][9]~34_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][9]~regout\);

-- Location: LCFF_X42_Y22_N23
\counter[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[0][9]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][9]~regout\);

-- Location: LCCOMB_X42_Y24_N2
\tmp[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[9]~feeder_combout\ = \counter[1][9]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][9]~regout\,
	combout => \tmp[9]~feeder_combout\);

-- Location: LCFF_X42_Y24_N3
\tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tmp[9]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(9));

-- Location: LCCOMB_X42_Y24_N0
\count[10]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[10]~reg0feeder_combout\ = tmp(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(9),
	combout => \count[10]~reg0feeder_combout\);

-- Location: LCFF_X42_Y24_N1
\count[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[10]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[10]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N22
\counter[0][10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][10]~36_combout\ = (\counter[0][10]~regout\ & (\counter[0][9]~35\ $ (GND))) # (!\counter[0][10]~regout\ & (!\counter[0][9]~35\ & VCC))
-- \counter[0][10]~37\ = CARRY((\counter[0][10]~regout\ & !\counter[0][9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][10]~regout\,
	datad => VCC,
	cin => \counter[0][9]~35\,
	combout => \counter[0][10]~36_combout\,
	cout => \counter[0][10]~37\);

-- Location: LCFF_X42_Y23_N23
\counter[0][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][10]~36_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][10]~regout\);

-- Location: LCCOMB_X41_Y23_N2
\counter[1][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1][10]~feeder_combout\ = \counter[0][10]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][10]~regout\,
	combout => \counter[1][10]~feeder_combout\);

-- Location: LCFF_X41_Y23_N3
\counter[1][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[1][10]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][10]~regout\);

-- Location: LCCOMB_X41_Y24_N2
\tmp[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[10]~feeder_combout\ = \counter[1][10]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][10]~regout\,
	combout => \tmp[10]~feeder_combout\);

-- Location: LCFF_X41_Y24_N3
\tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tmp[10]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(10));

-- Location: LCCOMB_X41_Y24_N22
\count[11]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[11]~reg0feeder_combout\ = tmp(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(10),
	combout => \count[11]~reg0feeder_combout\);

-- Location: LCFF_X41_Y24_N23
\count[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[11]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[11]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N24
\counter[0][11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][11]~38_combout\ = (\counter[0][11]~regout\ & (!\counter[0][10]~37\)) # (!\counter[0][11]~regout\ & ((\counter[0][10]~37\) # (GND)))
-- \counter[0][11]~39\ = CARRY((!\counter[0][10]~37\) # (!\counter[0][11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0][11]~regout\,
	datad => VCC,
	cin => \counter[0][10]~37\,
	combout => \counter[0][11]~38_combout\,
	cout => \counter[0][11]~39\);

-- Location: LCFF_X42_Y23_N25
\counter[0][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][11]~38_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][11]~regout\);

-- Location: LCFF_X41_Y22_N29
\counter[1][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[0][11]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][11]~regout\);

-- Location: LCCOMB_X42_Y22_N16
\tmp[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[11]~feeder_combout\ = \counter[1][11]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][11]~regout\,
	combout => \tmp[11]~feeder_combout\);

-- Location: LCFF_X42_Y22_N17
\tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tmp[11]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(11));

-- Location: LCFF_X42_Y22_N9
\count[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => tmp(11),
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[12]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N26
\counter[0][12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][12]~40_combout\ = (\counter[0][12]~regout\ & (\counter[0][11]~39\ $ (GND))) # (!\counter[0][12]~regout\ & (!\counter[0][11]~39\ & VCC))
-- \counter[0][12]~41\ = CARRY((\counter[0][12]~regout\ & !\counter[0][11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][12]~regout\,
	datad => VCC,
	cin => \counter[0][11]~39\,
	combout => \counter[0][12]~40_combout\,
	cout => \counter[0][12]~41\);

-- Location: LCFF_X42_Y23_N27
\counter[0][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][12]~40_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][12]~regout\);

-- Location: LCFF_X41_Y22_N3
\counter[1][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[0][12]~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][12]~regout\);

-- Location: LCCOMB_X42_Y22_N30
\tmp[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[12]~feeder_combout\ = \counter[1][12]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][12]~regout\,
	combout => \tmp[12]~feeder_combout\);

-- Location: LCFF_X42_Y22_N31
\tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tmp[12]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(12));

-- Location: LCCOMB_X42_Y22_N26
\count[13]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[13]~reg0feeder_combout\ = tmp(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(12),
	combout => \count[13]~reg0feeder_combout\);

-- Location: LCFF_X42_Y22_N27
\count[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[13]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[13]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N28
\counter[0][13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][13]~42_combout\ = (\counter[0][13]~regout\ & (!\counter[0][12]~41\)) # (!\counter[0][13]~regout\ & ((\counter[0][12]~41\) # (GND)))
-- \counter[0][13]~43\ = CARRY((!\counter[0][12]~41\) # (!\counter[0][13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][13]~regout\,
	datad => VCC,
	cin => \counter[0][12]~41\,
	combout => \counter[0][13]~42_combout\,
	cout => \counter[0][13]~43\);

-- Location: LCFF_X42_Y23_N29
\counter[0][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][13]~42_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][13]~regout\);

-- Location: LCCOMB_X41_Y23_N20
\counter[1][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1][13]~feeder_combout\ = \counter[0][13]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][13]~regout\,
	combout => \counter[1][13]~feeder_combout\);

-- Location: LCFF_X41_Y23_N21
\counter[1][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[1][13]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][13]~regout\);

-- Location: LCFF_X41_Y23_N13
\tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[1][13]~regout\,
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(13));

-- Location: LCCOMB_X41_Y23_N24
\count[14]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[14]~reg0feeder_combout\ = tmp(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(13),
	combout => \count[14]~reg0feeder_combout\);

-- Location: LCFF_X41_Y23_N25
\count[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[14]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[14]~reg0_regout\);

-- Location: LCCOMB_X42_Y23_N30
\counter[0][14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0][14]~44_combout\ = \counter[0][13]~43\ $ (!\counter[0][14]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][14]~regout\,
	cin => \counter[0][13]~43\,
	combout => \counter[0][14]~44_combout\);

-- Location: LCFF_X42_Y23_N31
\counter[0][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0][14]~44_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \Equal0~8_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0][14]~regout\);

-- Location: LCCOMB_X41_Y23_N26
\counter[1][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1][14]~feeder_combout\ = \counter[0][14]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][14]~regout\,
	combout => \counter[1][14]~feeder_combout\);

-- Location: LCFF_X41_Y23_N27
\counter[1][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[1][14]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1][14]~regout\);

-- Location: LCCOMB_X41_Y23_N18
\tmp[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp[14]~feeder_combout\ = \counter[1][14]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][14]~regout\,
	combout => \tmp[14]~feeder_combout\);

-- Location: LCFF_X41_Y23_N19
\tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tmp[14]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(14));

-- Location: LCCOMB_X41_Y23_N14
\count[15]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[15]~reg0feeder_combout\ = tmp(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(14),
	combout => \count[15]~reg0feeder_combout\);

-- Location: LCFF_X41_Y23_N15
\count[15]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \count[15]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \count[15]~reg0_regout\);

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(0));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[1]~I\ : cycloneii_io
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
	datain => \count[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(1));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[2]~I\ : cycloneii_io
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
	datain => \count[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(2));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[3]~I\ : cycloneii_io
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
	datain => \count[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(3));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[4]~I\ : cycloneii_io
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
	datain => \count[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(4));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[5]~I\ : cycloneii_io
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
	datain => \count[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(5));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[6]~I\ : cycloneii_io
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
	datain => \count[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(6));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[7]~I\ : cycloneii_io
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
	datain => \count[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(7));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[8]~I\ : cycloneii_io
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
	datain => \count[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(8));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[9]~I\ : cycloneii_io
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
	datain => \count[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(9));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[10]~I\ : cycloneii_io
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
	datain => \count[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(10));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[11]~I\ : cycloneii_io
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
	datain => \count[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(11));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[12]~I\ : cycloneii_io
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
	datain => \count[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(12));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[13]~I\ : cycloneii_io
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
	datain => \count[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(13));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[14]~I\ : cycloneii_io
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
	datain => \count[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(14));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[15]~I\ : cycloneii_io
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
	datain => \count[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(15));
END structure;


