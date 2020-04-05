-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 Patches 0.01we SJ Web Edition"

-- DATE "04/05/2020 20:07:55"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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

ENTITY 	i2s_interface IS
    PORT (
	clk : IN std_logic;
	mems_bclk : OUT std_logic;
	lrcl : OUT std_logic;
	data : IN std_logic;
	reset : IN std_logic;
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	led4 : OUT std_logic;
	led5 : OUT std_logic;
	led6 : OUT std_logic;
	led7 : OUT std_logic
	);
END i2s_interface;

-- Design Ports Information
-- mems_bclk	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lrcl	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led6	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led7	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF i2s_interface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mems_bclk : std_logic;
SIGNAL ww_lrcl : std_logic;
SIGNAL ww_data : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_led4 : std_logic;
SIGNAL ww_led5 : std_logic;
SIGNAL ww_led6 : std_logic;
SIGNAL ww_led7 : std_logic;
SIGNAL \bclk_in~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \mems_bclk~output_o\ : std_logic;
SIGNAL \lrcl~output_o\ : std_logic;
SIGNAL \led0~output_o\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \led2~output_o\ : std_logic;
SIGNAL \led3~output_o\ : std_logic;
SIGNAL \led4~output_o\ : std_logic;
SIGNAL \led5~output_o\ : std_logic;
SIGNAL \led6~output_o\ : std_logic;
SIGNAL \led7~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \bclk_count[0]~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \bclk_count~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \bclk_count~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \bclk_in~0_combout\ : std_logic;
SIGNAL \bclk_in~feeder_combout\ : std_logic;
SIGNAL \bclk_in~q\ : std_logic;
SIGNAL \bclk_in~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \ws_cnt~0_combout\ : std_logic;
SIGNAL \ws_toggle~0_combout\ : std_logic;
SIGNAL \ws_toggle~q\ : std_logic;
SIGNAL \data~input_o\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Decoder0~16_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \tri_state~0_combout\ : std_logic;
SIGNAL \tri_state~q\ : std_logic;
SIGNAL \Decoder0~22_combout\ : std_logic;
SIGNAL \bit_index[4]~4_combout\ : std_logic;
SIGNAL \bit_index[4]~8_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \bit_index[3]~7_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \bit_index[0]~5_combout\ : std_logic;
SIGNAL \bit_index[0]~6_combout\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \data_sample[5]~0_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~23_combout\ : std_logic;
SIGNAL \data_sample[6]~1_combout\ : std_logic;
SIGNAL \data_sample[7]~2_combout\ : std_logic;
SIGNAL \Decoder0~17_combout\ : std_logic;
SIGNAL \data_sample[8]~3_combout\ : std_logic;
SIGNAL \Decoder0~18_combout\ : std_logic;
SIGNAL \Decoder0~19_combout\ : std_logic;
SIGNAL \data_sample[9]~4_combout\ : std_logic;
SIGNAL \Decoder0~20_combout\ : std_logic;
SIGNAL \data_sample[10]~5_combout\ : std_logic;
SIGNAL \data_sample[11]~6_combout\ : std_logic;
SIGNAL \Decoder0~21_combout\ : std_logic;
SIGNAL \data_sample[12]~7_combout\ : std_logic;
SIGNAL data_sample : std_logic_vector(23 DOWNTO 0);
SIGNAL bclk_count : std_logic_vector(31 DOWNTO 0);
SIGNAL ws_cnt : std_logic_vector(5 DOWNTO 0);
SIGNAL bit_index : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_ws_toggle~q\ : std_logic;
SIGNAL \ALT_INV_bclk_in~q\ : std_logic;
SIGNAL \ALT_INV_bclk_in~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
mems_bclk <= ww_mems_bclk;
lrcl <= ww_lrcl;
ww_data <= data;
ww_reset <= reset;
led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
led4 <= ww_led4;
led5 <= ww_led5;
led6 <= ww_led6;
led7 <= ww_led7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\bclk_in~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bclk_in~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_ws_toggle~q\ <= NOT \ws_toggle~q\;
\ALT_INV_bclk_in~q\ <= NOT \bclk_in~q\;
\ALT_INV_bclk_in~clkctrl_outclk\ <= NOT \bclk_in~clkctrl_outclk\;

-- Location: IOOBUF_X7_Y34_N16
\mems_bclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_bclk_in~q\,
	devoe => ww_devoe,
	o => \mems_bclk~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\lrcl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ws_toggle~q\,
	devoe => ww_devoe,
	o => \lrcl~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\led0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_sample(5),
	devoe => ww_devoe,
	o => \led0~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\led1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_sample(6),
	devoe => ww_devoe,
	o => \led1~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\led2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_sample(7),
	devoe => ww_devoe,
	o => \led2~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\led3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_sample(8),
	devoe => ww_devoe,
	o => \led3~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\led4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_sample(9),
	devoe => ww_devoe,
	o => \led4~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_sample(10),
	devoe => ww_devoe,
	o => \led5~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\led6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_sample(11),
	devoe => ww_devoe,
	o => \led6~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\led7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_sample(12),
	devoe => ww_devoe,
	o => \led7~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X51_Y11_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = bclk_count(0) $ (GND)
-- \Add0~1\ = CARRY(!bclk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X52_Y11_N30
\bclk_count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bclk_count[0]~2_combout\ = !\Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~0_combout\,
	combout => \bclk_count[0]~2_combout\);

-- Location: FF_X51_Y11_N3
\bclk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bclk_count[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(0));

-- Location: LCCOMB_X51_Y11_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (bclk_count(1) & (!\Add0~1\)) # (!bclk_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!bclk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X52_Y11_N0
\bclk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bclk_count~0_combout\ = (\Add0~2_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \Equal0~10_combout\,
	combout => \bclk_count~0_combout\);

-- Location: FF_X51_Y11_N7
\bclk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bclk_count~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(1));

-- Location: LCCOMB_X51_Y11_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (bclk_count(2) & (\Add0~3\ $ (GND))) # (!bclk_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((bclk_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X51_Y11_N5
\bclk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(2));

-- Location: LCCOMB_X51_Y11_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (bclk_count(3) & (!\Add0~5\)) # (!bclk_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!bclk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X52_Y11_N12
\bclk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bclk_count~1_combout\ = (\Add0~6_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \Equal0~10_combout\,
	combout => \bclk_count~1_combout\);

-- Location: FF_X51_Y11_N1
\bclk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bclk_count~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(3));

-- Location: LCCOMB_X51_Y11_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (bclk_count(4) & (\Add0~7\ $ (GND))) # (!bclk_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((bclk_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X51_Y11_N9
\bclk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(4));

-- Location: LCCOMB_X51_Y11_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (bclk_count(5) & (!\Add0~9\)) # (!bclk_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!bclk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X51_Y11_N11
\bclk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(5));

-- Location: LCCOMB_X51_Y11_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (bclk_count(6) & (\Add0~11\ $ (GND))) # (!bclk_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((bclk_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X51_Y11_N13
\bclk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(6));

-- Location: LCCOMB_X51_Y11_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (bclk_count(7) & (!\Add0~13\)) # (!bclk_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!bclk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X51_Y11_N15
\bclk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(7));

-- Location: LCCOMB_X51_Y11_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (bclk_count(8) & (\Add0~15\ $ (GND))) # (!bclk_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((bclk_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X51_Y11_N17
\bclk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(8));

-- Location: LCCOMB_X51_Y11_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (bclk_count(9) & (!\Add0~17\)) # (!bclk_count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!bclk_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X51_Y11_N19
\bclk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(9));

-- Location: LCCOMB_X51_Y11_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (bclk_count(10) & (\Add0~19\ $ (GND))) # (!bclk_count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((bclk_count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X51_Y11_N21
\bclk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(10));

-- Location: LCCOMB_X51_Y11_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (bclk_count(11) & (!\Add0~21\)) # (!bclk_count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!bclk_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X51_Y11_N23
\bclk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(11));

-- Location: LCCOMB_X51_Y11_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (bclk_count(12) & (\Add0~23\ $ (GND))) # (!bclk_count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((bclk_count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X51_Y11_N25
\bclk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(12));

-- Location: LCCOMB_X51_Y11_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (bclk_count(13) & (!\Add0~25\)) # (!bclk_count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!bclk_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X51_Y11_N27
\bclk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(13));

-- Location: LCCOMB_X51_Y11_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (bclk_count(14) & (\Add0~27\ $ (GND))) # (!bclk_count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((bclk_count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X51_Y11_N29
\bclk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(14));

-- Location: LCCOMB_X51_Y11_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (bclk_count(15) & (!\Add0~29\)) # (!bclk_count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!bclk_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X51_Y11_N31
\bclk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(15));

-- Location: LCCOMB_X52_Y11_N22
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!bclk_count(13) & (!bclk_count(12) & (!bclk_count(15) & !bclk_count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(13),
	datab => bclk_count(12),
	datac => bclk_count(15),
	datad => bclk_count(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X52_Y11_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!bclk_count(7) & (!bclk_count(6) & (!bclk_count(4) & !bclk_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(7),
	datab => bclk_count(6),
	datac => bclk_count(4),
	datad => bclk_count(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X52_Y11_N8
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!bclk_count(8) & (!bclk_count(9) & (!bclk_count(11) & !bclk_count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(8),
	datab => bclk_count(9),
	datac => bclk_count(11),
	datad => bclk_count(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X52_Y11_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (bclk_count(0) & (!bclk_count(2) & (bclk_count(3) & bclk_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(0),
	datab => bclk_count(2),
	datac => bclk_count(3),
	datad => bclk_count(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X52_Y11_N26
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X51_Y10_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (bclk_count(16) & (\Add0~31\ $ (GND))) # (!bclk_count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((bclk_count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X51_Y10_N1
\bclk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(16));

-- Location: LCCOMB_X51_Y10_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (bclk_count(17) & (!\Add0~33\)) # (!bclk_count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!bclk_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X51_Y10_N3
\bclk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(17));

-- Location: LCCOMB_X51_Y10_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (bclk_count(18) & (\Add0~35\ $ (GND))) # (!bclk_count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((bclk_count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X51_Y10_N5
\bclk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(18));

-- Location: LCCOMB_X51_Y10_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (bclk_count(19) & (!\Add0~37\)) # (!bclk_count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!bclk_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X51_Y10_N7
\bclk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(19));

-- Location: LCCOMB_X51_Y10_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (bclk_count(20) & (\Add0~39\ $ (GND))) # (!bclk_count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((bclk_count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X51_Y10_N9
\bclk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(20));

-- Location: LCCOMB_X51_Y10_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (bclk_count(21) & (!\Add0~41\)) # (!bclk_count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!bclk_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X51_Y10_N11
\bclk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(21));

-- Location: LCCOMB_X51_Y10_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (bclk_count(22) & (\Add0~43\ $ (GND))) # (!bclk_count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((bclk_count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X51_Y10_N13
\bclk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(22));

-- Location: LCCOMB_X51_Y10_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (bclk_count(23) & (!\Add0~45\)) # (!bclk_count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!bclk_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X51_Y10_N15
\bclk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(23));

-- Location: LCCOMB_X52_Y10_N30
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!bclk_count(21) & !bclk_count(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bclk_count(21),
	datad => bclk_count(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X52_Y10_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!bclk_count(16) & (!bclk_count(19) & (!bclk_count(18) & !bclk_count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(16),
	datab => bclk_count(19),
	datac => bclk_count(18),
	datad => bclk_count(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X52_Y10_N0
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!bclk_count(23) & (!bclk_count(22) & (\Equal0~6_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(23),
	datab => bclk_count(22),
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X51_Y10_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (bclk_count(24) & (\Add0~47\ $ (GND))) # (!bclk_count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((bclk_count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X51_Y10_N17
\bclk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(24));

-- Location: LCCOMB_X51_Y10_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (bclk_count(25) & (!\Add0~49\)) # (!bclk_count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!bclk_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X51_Y10_N19
\bclk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(25));

-- Location: LCCOMB_X51_Y10_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (bclk_count(26) & (\Add0~51\ $ (GND))) # (!bclk_count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((bclk_count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X51_Y10_N21
\bclk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(26));

-- Location: LCCOMB_X51_Y10_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (bclk_count(27) & (!\Add0~53\)) # (!bclk_count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!bclk_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X51_Y10_N23
\bclk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(27));

-- Location: LCCOMB_X52_Y10_N22
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!bclk_count(24) & (!bclk_count(27) & (!bclk_count(25) & !bclk_count(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(24),
	datab => bclk_count(27),
	datac => bclk_count(25),
	datad => bclk_count(26),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X51_Y10_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (bclk_count(28) & (\Add0~55\ $ (GND))) # (!bclk_count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((bclk_count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X51_Y10_N25
\bclk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(28));

-- Location: LCCOMB_X51_Y10_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (bclk_count(29) & (!\Add0~57\)) # (!bclk_count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!bclk_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X51_Y10_N27
\bclk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(29));

-- Location: LCCOMB_X51_Y10_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (bclk_count(30) & (\Add0~59\ $ (GND))) # (!bclk_count(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((bclk_count(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bclk_count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X51_Y10_N29
\bclk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(30));

-- Location: LCCOMB_X51_Y10_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = bclk_count(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X51_Y10_N31
\bclk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bclk_count(31));

-- Location: LCCOMB_X52_Y10_N16
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!bclk_count(29) & (!bclk_count(30) & (!bclk_count(31) & !bclk_count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bclk_count(29),
	datab => bclk_count(30),
	datac => bclk_count(31),
	datad => bclk_count(28),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X52_Y11_N20
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~7_combout\ & (\Equal0~8_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X52_Y11_N28
\bclk_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bclk_in~0_combout\ = \bclk_in~q\ $ (\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bclk_in~q\,
	datad => \Equal0~10_combout\,
	combout => \bclk_in~0_combout\);

-- Location: LCCOMB_X52_Y11_N24
\bclk_in~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bclk_in~feeder_combout\ = \bclk_in~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bclk_in~0_combout\,
	combout => \bclk_in~feeder_combout\);

-- Location: FF_X52_Y11_N25
bclk_in : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bclk_in~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bclk_in~q\);

-- Location: CLKCTRL_G8
\bclk_in~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bclk_in~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bclk_in~clkctrl_outclk\);

-- Location: LCCOMB_X3_Y27_N20
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ws_cnt(0) $ (VCC)
-- \Add1~1\ = CARRY(ws_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X3_Y27_N21
\ws_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bclk_in~clkctrl_outclk\,
	d => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(0));

-- Location: LCCOMB_X3_Y27_N22
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (ws_cnt(1) & (!\Add1~1\)) # (!ws_cnt(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!ws_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X3_Y27_N23
\ws_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bclk_in~clkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(1));

-- Location: LCCOMB_X3_Y27_N24
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (ws_cnt(2) & (\Add1~3\ $ (GND))) # (!ws_cnt(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((ws_cnt(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X3_Y27_N25
\ws_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bclk_in~clkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(2));

-- Location: LCCOMB_X3_Y27_N26
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (ws_cnt(3) & (!\Add1~5\)) # (!ws_cnt(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!ws_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X3_Y27_N27
\ws_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bclk_in~clkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(3));

-- Location: LCCOMB_X3_Y27_N12
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (ws_cnt(3) & (ws_cnt(2) & (ws_cnt(1) & ws_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(3),
	datab => ws_cnt(2),
	datac => ws_cnt(1),
	datad => ws_cnt(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X3_Y27_N28
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (ws_cnt(4) & (\Add1~7\ $ (GND))) # (!ws_cnt(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((ws_cnt(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X3_Y27_N29
\ws_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bclk_in~clkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(4));

-- Location: LCCOMB_X3_Y27_N30
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\ $ (ws_cnt(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ws_cnt(5),
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X3_Y27_N10
\ws_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws_cnt~0_combout\ = (\Add1~10_combout\ & (((ws_cnt(5)) # (!ws_cnt(4))) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => ws_cnt(4),
	datac => ws_cnt(5),
	datad => \Add1~10_combout\,
	combout => \ws_cnt~0_combout\);

-- Location: FF_X3_Y27_N11
\ws_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bclk_in~clkctrl_outclk\,
	d => \ws_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(5));

-- Location: LCCOMB_X3_Y27_N16
\ws_toggle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ws_toggle~0_combout\ = \ws_toggle~q\ $ (((!ws_cnt(5) & (ws_cnt(4) & \Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(5),
	datab => ws_cnt(4),
	datac => \ws_toggle~q\,
	datad => \Equal1~0_combout\,
	combout => \ws_toggle~0_combout\);

-- Location: FF_X4_Y27_N9
ws_toggle : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bclk_in~clkctrl_outclk\,
	asdata => \ws_toggle~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws_toggle~q\);

-- Location: IOIBUF_X1_Y34_N1
\data~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data,
	o => \data~input_o\);

-- Location: LCCOMB_X5_Y27_N22
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (bit_index(3) & (!\Add2~9\)) # (!bit_index(3) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!bit_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_index(3),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X5_Y27_N24
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = \Add2~11\ $ (!bit_index(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bit_index(4),
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X4_Y27_N6
\Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~16_combout\ = (bit_index(0) & !bit_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_index(0),
	datad => bit_index(1),
	combout => \Decoder0~16_combout\);

-- Location: LCCOMB_X5_Y27_N4
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!bit_index(2) & (bit_index(0) & (!bit_index(1) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(2),
	datab => bit_index(0),
	datac => bit_index(1),
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X5_Y27_N8
\tri_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tri_state~0_combout\ = (\ws_toggle~q\ & ((\tri_state~q\) # ((\Equal2~1_combout\ & \Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws_toggle~q\,
	datab => \Equal2~1_combout\,
	datac => \tri_state~q\,
	datad => \Equal2~0_combout\,
	combout => \tri_state~0_combout\);

-- Location: FF_X5_Y27_N9
tri_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \tri_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tri_state~q\);

-- Location: LCCOMB_X5_Y27_N2
\Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~22_combout\ = (!\tri_state~q\ & \ws_toggle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tri_state~q\,
	datad => \ws_toggle~q\,
	combout => \Decoder0~22_combout\);

-- Location: LCCOMB_X5_Y27_N6
\bit_index[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_index[4]~4_combout\ = (\Decoder0~22_combout\ & (((!bit_index(2) & \Decoder0~16_combout\)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(2),
	datab => \Equal2~0_combout\,
	datac => \Decoder0~16_combout\,
	datad => \Decoder0~22_combout\,
	combout => \bit_index[4]~4_combout\);

-- Location: LCCOMB_X5_Y27_N14
\bit_index[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_index[4]~8_combout\ = (\bit_index[4]~4_combout\ & (\Add2~12_combout\ & ((!bit_index(4)) # (!bit_index(3))))) # (!\bit_index[4]~4_combout\ & (((bit_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(3),
	datab => \Add2~12_combout\,
	datac => bit_index(4),
	datad => \bit_index[4]~4_combout\,
	combout => \bit_index[4]~8_combout\);

-- Location: FF_X5_Y27_N15
\bit_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \bit_index[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_index(4));

-- Location: LCCOMB_X5_Y27_N16
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = bit_index(0) $ (GND)
-- \Add2~5\ = CARRY(!bit_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(0),
	datad => VCC,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X5_Y27_N18
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (bit_index(1) & (!\Add2~5\)) # (!bit_index(1) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!bit_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(1),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X5_Y27_N26
\Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = (\Add2~6_combout\ & ((!bit_index(3)) # (!bit_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(4),
	datac => \Add2~6_combout\,
	datad => bit_index(3),
	combout => \Add2~15_combout\);

-- Location: FF_X5_Y27_N27
\bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \Add2~15_combout\,
	ena => \bit_index[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_index(1));

-- Location: LCCOMB_X5_Y27_N20
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (bit_index(2) & (\Add2~7\ $ (GND))) # (!bit_index(2) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((bit_index(2) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(2),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X5_Y27_N12
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add2~8_combout\ & ((!bit_index(3)) # (!bit_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~8_combout\,
	datac => bit_index(4),
	datad => bit_index(3),
	combout => \Add2~14_combout\);

-- Location: FF_X5_Y27_N13
\bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \Add2~14_combout\,
	ena => \bit_index[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_index(2));

-- Location: LCCOMB_X5_Y27_N28
\bit_index[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_index[3]~7_combout\ = (\bit_index[4]~4_combout\ & (\Add2~10_combout\ & ((!bit_index(3)) # (!bit_index(4))))) # (!\bit_index[4]~4_combout\ & (((bit_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => bit_index(4),
	datac => bit_index(3),
	datad => \bit_index[4]~4_combout\,
	combout => \bit_index[3]~7_combout\);

-- Location: FF_X5_Y27_N29
\bit_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \bit_index[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_index(3));

-- Location: LCCOMB_X5_Y27_N0
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (bit_index(3) & bit_index(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_index(3),
	datac => bit_index(4),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X5_Y27_N10
\bit_index[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_index[0]~5_combout\ = (\Decoder0~22_combout\ & ((\Equal2~0_combout\ & ((\Equal2~1_combout\))) # (!\Equal2~0_combout\ & (\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Add2~4_combout\,
	datac => \Equal2~1_combout\,
	datad => \Decoder0~22_combout\,
	combout => \bit_index[0]~5_combout\);

-- Location: LCCOMB_X5_Y27_N30
\bit_index[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_index[0]~6_combout\ = (!\bit_index[0]~5_combout\ & ((bit_index(0)) # ((!\Equal2~0_combout\ & \Decoder0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Decoder0~22_combout\,
	datac => bit_index(0),
	datad => \bit_index[0]~5_combout\,
	combout => \bit_index[0]~6_combout\);

-- Location: FF_X5_Y27_N31
\bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \bit_index[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_index(0));

-- Location: LCCOMB_X4_Y27_N28
\Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (!bit_index(0) & !bit_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_index(0),
	datad => bit_index(3),
	combout => \Decoder0~15_combout\);

-- Location: LCCOMB_X4_Y27_N14
\Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = ((!bit_index(1) & (!bit_index(2) & !bit_index(3)))) # (!bit_index(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(1),
	datab => bit_index(2),
	datac => bit_index(4),
	datad => bit_index(3),
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X4_Y27_N12
\Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (!bit_index(4) & (!\tri_state~q\ & \ws_toggle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_index(4),
	datac => \tri_state~q\,
	datad => \ws_toggle~q\,
	combout => \Decoder0~13_combout\);

-- Location: LCCOMB_X4_Y27_N10
\Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (!bit_index(1) & (bit_index(2) & (\Decoder0~12_combout\ & \Decoder0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(1),
	datab => bit_index(2),
	datac => \Decoder0~12_combout\,
	datad => \Decoder0~13_combout\,
	combout => \Decoder0~14_combout\);

-- Location: LCCOMB_X4_Y27_N26
\data_sample[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample[5]~0_combout\ = (\Decoder0~15_combout\ & ((\Decoder0~14_combout\ & (\data~input_o\)) # (!\Decoder0~14_combout\ & ((data_sample(5)))))) # (!\Decoder0~15_combout\ & (((data_sample(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~input_o\,
	datab => \Decoder0~15_combout\,
	datac => data_sample(5),
	datad => \Decoder0~14_combout\,
	combout => \data_sample[5]~0_combout\);

-- Location: FF_X4_Y27_N27
\data_sample[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \data_sample[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample(5));

-- Location: LCCOMB_X4_Y27_N18
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!bit_index(4) & (!\tri_state~q\ & \ws_toggle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_index(4),
	datac => \tri_state~q\,
	datad => \ws_toggle~q\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X4_Y27_N20
\Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~23_combout\ = (bit_index(1) & (!bit_index(3) & (bit_index(2) & \Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(1),
	datab => bit_index(3),
	datac => bit_index(2),
	datad => \Decoder0~3_combout\,
	combout => \Decoder0~23_combout\);

-- Location: LCCOMB_X4_Y27_N0
\data_sample[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample[6]~1_combout\ = (bit_index(0) & ((\Decoder0~23_combout\ & (\data~input_o\)) # (!\Decoder0~23_combout\ & ((data_sample(6)))))) # (!bit_index(0) & (((data_sample(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(0),
	datab => \data~input_o\,
	datac => data_sample(6),
	datad => \Decoder0~23_combout\,
	combout => \data_sample[6]~1_combout\);

-- Location: FF_X4_Y27_N1
\data_sample[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \data_sample[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample(6));

-- Location: LCCOMB_X4_Y27_N2
\data_sample[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample[7]~2_combout\ = (bit_index(0) & (((data_sample(7))))) # (!bit_index(0) & ((\Decoder0~23_combout\ & (\data~input_o\)) # (!\Decoder0~23_combout\ & ((data_sample(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(0),
	datab => \data~input_o\,
	datac => data_sample(7),
	datad => \Decoder0~23_combout\,
	combout => \data_sample[7]~2_combout\);

-- Location: FF_X4_Y27_N3
\data_sample[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \data_sample[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample(7));

-- Location: LCCOMB_X4_Y27_N24
\Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~17_combout\ = (!bit_index(2) & (bit_index(3) & (\Decoder0~12_combout\ & \Decoder0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(2),
	datab => bit_index(3),
	datac => \Decoder0~12_combout\,
	datad => \Decoder0~13_combout\,
	combout => \Decoder0~17_combout\);

-- Location: LCCOMB_X4_Y27_N16
\data_sample[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample[8]~3_combout\ = (\Decoder0~16_combout\ & ((\Decoder0~17_combout\ & (\data~input_o\)) # (!\Decoder0~17_combout\ & ((data_sample(8)))))) # (!\Decoder0~16_combout\ & (((data_sample(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~16_combout\,
	datab => \data~input_o\,
	datac => data_sample(8),
	datad => \Decoder0~17_combout\,
	combout => \data_sample[8]~3_combout\);

-- Location: FF_X4_Y27_N17
\data_sample[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \data_sample[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample(8));

-- Location: LCCOMB_X4_Y27_N30
\Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~18_combout\ = (!\tri_state~q\ & (!bit_index(4) & (!bit_index(2) & bit_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tri_state~q\,
	datab => bit_index(4),
	datac => bit_index(2),
	datad => bit_index(3),
	combout => \Decoder0~18_combout\);

-- Location: LCCOMB_X3_Y27_N18
\Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~19_combout\ = (\Decoder0~18_combout\ & (\ws_toggle~q\ & (\Decoder0~12_combout\ & !bit_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~18_combout\,
	datab => \ws_toggle~q\,
	datac => \Decoder0~12_combout\,
	datad => bit_index(0),
	combout => \Decoder0~19_combout\);

-- Location: LCCOMB_X3_Y27_N8
\data_sample[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample[9]~4_combout\ = (bit_index(1) & (((data_sample(9))))) # (!bit_index(1) & ((\Decoder0~19_combout\ & (\data~input_o\)) # (!\Decoder0~19_combout\ & ((data_sample(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(1),
	datab => \data~input_o\,
	datac => data_sample(9),
	datad => \Decoder0~19_combout\,
	combout => \data_sample[9]~4_combout\);

-- Location: FF_X3_Y27_N9
\data_sample[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \data_sample[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample(9));

-- Location: LCCOMB_X3_Y27_N4
\Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~20_combout\ = (bit_index(1) & bit_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_index(1),
	datad => bit_index(0),
	combout => \Decoder0~20_combout\);

-- Location: LCCOMB_X4_Y27_N22
\data_sample[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample[10]~5_combout\ = (\Decoder0~20_combout\ & ((\Decoder0~17_combout\ & (\data~input_o\)) # (!\Decoder0~17_combout\ & ((data_sample(10)))))) # (!\Decoder0~20_combout\ & (((data_sample(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~input_o\,
	datab => \Decoder0~20_combout\,
	datac => data_sample(10),
	datad => \Decoder0~17_combout\,
	combout => \data_sample[10]~5_combout\);

-- Location: FF_X4_Y27_N23
\data_sample[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \data_sample[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample(10));

-- Location: LCCOMB_X3_Y27_N14
\data_sample[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample[11]~6_combout\ = (bit_index(1) & ((\Decoder0~19_combout\ & (\data~input_o\)) # (!\Decoder0~19_combout\ & ((data_sample(11)))))) # (!bit_index(1) & (((data_sample(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(1),
	datab => \data~input_o\,
	datac => data_sample(11),
	datad => \Decoder0~19_combout\,
	combout => \data_sample[11]~6_combout\);

-- Location: FF_X3_Y27_N15
\data_sample[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \data_sample[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample(11));

-- Location: LCCOMB_X4_Y27_N8
\Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~21_combout\ = (bit_index(0) & bit_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_index(0),
	datad => bit_index(3),
	combout => \Decoder0~21_combout\);

-- Location: LCCOMB_X4_Y27_N4
\data_sample[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_sample[12]~7_combout\ = (\Decoder0~21_combout\ & ((\Decoder0~14_combout\ & (\data~input_o\)) # (!\Decoder0~14_combout\ & ((data_sample(12)))))) # (!\Decoder0~21_combout\ & (((data_sample(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~input_o\,
	datab => \Decoder0~21_combout\,
	datac => data_sample(12),
	datad => \Decoder0~14_combout\,
	combout => \data_sample[12]~7_combout\);

-- Location: FF_X4_Y27_N5
\data_sample[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_bclk_in~clkctrl_outclk\,
	d => \data_sample[12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_sample(12));

-- Location: IOIBUF_X0_Y11_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_mems_bclk <= \mems_bclk~output_o\;

ww_lrcl <= \lrcl~output_o\;

ww_led0 <= \led0~output_o\;

ww_led1 <= \led1~output_o\;

ww_led2 <= \led2~output_o\;

ww_led3 <= \led3~output_o\;

ww_led4 <= \led4~output_o\;

ww_led5 <= \led5~output_o\;

ww_led6 <= \led6~output_o\;

ww_led7 <= \led7~output_o\;
END structure;


