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

-- DATE "10/10/2013 15:15:02"

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

ENTITY 	COUNTER500ms IS
    PORT (
	count : OUT std_logic_vector(15 DOWNTO 0);
	clock : IN std_logic;
	pulse_in : IN std_logic;
	reset : IN std_logic
	);
END COUNTER500ms;

-- Design Ports Information
-- count[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[6]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[7]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[8]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[9]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[10]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[11]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[12]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[13]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[14]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[15]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_in	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \CNT500ms~4_combout\ : std_logic;
SIGNAL \CNT500ms~6_combout\ : std_logic;
SIGNAL \CNT500ms~7_combout\ : std_logic;
SIGNAL \CNT500ms~8_combout\ : std_logic;
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \count[4]~output_o\ : std_logic;
SIGNAL \count[5]~output_o\ : std_logic;
SIGNAL \count[6]~output_o\ : std_logic;
SIGNAL \count[7]~output_o\ : std_logic;
SIGNAL \count[8]~output_o\ : std_logic;
SIGNAL \count[9]~output_o\ : std_logic;
SIGNAL \count[10]~output_o\ : std_logic;
SIGNAL \count[11]~output_o\ : std_logic;
SIGNAL \count[12]~output_o\ : std_logic;
SIGNAL \count[13]~output_o\ : std_logic;
SIGNAL \count[14]~output_o\ : std_logic;
SIGNAL \count[15]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0][0]~15_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \CNT500ms~11_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \CNT500ms~10_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \CNT500ms~9_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \CNT500ms~5_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \CNT500ms~3_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \CNT500ms~2_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \CNT500ms~1_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \CNT500ms~0_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \pulse_in~input_o\ : std_logic;
SIGNAL \old_pulse_in~0_combout\ : std_logic;
SIGNAL \old_pulse_in~q\ : std_logic;
SIGNAL \counter[0][0]~17_combout\ : std_logic;
SIGNAL \counter[0][0]~q\ : std_logic;
SIGNAL \counter[1][0]~feeder_combout\ : std_logic;
SIGNAL \counter[1][0]~q\ : std_logic;
SIGNAL \tmp[14]~0_combout\ : std_logic;
SIGNAL \count[1]~reg0feeder_combout\ : std_logic;
SIGNAL \count[1]~reg0_q\ : std_logic;
SIGNAL \counter[0][0]~16\ : std_logic;
SIGNAL \counter[0][1]~18_combout\ : std_logic;
SIGNAL \counter[0][1]~q\ : std_logic;
SIGNAL \counter[1][1]~feeder_combout\ : std_logic;
SIGNAL \counter[1][1]~q\ : std_logic;
SIGNAL \tmp[1]~feeder_combout\ : std_logic;
SIGNAL \count[2]~reg0feeder_combout\ : std_logic;
SIGNAL \count[2]~reg0_q\ : std_logic;
SIGNAL \counter[0][1]~19\ : std_logic;
SIGNAL \counter[0][2]~20_combout\ : std_logic;
SIGNAL \counter[0][2]~q\ : std_logic;
SIGNAL \counter[1][2]~feeder_combout\ : std_logic;
SIGNAL \counter[1][2]~q\ : std_logic;
SIGNAL \tmp[2]~feeder_combout\ : std_logic;
SIGNAL \count[3]~reg0feeder_combout\ : std_logic;
SIGNAL \count[3]~reg0_q\ : std_logic;
SIGNAL \counter[0][2]~21\ : std_logic;
SIGNAL \counter[0][3]~22_combout\ : std_logic;
SIGNAL \counter[0][3]~q\ : std_logic;
SIGNAL \counter[1][3]~feeder_combout\ : std_logic;
SIGNAL \counter[1][3]~q\ : std_logic;
SIGNAL \tmp[3]~feeder_combout\ : std_logic;
SIGNAL \count[4]~reg0feeder_combout\ : std_logic;
SIGNAL \count[4]~reg0_q\ : std_logic;
SIGNAL \counter[0][3]~23\ : std_logic;
SIGNAL \counter[0][4]~24_combout\ : std_logic;
SIGNAL \counter[0][4]~q\ : std_logic;
SIGNAL \counter[1][4]~feeder_combout\ : std_logic;
SIGNAL \counter[1][4]~q\ : std_logic;
SIGNAL \tmp[4]~feeder_combout\ : std_logic;
SIGNAL \count[5]~reg0feeder_combout\ : std_logic;
SIGNAL \count[5]~reg0_q\ : std_logic;
SIGNAL \counter[0][4]~25\ : std_logic;
SIGNAL \counter[0][5]~26_combout\ : std_logic;
SIGNAL \counter[0][5]~q\ : std_logic;
SIGNAL \counter[1][5]~feeder_combout\ : std_logic;
SIGNAL \counter[1][5]~q\ : std_logic;
SIGNAL \count[6]~reg0_q\ : std_logic;
SIGNAL \counter[0][5]~27\ : std_logic;
SIGNAL \counter[0][6]~28_combout\ : std_logic;
SIGNAL \counter[0][6]~q\ : std_logic;
SIGNAL \counter[1][6]~feeder_combout\ : std_logic;
SIGNAL \counter[1][6]~q\ : std_logic;
SIGNAL \tmp[6]~feeder_combout\ : std_logic;
SIGNAL \count[7]~reg0feeder_combout\ : std_logic;
SIGNAL \count[7]~reg0_q\ : std_logic;
SIGNAL \counter[0][6]~29\ : std_logic;
SIGNAL \counter[0][7]~30_combout\ : std_logic;
SIGNAL \counter[0][7]~q\ : std_logic;
SIGNAL \counter[1][7]~feeder_combout\ : std_logic;
SIGNAL \counter[1][7]~q\ : std_logic;
SIGNAL \tmp[7]~feeder_combout\ : std_logic;
SIGNAL \count[8]~reg0feeder_combout\ : std_logic;
SIGNAL \count[8]~reg0_q\ : std_logic;
SIGNAL \counter[0][7]~31\ : std_logic;
SIGNAL \counter[0][8]~32_combout\ : std_logic;
SIGNAL \counter[0][8]~q\ : std_logic;
SIGNAL \counter[1][8]~feeder_combout\ : std_logic;
SIGNAL \counter[1][8]~q\ : std_logic;
SIGNAL \tmp[8]~feeder_combout\ : std_logic;
SIGNAL \count[9]~reg0feeder_combout\ : std_logic;
SIGNAL \count[9]~reg0_q\ : std_logic;
SIGNAL \counter[0][8]~33\ : std_logic;
SIGNAL \counter[0][9]~34_combout\ : std_logic;
SIGNAL \counter[0][9]~q\ : std_logic;
SIGNAL \counter[1][9]~feeder_combout\ : std_logic;
SIGNAL \counter[1][9]~q\ : std_logic;
SIGNAL \count[10]~reg0feeder_combout\ : std_logic;
SIGNAL \count[10]~reg0_q\ : std_logic;
SIGNAL \counter[0][9]~35\ : std_logic;
SIGNAL \counter[0][10]~36_combout\ : std_logic;
SIGNAL \counter[0][10]~q\ : std_logic;
SIGNAL \counter[1][10]~feeder_combout\ : std_logic;
SIGNAL \counter[1][10]~q\ : std_logic;
SIGNAL \count[11]~reg0feeder_combout\ : std_logic;
SIGNAL \count[11]~reg0_q\ : std_logic;
SIGNAL \counter[0][10]~37\ : std_logic;
SIGNAL \counter[0][11]~38_combout\ : std_logic;
SIGNAL \counter[0][11]~q\ : std_logic;
SIGNAL \counter[1][11]~feeder_combout\ : std_logic;
SIGNAL \counter[1][11]~q\ : std_logic;
SIGNAL \tmp[11]~feeder_combout\ : std_logic;
SIGNAL \count[12]~reg0feeder_combout\ : std_logic;
SIGNAL \count[12]~reg0_q\ : std_logic;
SIGNAL \counter[0][11]~39\ : std_logic;
SIGNAL \counter[0][12]~40_combout\ : std_logic;
SIGNAL \counter[0][12]~q\ : std_logic;
SIGNAL \counter[1][12]~feeder_combout\ : std_logic;
SIGNAL \counter[1][12]~q\ : std_logic;
SIGNAL \count[13]~reg0_q\ : std_logic;
SIGNAL \counter[0][12]~41\ : std_logic;
SIGNAL \counter[0][13]~42_combout\ : std_logic;
SIGNAL \counter[0][13]~q\ : std_logic;
SIGNAL \counter[1][13]~feeder_combout\ : std_logic;
SIGNAL \counter[1][13]~q\ : std_logic;
SIGNAL \tmp[13]~feeder_combout\ : std_logic;
SIGNAL \count[14]~reg0feeder_combout\ : std_logic;
SIGNAL \count[14]~reg0_q\ : std_logic;
SIGNAL \counter[0][13]~43\ : std_logic;
SIGNAL \counter[0][14]~44_combout\ : std_logic;
SIGNAL \counter[0][14]~q\ : std_logic;
SIGNAL \counter[1][14]~feeder_combout\ : std_logic;
SIGNAL \counter[1][14]~q\ : std_logic;
SIGNAL \count[15]~reg0_q\ : std_logic;
SIGNAL tmp : std_logic_vector(15 DOWNTO 0);
SIGNAL CNT500ms : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

count <= ww_count;
ww_clock <= clock;
ww_pulse_in <= pulse_in;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: LCCOMB_X5_Y62_N10
\Add0~2\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X5_Y62_N22
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (CNT500ms(7) & (!\Add0~13\)) # (!CNT500ms(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!CNT500ms(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X5_Y61_N2
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (CNT500ms(13) & (!\Add0~25\)) # (!CNT500ms(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!CNT500ms(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X5_Y61_N4
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (CNT500ms(14) & (\Add0~27\ $ (GND))) # (!CNT500ms(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((CNT500ms(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X5_Y61_N8
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (CNT500ms(16) & (\Add0~31\ $ (GND))) # (!CNT500ms(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((CNT500ms(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X5_Y61_N14
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (CNT500ms(19) & (!\Add0~37\)) # (!CNT500ms(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!CNT500ms(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X4_Y61_N27
\CNT500ms[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT500ms~4_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(19));

-- Location: FF_X4_Y61_N15
\CNT500ms[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT500ms~6_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(16));

-- Location: FF_X4_Y61_N17
\CNT500ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT500ms~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(14));

-- Location: FF_X4_Y61_N3
\CNT500ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT500ms~8_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(13));

-- Location: LCCOMB_X4_Y61_N12
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!CNT500ms(15) & (CNT500ms(13) & (CNT500ms(16) & CNT500ms(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(15),
	datab => CNT500ms(13),
	datac => CNT500ms(16),
	datad => CNT500ms(14),
	combout => \Equal0~2_combout\);

-- Location: FF_X5_Y62_N23
\CNT500ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(7));

-- Location: LCCOMB_X5_Y62_N6
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!CNT500ms(7) & (CNT500ms(5) & (!CNT500ms(6) & !CNT500ms(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(7),
	datab => CNT500ms(5),
	datac => CNT500ms(6),
	datad => CNT500ms(8),
	combout => \Equal0~5_combout\);

-- Location: FF_X5_Y62_N11
\CNT500ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(1));

-- Location: LCCOMB_X4_Y61_N26
\CNT500ms~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT500ms~4_combout\ = (\Add0~38_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \Equal0~7_combout\,
	combout => \CNT500ms~4_combout\);

-- Location: LCCOMB_X4_Y61_N14
\CNT500ms~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT500ms~6_combout\ = (!\Equal0~7_combout\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~32_combout\,
	combout => \CNT500ms~6_combout\);

-- Location: LCCOMB_X4_Y61_N16
\CNT500ms~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT500ms~7_combout\ = (!\Equal0~7_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Add0~28_combout\,
	combout => \CNT500ms~7_combout\);

-- Location: LCCOMB_X4_Y61_N2
\CNT500ms~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT500ms~8_combout\ = (!\Equal0~7_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Add0~26_combout\,
	combout => \CNT500ms~8_combout\);

-- Location: IOOBUF_X0_Y35_N9
\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[1]~reg0_q\,
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[2]~reg0_q\,
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[3]~reg0_q\,
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\count[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[4]~reg0_q\,
	devoe => ww_devoe,
	o => \count[4]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\count[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[5]~reg0_q\,
	devoe => ww_devoe,
	o => \count[5]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\count[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[6]~reg0_q\,
	devoe => ww_devoe,
	o => \count[6]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\count[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[7]~reg0_q\,
	devoe => ww_devoe,
	o => \count[7]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\count[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[8]~reg0_q\,
	devoe => ww_devoe,
	o => \count[8]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\count[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[9]~reg0_q\,
	devoe => ww_devoe,
	o => \count[9]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\count[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[10]~reg0_q\,
	devoe => ww_devoe,
	o => \count[10]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\count[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[11]~reg0_q\,
	devoe => ww_devoe,
	o => \count[11]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\count[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[12]~reg0_q\,
	devoe => ww_devoe,
	o => \count[12]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\count[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[13]~reg0_q\,
	devoe => ww_devoe,
	o => \count[13]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\count[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[14]~reg0_q\,
	devoe => ww_devoe,
	o => \count[14]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\count[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[15]~reg0_q\,
	devoe => ww_devoe,
	o => \count[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X3_Y61_N0
\counter[0][0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][0]~15_combout\ = \counter[0][0]~q\ $ (VCC)
-- \counter[0][0]~16\ = CARRY(\counter[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][0]~q\,
	datad => VCC,
	combout => \counter[0][0]~15_combout\,
	cout => \counter[0][0]~16\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X5_Y62_N8
\Add0~0\ : cycloneive_lcell_comb
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

-- Location: FF_X5_Y62_N9
\CNT500ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(0));

-- Location: LCCOMB_X5_Y62_N12
\Add0~4\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X5_Y62_N14
\Add0~6\ : cycloneive_lcell_comb
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

-- Location: FF_X5_Y62_N15
\CNT500ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(3));

-- Location: LCCOMB_X5_Y62_N16
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (CNT500ms(4) & (\Add0~7\ $ (GND))) # (!CNT500ms(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((CNT500ms(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X5_Y62_N17
\CNT500ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(4));

-- Location: FF_X5_Y62_N13
\CNT500ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(2));

-- Location: LCCOMB_X5_Y62_N0
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (CNT500ms(1) & (CNT500ms(4) & (CNT500ms(3) & CNT500ms(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(1),
	datab => CNT500ms(4),
	datac => CNT500ms(3),
	datad => CNT500ms(2),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X5_Y62_N18
\Add0~10\ : cycloneive_lcell_comb
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

-- Location: FF_X5_Y62_N19
\CNT500ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(5));

-- Location: LCCOMB_X5_Y62_N20
\Add0~12\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X5_Y62_N4
\CNT500ms~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT500ms~11_combout\ = (!\Equal0~7_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~12_combout\,
	combout => \CNT500ms~11_combout\);

-- Location: FF_X5_Y62_N5
\CNT500ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT500ms~11_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(6));

-- Location: LCCOMB_X5_Y62_N24
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (CNT500ms(8) & (\Add0~15\ $ (GND))) # (!CNT500ms(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((CNT500ms(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X5_Y62_N25
\CNT500ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(8));

-- Location: LCCOMB_X5_Y62_N26
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (CNT500ms(9) & (!\Add0~17\)) # (!CNT500ms(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!CNT500ms(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X5_Y62_N28
\Add0~20\ : cycloneive_lcell_comb
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

-- Location: FF_X5_Y62_N29
\CNT500ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(10));

-- Location: LCCOMB_X5_Y62_N30
\Add0~22\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X4_Y61_N10
\CNT500ms~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT500ms~10_combout\ = (\Add0~22_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~22_combout\,
	datad => \Equal0~7_combout\,
	combout => \CNT500ms~10_combout\);

-- Location: FF_X4_Y61_N11
\CNT500ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT500ms~10_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(11));

-- Location: LCCOMB_X5_Y61_N0
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (CNT500ms(12) & (\Add0~23\ $ (GND))) # (!CNT500ms(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((CNT500ms(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X6_Y61_N0
\CNT500ms~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT500ms~9_combout\ = (\Add0~24_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal0~7_combout\,
	combout => \CNT500ms~9_combout\);

-- Location: FF_X5_Y61_N19
\CNT500ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \CNT500ms~9_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(12));

-- Location: LCCOMB_X5_Y61_N6
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (CNT500ms(15) & (!\Add0~29\)) # (!CNT500ms(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!CNT500ms(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X5_Y61_N7
\CNT500ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(15));

-- Location: LCCOMB_X5_Y61_N10
\Add0~34\ : cycloneive_lcell_comb
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

-- Location: FF_X5_Y61_N11
\CNT500ms[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(17));

-- Location: LCCOMB_X5_Y61_N12
\Add0~36\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X5_Y61_N26
\CNT500ms~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT500ms~5_combout\ = (!\Equal0~7_combout\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~36_combout\,
	combout => \CNT500ms~5_combout\);

-- Location: FF_X5_Y61_N27
\CNT500ms[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT500ms~5_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(18));

-- Location: LCCOMB_X5_Y61_N16
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (CNT500ms(20) & (\Add0~39\ $ (GND))) # (!CNT500ms(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((CNT500ms(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X5_Y61_N28
\CNT500ms~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT500ms~3_combout\ = (!\Equal0~7_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~40_combout\,
	combout => \CNT500ms~3_combout\);

-- Location: FF_X5_Y61_N29
\CNT500ms[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT500ms~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(20));

-- Location: LCCOMB_X5_Y61_N18
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (CNT500ms(21) & (!\Add0~41\)) # (!CNT500ms(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!CNT500ms(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT500ms(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X4_Y61_N22
\CNT500ms~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT500ms~2_combout\ = (!\Equal0~7_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~42_combout\,
	combout => \CNT500ms~2_combout\);

-- Location: FF_X4_Y61_N23
\CNT500ms[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT500ms~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(21));

-- Location: LCCOMB_X5_Y61_N20
\Add0~44\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X4_Y61_N28
\CNT500ms~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT500ms~1_combout\ = (!\Equal0~7_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~44_combout\,
	combout => \CNT500ms~1_combout\);

-- Location: FF_X4_Y61_N29
\CNT500ms[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT500ms~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(22));

-- Location: LCCOMB_X5_Y61_N22
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (CNT500ms(23) & (!\Add0~45\)) # (!CNT500ms(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!CNT500ms(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X5_Y61_N24
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = CNT500ms(24) $ (!\Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(24),
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X5_Y61_N30
\CNT500ms~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT500ms~0_combout\ = (!\Equal0~7_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~48_combout\,
	combout => \CNT500ms~0_combout\);

-- Location: FF_X5_Y61_N31
\CNT500ms[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CNT500ms~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(24));

-- Location: FF_X5_Y61_N23
\CNT500ms[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(23));

-- Location: LCCOMB_X4_Y61_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (CNT500ms(21) & (CNT500ms(22) & (CNT500ms(24) & !CNT500ms(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(21),
	datab => CNT500ms(22),
	datac => CNT500ms(24),
	datad => CNT500ms(23),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X4_Y61_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (CNT500ms(19) & (!CNT500ms(17) & (CNT500ms(18) & CNT500ms(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(19),
	datab => CNT500ms(17),
	datac => CNT500ms(18),
	datad => CNT500ms(20),
	combout => \Equal0~1_combout\);

-- Location: FF_X5_Y62_N27
\CNT500ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT500ms(9));

-- Location: LCCOMB_X4_Y61_N0
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (CNT500ms(11) & (CNT500ms(12) & (!CNT500ms(9) & !CNT500ms(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT500ms(11),
	datab => CNT500ms(12),
	datac => CNT500ms(9),
	datad => CNT500ms(10),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X4_Y61_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X4_Y61_N24
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (CNT500ms(0) & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => CNT500ms(0),
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: IOIBUF_X0_Y66_N22
\pulse_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulse_in,
	o => \pulse_in~input_o\);

-- Location: LCCOMB_X4_Y61_N20
\old_pulse_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \old_pulse_in~0_combout\ = (\reset~input_o\ & (((\old_pulse_in~q\)))) # (!\reset~input_o\ & ((\Equal0~7_combout\ & ((\old_pulse_in~q\))) # (!\Equal0~7_combout\ & (\pulse_in~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pulse_in~input_o\,
	datac => \old_pulse_in~q\,
	datad => \Equal0~7_combout\,
	combout => \old_pulse_in~0_combout\);

-- Location: FF_X4_Y61_N21
old_pulse_in : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \old_pulse_in~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \old_pulse_in~q\);

-- Location: LCCOMB_X4_Y61_N30
\counter[0][0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][0]~17_combout\ = (\Equal0~7_combout\) # ((!\old_pulse_in~q\ & \pulse_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \old_pulse_in~q\,
	datac => \pulse_in~input_o\,
	datad => \Equal0~7_combout\,
	combout => \counter[0][0]~17_combout\);

-- Location: FF_X3_Y61_N1
\counter[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][0]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][0]~q\);

-- Location: LCCOMB_X2_Y61_N14
\counter[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][0]~feeder_combout\ = \counter[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[0][0]~q\,
	combout => \counter[1][0]~feeder_combout\);

-- Location: FF_X2_Y61_N15
\counter[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][0]~q\);

-- Location: LCCOMB_X4_Y61_N6
\tmp[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[14]~0_combout\ = (!\reset~input_o\ & \Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Equal0~7_combout\,
	combout => \tmp[14]~0_combout\);

-- Location: FF_X2_Y61_N25
\tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \counter[1][0]~q\,
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(0));

-- Location: LCCOMB_X1_Y61_N12
\count[1]~reg0feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X1_Y61_N13
\count[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[1]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N2
\counter[0][1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][1]~18_combout\ = (\counter[0][1]~q\ & (!\counter[0][0]~16\)) # (!\counter[0][1]~q\ & ((\counter[0][0]~16\) # (GND)))
-- \counter[0][1]~19\ = CARRY((!\counter[0][0]~16\) # (!\counter[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][1]~q\,
	datad => VCC,
	cin => \counter[0][0]~16\,
	combout => \counter[0][1]~18_combout\,
	cout => \counter[0][1]~19\);

-- Location: FF_X3_Y61_N3
\counter[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][1]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][1]~q\);

-- Location: LCCOMB_X2_Y61_N20
\counter[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][1]~feeder_combout\ = \counter[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][1]~q\,
	combout => \counter[1][1]~feeder_combout\);

-- Location: FF_X2_Y61_N21
\counter[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][1]~q\);

-- Location: LCCOMB_X2_Y61_N6
\tmp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[1]~feeder_combout\ = \counter[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][1]~q\,
	combout => \tmp[1]~feeder_combout\);

-- Location: FF_X2_Y61_N7
\tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tmp[1]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(1));

-- Location: LCCOMB_X1_Y61_N14
\count[2]~reg0feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X1_Y61_N15
\count[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[2]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N4
\counter[0][2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][2]~20_combout\ = (\counter[0][2]~q\ & (\counter[0][1]~19\ $ (GND))) # (!\counter[0][2]~q\ & (!\counter[0][1]~19\ & VCC))
-- \counter[0][2]~21\ = CARRY((\counter[0][2]~q\ & !\counter[0][1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][2]~q\,
	datad => VCC,
	cin => \counter[0][1]~19\,
	combout => \counter[0][2]~20_combout\,
	cout => \counter[0][2]~21\);

-- Location: FF_X3_Y61_N5
\counter[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][2]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][2]~q\);

-- Location: LCCOMB_X2_Y61_N10
\counter[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][2]~feeder_combout\ = \counter[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][2]~q\,
	combout => \counter[1][2]~feeder_combout\);

-- Location: FF_X2_Y61_N11
\counter[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][2]~q\);

-- Location: LCCOMB_X2_Y61_N12
\tmp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[2]~feeder_combout\ = \counter[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][2]~q\,
	combout => \tmp[2]~feeder_combout\);

-- Location: FF_X2_Y61_N13
\tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tmp[2]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(2));

-- Location: LCCOMB_X1_Y61_N28
\count[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~reg0feeder_combout\ = tmp(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(2),
	combout => \count[3]~reg0feeder_combout\);

-- Location: FF_X1_Y61_N29
\count[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[3]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[3]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N6
\counter[0][3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][3]~22_combout\ = (\counter[0][3]~q\ & (!\counter[0][2]~21\)) # (!\counter[0][3]~q\ & ((\counter[0][2]~21\) # (GND)))
-- \counter[0][3]~23\ = CARRY((!\counter[0][2]~21\) # (!\counter[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0][3]~q\,
	datad => VCC,
	cin => \counter[0][2]~21\,
	combout => \counter[0][3]~22_combout\,
	cout => \counter[0][3]~23\);

-- Location: FF_X3_Y61_N7
\counter[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][3]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][3]~q\);

-- Location: LCCOMB_X2_Y61_N4
\counter[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][3]~feeder_combout\ = \counter[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][3]~q\,
	combout => \counter[1][3]~feeder_combout\);

-- Location: FF_X2_Y61_N5
\counter[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][3]~q\);

-- Location: LCCOMB_X1_Y61_N24
\tmp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[3]~feeder_combout\ = \counter[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][3]~q\,
	combout => \tmp[3]~feeder_combout\);

-- Location: FF_X1_Y61_N25
\tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tmp[3]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(3));

-- Location: LCCOMB_X1_Y61_N6
\count[4]~reg0feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X1_Y61_N7
\count[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[4]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[4]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N8
\counter[0][4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][4]~24_combout\ = (\counter[0][4]~q\ & (\counter[0][3]~23\ $ (GND))) # (!\counter[0][4]~q\ & (!\counter[0][3]~23\ & VCC))
-- \counter[0][4]~25\ = CARRY((\counter[0][4]~q\ & !\counter[0][3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][4]~q\,
	datad => VCC,
	cin => \counter[0][3]~23\,
	combout => \counter[0][4]~24_combout\,
	cout => \counter[0][4]~25\);

-- Location: FF_X3_Y61_N9
\counter[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][4]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][4]~q\);

-- Location: LCCOMB_X2_Y61_N22
\counter[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][4]~feeder_combout\ = \counter[0][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[0][4]~q\,
	combout => \counter[1][4]~feeder_combout\);

-- Location: FF_X2_Y61_N23
\counter[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][4]~q\);

-- Location: LCCOMB_X1_Y61_N18
\tmp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[4]~feeder_combout\ = \counter[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][4]~q\,
	combout => \tmp[4]~feeder_combout\);

-- Location: FF_X1_Y61_N19
\tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tmp[4]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(4));

-- Location: LCCOMB_X1_Y61_N8
\count[5]~reg0feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X1_Y61_N9
\count[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[5]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[5]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N10
\counter[0][5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][5]~26_combout\ = (\counter[0][5]~q\ & (!\counter[0][4]~25\)) # (!\counter[0][5]~q\ & ((\counter[0][4]~25\) # (GND)))
-- \counter[0][5]~27\ = CARRY((!\counter[0][4]~25\) # (!\counter[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0][5]~q\,
	datad => VCC,
	cin => \counter[0][4]~25\,
	combout => \counter[0][5]~26_combout\,
	cout => \counter[0][5]~27\);

-- Location: FF_X3_Y61_N11
\counter[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][5]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][5]~q\);

-- Location: LCCOMB_X6_Y61_N14
\counter[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][5]~feeder_combout\ = \counter[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][5]~q\,
	combout => \counter[1][5]~feeder_combout\);

-- Location: FF_X6_Y61_N15
\counter[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][5]~q\);

-- Location: FF_X5_Y61_N15
\tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \counter[1][5]~q\,
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(5));

-- Location: FF_X5_Y61_N25
\count[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tmp(5),
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[6]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N12
\counter[0][6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][6]~28_combout\ = (\counter[0][6]~q\ & (\counter[0][5]~27\ $ (GND))) # (!\counter[0][6]~q\ & (!\counter[0][5]~27\ & VCC))
-- \counter[0][6]~29\ = CARRY((\counter[0][6]~q\ & !\counter[0][5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0][6]~q\,
	datad => VCC,
	cin => \counter[0][5]~27\,
	combout => \counter[0][6]~28_combout\,
	cout => \counter[0][6]~29\);

-- Location: FF_X3_Y61_N13
\counter[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][6]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][6]~q\);

-- Location: LCCOMB_X2_Y61_N28
\counter[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][6]~feeder_combout\ = \counter[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[0][6]~q\,
	combout => \counter[1][6]~feeder_combout\);

-- Location: FF_X2_Y61_N29
\counter[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][6]~q\);

-- Location: LCCOMB_X1_Y61_N20
\tmp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[6]~feeder_combout\ = \counter[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][6]~q\,
	combout => \tmp[6]~feeder_combout\);

-- Location: FF_X1_Y61_N21
\tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tmp[6]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(6));

-- Location: LCCOMB_X1_Y61_N2
\count[7]~reg0feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X1_Y61_N3
\count[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[7]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[7]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N14
\counter[0][7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][7]~30_combout\ = (\counter[0][7]~q\ & (!\counter[0][6]~29\)) # (!\counter[0][7]~q\ & ((\counter[0][6]~29\) # (GND)))
-- \counter[0][7]~31\ = CARRY((!\counter[0][6]~29\) # (!\counter[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][7]~q\,
	datad => VCC,
	cin => \counter[0][6]~29\,
	combout => \counter[0][7]~30_combout\,
	cout => \counter[0][7]~31\);

-- Location: FF_X3_Y61_N15
\counter[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][7]~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][7]~q\);

-- Location: LCCOMB_X2_Y61_N18
\counter[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][7]~feeder_combout\ = \counter[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][7]~q\,
	combout => \counter[1][7]~feeder_combout\);

-- Location: FF_X2_Y61_N19
\counter[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][7]~q\);

-- Location: LCCOMB_X1_Y61_N10
\tmp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[7]~feeder_combout\ = \counter[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][7]~q\,
	combout => \tmp[7]~feeder_combout\);

-- Location: FF_X1_Y61_N11
\tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tmp[7]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(7));

-- Location: LCCOMB_X1_Y61_N0
\count[8]~reg0feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X1_Y61_N1
\count[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[8]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[8]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N16
\counter[0][8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][8]~32_combout\ = (\counter[0][8]~q\ & (\counter[0][7]~31\ $ (GND))) # (!\counter[0][8]~q\ & (!\counter[0][7]~31\ & VCC))
-- \counter[0][8]~33\ = CARRY((\counter[0][8]~q\ & !\counter[0][7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][8]~q\,
	datad => VCC,
	cin => \counter[0][7]~31\,
	combout => \counter[0][8]~32_combout\,
	cout => \counter[0][8]~33\);

-- Location: FF_X3_Y61_N17
\counter[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][8]~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][8]~q\);

-- Location: LCCOMB_X2_Y61_N16
\counter[1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][8]~feeder_combout\ = \counter[0][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][8]~q\,
	combout => \counter[1][8]~feeder_combout\);

-- Location: FF_X2_Y61_N17
\counter[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][8]~q\);

-- Location: LCCOMB_X2_Y61_N2
\tmp[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[8]~feeder_combout\ = \counter[1][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][8]~q\,
	combout => \tmp[8]~feeder_combout\);

-- Location: FF_X2_Y61_N3
\tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tmp[8]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(8));

-- Location: LCCOMB_X1_Y61_N30
\count[9]~reg0feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X1_Y61_N31
\count[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[9]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[9]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N18
\counter[0][9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][9]~34_combout\ = (\counter[0][9]~q\ & (!\counter[0][8]~33\)) # (!\counter[0][9]~q\ & ((\counter[0][8]~33\) # (GND)))
-- \counter[0][9]~35\ = CARRY((!\counter[0][8]~33\) # (!\counter[0][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][9]~q\,
	datad => VCC,
	cin => \counter[0][8]~33\,
	combout => \counter[0][9]~34_combout\,
	cout => \counter[0][9]~35\);

-- Location: FF_X3_Y61_N19
\counter[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][9]~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][9]~q\);

-- Location: LCCOMB_X2_Y61_N26
\counter[1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][9]~feeder_combout\ = \counter[0][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][9]~q\,
	combout => \counter[1][9]~feeder_combout\);

-- Location: FF_X2_Y61_N27
\counter[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][9]~q\);

-- Location: FF_X2_Y61_N9
\tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \counter[1][9]~q\,
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(9));

-- Location: LCCOMB_X1_Y61_N16
\count[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~reg0feeder_combout\ = tmp(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(9),
	combout => \count[10]~reg0feeder_combout\);

-- Location: FF_X1_Y61_N17
\count[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[10]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[10]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N20
\counter[0][10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][10]~36_combout\ = (\counter[0][10]~q\ & (\counter[0][9]~35\ $ (GND))) # (!\counter[0][10]~q\ & (!\counter[0][9]~35\ & VCC))
-- \counter[0][10]~37\ = CARRY((\counter[0][10]~q\ & !\counter[0][9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][10]~q\,
	datad => VCC,
	cin => \counter[0][9]~35\,
	combout => \counter[0][10]~36_combout\,
	cout => \counter[0][10]~37\);

-- Location: FF_X3_Y61_N21
\counter[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][10]~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][10]~q\);

-- Location: LCCOMB_X6_Y61_N12
\counter[1][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][10]~feeder_combout\ = \counter[0][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][10]~q\,
	combout => \counter[1][10]~feeder_combout\);

-- Location: FF_X6_Y61_N13
\counter[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][10]~q\);

-- Location: FF_X5_Y61_N13
\tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \counter[1][10]~q\,
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(10));

-- Location: LCCOMB_X1_Y61_N26
\count[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~reg0feeder_combout\ = tmp(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(10),
	combout => \count[11]~reg0feeder_combout\);

-- Location: FF_X1_Y61_N27
\count[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[11]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[11]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N22
\counter[0][11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][11]~38_combout\ = (\counter[0][11]~q\ & (!\counter[0][10]~37\)) # (!\counter[0][11]~q\ & ((\counter[0][10]~37\) # (GND)))
-- \counter[0][11]~39\ = CARRY((!\counter[0][10]~37\) # (!\counter[0][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0][11]~q\,
	datad => VCC,
	cin => \counter[0][10]~37\,
	combout => \counter[0][11]~38_combout\,
	cout => \counter[0][11]~39\);

-- Location: FF_X3_Y61_N23
\counter[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][11]~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][11]~q\);

-- Location: LCCOMB_X3_Y61_N30
\counter[1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][11]~feeder_combout\ = \counter[0][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[0][11]~q\,
	combout => \counter[1][11]~feeder_combout\);

-- Location: FF_X3_Y61_N31
\counter[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][11]~q\);

-- Location: LCCOMB_X2_Y61_N30
\tmp[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[11]~feeder_combout\ = \counter[1][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[1][11]~q\,
	combout => \tmp[11]~feeder_combout\);

-- Location: FF_X2_Y61_N31
\tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tmp[11]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(11));

-- Location: LCCOMB_X1_Y61_N4
\count[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~reg0feeder_combout\ = tmp(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(11),
	combout => \count[12]~reg0feeder_combout\);

-- Location: FF_X1_Y61_N5
\count[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[12]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[12]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N24
\counter[0][12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][12]~40_combout\ = (\counter[0][12]~q\ & (\counter[0][11]~39\ $ (GND))) # (!\counter[0][12]~q\ & (!\counter[0][11]~39\ & VCC))
-- \counter[0][12]~41\ = CARRY((\counter[0][12]~q\ & !\counter[0][11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counter[0][12]~q\,
	datad => VCC,
	cin => \counter[0][11]~39\,
	combout => \counter[0][12]~40_combout\,
	cout => \counter[0][12]~41\);

-- Location: FF_X3_Y61_N25
\counter[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][12]~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][12]~q\);

-- Location: LCCOMB_X6_Y61_N30
\counter[1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][12]~feeder_combout\ = \counter[0][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][12]~q\,
	combout => \counter[1][12]~feeder_combout\);

-- Location: FF_X6_Y61_N31
\counter[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][12]~q\);

-- Location: FF_X5_Y61_N1
\tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \counter[1][12]~q\,
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(12));

-- Location: FF_X5_Y61_N5
\count[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tmp(12),
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[13]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N26
\counter[0][13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][13]~42_combout\ = (\counter[0][13]~q\ & (!\counter[0][12]~41\)) # (!\counter[0][13]~q\ & ((\counter[0][12]~41\) # (GND)))
-- \counter[0][13]~43\ = CARRY((!\counter[0][12]~41\) # (!\counter[0][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0][13]~q\,
	datad => VCC,
	cin => \counter[0][12]~41\,
	combout => \counter[0][13]~42_combout\,
	cout => \counter[0][13]~43\);

-- Location: FF_X3_Y61_N27
\counter[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][13]~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][13]~q\);

-- Location: LCCOMB_X6_Y61_N16
\counter[1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][13]~feeder_combout\ = \counter[0][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][13]~q\,
	combout => \counter[1][13]~feeder_combout\);

-- Location: FF_X6_Y61_N17
\counter[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][13]~q\);

-- Location: LCCOMB_X2_Y61_N0
\tmp[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[13]~feeder_combout\ = \counter[1][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[1][13]~q\,
	combout => \tmp[13]~feeder_combout\);

-- Location: FF_X2_Y61_N1
\tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tmp[13]~feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(13));

-- Location: LCCOMB_X1_Y61_N22
\count[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~reg0feeder_combout\ = tmp(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(13),
	combout => \count[14]~reg0feeder_combout\);

-- Location: FF_X1_Y61_N23
\count[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[14]~reg0feeder_combout\,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[14]~reg0_q\);

-- Location: LCCOMB_X3_Y61_N28
\counter[0][14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0][14]~44_combout\ = \counter[0][13]~43\ $ (!\counter[0][14]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][14]~q\,
	cin => \counter[0][13]~43\,
	combout => \counter[0][14]~44_combout\);

-- Location: FF_X3_Y61_N29
\counter[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0][14]~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~7_combout\,
	ena => \counter[0][0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0][14]~q\);

-- Location: LCCOMB_X6_Y61_N10
\counter[1][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1][14]~feeder_combout\ = \counter[0][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[0][14]~q\,
	combout => \counter[1][14]~feeder_combout\);

-- Location: FF_X6_Y61_N11
\counter[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1][14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1][14]~q\);

-- Location: FF_X5_Y61_N17
\tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \counter[1][14]~q\,
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(14));

-- Location: FF_X5_Y61_N3
\count[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => tmp(14),
	sload => VCC,
	ena => \tmp[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[15]~reg0_q\);

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;

ww_count(4) <= \count[4]~output_o\;

ww_count(5) <= \count[5]~output_o\;

ww_count(6) <= \count[6]~output_o\;

ww_count(7) <= \count[7]~output_o\;

ww_count(8) <= \count[8]~output_o\;

ww_count(9) <= \count[9]~output_o\;

ww_count(10) <= \count[10]~output_o\;

ww_count(11) <= \count[11]~output_o\;

ww_count(12) <= \count[12]~output_o\;

ww_count(13) <= \count[13]~output_o\;

ww_count(14) <= \count[14]~output_o\;

ww_count(15) <= \count[15]~output_o\;
END structure;


