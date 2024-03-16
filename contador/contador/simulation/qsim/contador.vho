-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "02/13/2024 15:45:46"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PRACTICA1 IS
    PORT (
	HEX0 : INOUT std_logic_vector(7 DOWNTO 0);
	F : IN std_logic;
	INI : IN std_logic;
	CLK : IN std_logic;
	HEX1 : INOUT std_logic_vector(7 DOWNTO 0);
	HEX2 : INOUT std_logic_vector(7 DOWNTO 0);
	HEX3 : INOUT std_logic_vector(7 DOWNTO 0)
	);
END PRACTICA1;

-- Design Ports Information
-- HEX0[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INI	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PRACTICA1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_INI : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[7]~input_o\ : std_logic;
SIGNAL \HEX0[6]~input_o\ : std_logic;
SIGNAL \HEX0[5]~input_o\ : std_logic;
SIGNAL \HEX0[4]~input_o\ : std_logic;
SIGNAL \HEX0[3]~input_o\ : std_logic;
SIGNAL \HEX0[2]~input_o\ : std_logic;
SIGNAL \HEX0[1]~input_o\ : std_logic;
SIGNAL \HEX0[0]~input_o\ : std_logic;
SIGNAL \HEX1[7]~input_o\ : std_logic;
SIGNAL \HEX1[6]~input_o\ : std_logic;
SIGNAL \HEX1[5]~input_o\ : std_logic;
SIGNAL \HEX1[4]~input_o\ : std_logic;
SIGNAL \HEX1[3]~input_o\ : std_logic;
SIGNAL \HEX1[2]~input_o\ : std_logic;
SIGNAL \HEX1[1]~input_o\ : std_logic;
SIGNAL \HEX1[0]~input_o\ : std_logic;
SIGNAL \HEX2[7]~input_o\ : std_logic;
SIGNAL \HEX2[6]~input_o\ : std_logic;
SIGNAL \HEX2[5]~input_o\ : std_logic;
SIGNAL \HEX2[4]~input_o\ : std_logic;
SIGNAL \HEX2[3]~input_o\ : std_logic;
SIGNAL \HEX2[2]~input_o\ : std_logic;
SIGNAL \HEX2[1]~input_o\ : std_logic;
SIGNAL \HEX2[0]~input_o\ : std_logic;
SIGNAL \HEX3[7]~input_o\ : std_logic;
SIGNAL \HEX3[6]~input_o\ : std_logic;
SIGNAL \HEX3[5]~input_o\ : std_logic;
SIGNAL \HEX3[4]~input_o\ : std_logic;
SIGNAL \HEX3[3]~input_o\ : std_logic;
SIGNAL \HEX3[2]~input_o\ : std_logic;
SIGNAL \HEX3[1]~input_o\ : std_logic;
SIGNAL \HEX3[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|AUX~0_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|AUX~1_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|AUX~2_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|AUX~3_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|AUX~4_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|AUX~5_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|AUX~6_combout\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|AUX~7_combout\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst5|Add0~33\ : std_logic;
SIGNAL \inst5|Add0~34_combout\ : std_logic;
SIGNAL \inst5|CLK~0_combout\ : std_logic;
SIGNAL \inst5|CLK~feeder_combout\ : std_logic;
SIGNAL \inst5|CLK~q\ : std_logic;
SIGNAL \inst5|CLK~clkctrl_outclk\ : std_logic;
SIGNAL \INI~input_o\ : std_logic;
SIGNAL \inst|U~2_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|U~5_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \F~input_o\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|D[3]~1_combout\ : std_logic;
SIGNAL \inst|D[3]~2_combout\ : std_logic;
SIGNAL \inst|D[2]~4_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|C~4_combout\ : std_logic;
SIGNAL \inst|C[0]~5_combout\ : std_logic;
SIGNAL \inst|C[0]~9_combout\ : std_logic;
SIGNAL \inst|C[3]~10_combout\ : std_logic;
SIGNAL \inst|C[1]~6_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|C[2]~7_combout\ : std_logic;
SIGNAL \inst|Add1~1_combout\ : std_logic;
SIGNAL \inst|C[3]~8_combout\ : std_logic;
SIGNAL \inst|M~0_combout\ : std_logic;
SIGNAL \inst|M~1_combout\ : std_logic;
SIGNAL \inst|M[0]~2_combout\ : std_logic;
SIGNAL \inst|M[0]~3_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|M[2]~7_combout\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst|M[3]~8_combout\ : std_logic;
SIGNAL \inst|M[0]~4_combout\ : std_logic;
SIGNAL \inst|M[3]~5_combout\ : std_logic;
SIGNAL \inst|M[1]~6_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|RST~0_combout\ : std_logic;
SIGNAL \inst|D[0]~0_combout\ : std_logic;
SIGNAL \inst|D[1]~3_combout\ : std_logic;
SIGNAL \inst|Add2~1_combout\ : std_logic;
SIGNAL \inst|D[3]~5_combout\ : std_logic;
SIGNAL \inst|U[2]~3_combout\ : std_logic;
SIGNAL \inst|U~4_combout\ : std_logic;
SIGNAL \inst|U~6_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst|U\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|D\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|C\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|AUX\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|M\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|ALT_INV_CLK~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_F <= F;
ww_INI <= INI;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst5|CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|CLK~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst5|ALT_INV_CLK~clkctrl_outclk\ <= NOT \inst5|CLK~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux3~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux4~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux5~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux6~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux3~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux4~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux5~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux6~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux3~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux4~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux5~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux6~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux1~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux2~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux3~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux4~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux5~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux6~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X71_Y28_N14
\inst5|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|AUX\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|AUX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|AUX\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: FF_X71_Y28_N15
\inst5|AUX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(0));

-- Location: LCCOMB_X71_Y28_N16
\inst5|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|AUX\(1) & (\inst5|Add0~1\ & VCC)) # (!\inst5|AUX\(1) & (!\inst5|Add0~1\))
-- \inst5|Add0~3\ = CARRY((!\inst5|AUX\(1) & !\inst5|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|AUX\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: FF_X71_Y28_N17
\inst5|AUX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(1));

-- Location: LCCOMB_X71_Y28_N18
\inst5|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|AUX\(2) & ((GND) # (!\inst5|Add0~3\))) # (!\inst5|AUX\(2) & (\inst5|Add0~3\ $ (GND)))
-- \inst5|Add0~5\ = CARRY((\inst5|AUX\(2)) # (!\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|AUX\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: FF_X71_Y28_N19
\inst5|AUX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(2));

-- Location: LCCOMB_X71_Y28_N20
\inst5|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|AUX\(3) & (\inst5|Add0~5\ & VCC)) # (!\inst5|AUX\(3) & (!\inst5|Add0~5\))
-- \inst5|Add0~7\ = CARRY((!\inst5|AUX\(3) & !\inst5|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|AUX\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: FF_X71_Y28_N21
\inst5|AUX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(3));

-- Location: LCCOMB_X71_Y28_N22
\inst5|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|AUX\(4) & ((GND) # (!\inst5|Add0~7\))) # (!\inst5|AUX\(4) & (\inst5|Add0~7\ $ (GND)))
-- \inst5|Add0~9\ = CARRY((\inst5|AUX\(4)) # (!\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X71_Y28_N10
\inst5|AUX~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|AUX~0_combout\ = (\inst5|Add0~8_combout\ & (((\inst5|AUX\(16)) # (\inst5|AUX\(17))) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datab => \inst5|AUX\(16),
	datac => \inst5|Add0~8_combout\,
	datad => \inst5|AUX\(17),
	combout => \inst5|AUX~0_combout\);

-- Location: FF_X71_Y28_N11
\inst5|AUX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|AUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(4));

-- Location: LCCOMB_X71_Y28_N24
\inst5|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|AUX\(5) & (\inst5|Add0~9\ & VCC)) # (!\inst5|AUX\(5) & (!\inst5|Add0~9\))
-- \inst5|Add0~11\ = CARRY((!\inst5|AUX\(5) & !\inst5|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|AUX\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X71_Y28_N8
\inst5|AUX~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|AUX~1_combout\ = (\inst5|Add0~10_combout\ & ((\inst5|AUX\(17)) # ((\inst5|AUX\(16)) # (!\inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(17),
	datab => \inst5|Add0~10_combout\,
	datac => \inst5|AUX\(16),
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|AUX~1_combout\);

-- Location: FF_X71_Y28_N9
\inst5|AUX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|AUX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(5));

-- Location: LCCOMB_X71_Y28_N26
\inst5|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|AUX\(6) & ((GND) # (!\inst5|Add0~11\))) # (!\inst5|AUX\(6) & (\inst5|Add0~11\ $ (GND)))
-- \inst5|Add0~13\ = CARRY((\inst5|AUX\(6)) # (!\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|AUX\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X71_Y28_N2
\inst5|AUX~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|AUX~2_combout\ = (\inst5|Add0~12_combout\ & (((\inst5|AUX\(16)) # (\inst5|AUX\(17))) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datab => \inst5|AUX\(16),
	datac => \inst5|Add0~12_combout\,
	datad => \inst5|AUX\(17),
	combout => \inst5|AUX~2_combout\);

-- Location: FF_X71_Y28_N3
\inst5|AUX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|AUX~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(6));

-- Location: LCCOMB_X71_Y28_N28
\inst5|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|AUX\(7) & (\inst5|Add0~13\ & VCC)) # (!\inst5|AUX\(7) & (!\inst5|Add0~13\))
-- \inst5|Add0~15\ = CARRY((!\inst5|AUX\(7) & !\inst5|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|AUX\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: FF_X71_Y28_N29
\inst5|AUX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(7));

-- Location: LCCOMB_X71_Y28_N4
\inst5|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (!\inst5|AUX\(4) & (!\inst5|AUX\(5) & (!\inst5|AUX\(6) & !\inst5|AUX\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(4),
	datab => \inst5|AUX\(5),
	datac => \inst5|AUX\(6),
	datad => \inst5|AUX\(7),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X71_Y28_N0
\inst5|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (!\inst5|AUX\(2) & (!\inst5|AUX\(1) & (!\inst5|AUX\(0) & !\inst5|AUX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(2),
	datab => \inst5|AUX\(1),
	datac => \inst5|AUX\(0),
	datad => \inst5|AUX\(3),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X71_Y28_N30
\inst5|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|AUX\(8) & ((GND) # (!\inst5|Add0~15\))) # (!\inst5|AUX\(8) & (\inst5|Add0~15\ $ (GND)))
-- \inst5|Add0~17\ = CARRY((\inst5|AUX\(8)) # (!\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: LCCOMB_X71_Y28_N6
\inst5|AUX~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|AUX~3_combout\ = (\inst5|Add0~16_combout\ & (((\inst5|AUX\(16)) # (\inst5|AUX\(17))) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datab => \inst5|AUX\(16),
	datac => \inst5|Add0~16_combout\,
	datad => \inst5|AUX\(17),
	combout => \inst5|AUX~3_combout\);

-- Location: FF_X71_Y28_N7
\inst5|AUX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|AUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(8));

-- Location: LCCOMB_X71_Y27_N0
\inst5|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|AUX\(9) & (\inst5|Add0~17\ & VCC)) # (!\inst5|AUX\(9) & (!\inst5|Add0~17\))
-- \inst5|Add0~19\ = CARRY((!\inst5|AUX\(9) & !\inst5|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: LCCOMB_X70_Y28_N30
\inst5|AUX~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|AUX~4_combout\ = (\inst5|Add0~18_combout\ & (((\inst5|AUX\(16)) # (\inst5|AUX\(17))) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datab => \inst5|AUX\(16),
	datac => \inst5|AUX\(17),
	datad => \inst5|Add0~18_combout\,
	combout => \inst5|AUX~4_combout\);

-- Location: FF_X70_Y28_N31
\inst5|AUX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|AUX~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(9));

-- Location: LCCOMB_X71_Y27_N2
\inst5|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|AUX\(10) & ((GND) # (!\inst5|Add0~19\))) # (!\inst5|AUX\(10) & (\inst5|Add0~19\ $ (GND)))
-- \inst5|Add0~21\ = CARRY((\inst5|AUX\(10)) # (!\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: LCCOMB_X70_Y28_N28
\inst5|AUX~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|AUX~5_combout\ = (\inst5|Add0~20_combout\ & (((\inst5|AUX\(16)) # (\inst5|AUX\(17))) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datab => \inst5|AUX\(16),
	datac => \inst5|AUX\(17),
	datad => \inst5|Add0~20_combout\,
	combout => \inst5|AUX~5_combout\);

-- Location: FF_X70_Y28_N29
\inst5|AUX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|AUX~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(10));

-- Location: LCCOMB_X70_Y28_N26
\inst5|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|AUX\(9) & (!\inst5|AUX\(11) & (!\inst5|AUX\(10) & !\inst5|AUX\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(9),
	datab => \inst5|AUX\(11),
	datac => \inst5|AUX\(10),
	datad => \inst5|AUX\(8),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X70_Y28_N18
\inst5|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|AUX\(13) & (!\inst5|AUX\(14) & (!\inst5|AUX\(15) & !\inst5|AUX\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(13),
	datab => \inst5|AUX\(14),
	datac => \inst5|AUX\(15),
	datad => \inst5|AUX\(12),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X70_Y28_N12
\inst5|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~1_combout\ & (\inst5|Equal0~0_combout\ & (\inst5|Equal0~2_combout\ & \inst5|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~1_combout\,
	datab => \inst5|Equal0~0_combout\,
	datac => \inst5|Equal0~2_combout\,
	datad => \inst5|Equal0~3_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X71_Y27_N4
\inst5|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|AUX\(11) & (\inst5|Add0~21\ & VCC)) # (!\inst5|AUX\(11) & (!\inst5|Add0~21\))
-- \inst5|Add0~23\ = CARRY((!\inst5|AUX\(11) & !\inst5|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|AUX\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: LCCOMB_X70_Y28_N20
\inst5|AUX~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|AUX~6_combout\ = (\inst5|Add0~22_combout\ & (((\inst5|AUX\(16)) # (\inst5|AUX\(17))) # (!\inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~4_combout\,
	datab => \inst5|AUX\(16),
	datac => \inst5|AUX\(17),
	datad => \inst5|Add0~22_combout\,
	combout => \inst5|AUX~6_combout\);

-- Location: FF_X70_Y28_N21
\inst5|AUX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|AUX~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(11));

-- Location: LCCOMB_X71_Y27_N6
\inst5|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|AUX\(12) & ((GND) # (!\inst5|Add0~23\))) # (!\inst5|AUX\(12) & (\inst5|Add0~23\ $ (GND)))
-- \inst5|Add0~25\ = CARRY((\inst5|AUX\(12)) # (!\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: FF_X71_Y27_N7
\inst5|AUX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(12));

-- Location: LCCOMB_X71_Y27_N8
\inst5|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|AUX\(13) & (\inst5|Add0~25\ & VCC)) # (!\inst5|AUX\(13) & (!\inst5|Add0~25\))
-- \inst5|Add0~27\ = CARRY((!\inst5|AUX\(13) & !\inst5|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: LCCOMB_X70_Y28_N16
\inst5|AUX~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|AUX~7_combout\ = (\inst5|Add0~26_combout\ & ((\inst5|AUX\(17)) # ((\inst5|AUX\(16)) # (!\inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(17),
	datab => \inst5|AUX\(16),
	datac => \inst5|Add0~26_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|AUX~7_combout\);

-- Location: FF_X70_Y28_N17
\inst5|AUX[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|AUX~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(13));

-- Location: LCCOMB_X71_Y27_N10
\inst5|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|AUX\(14) & ((GND) # (!\inst5|Add0~27\))) # (!\inst5|AUX\(14) & (\inst5|Add0~27\ $ (GND)))
-- \inst5|Add0~29\ = CARRY((\inst5|AUX\(14)) # (!\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: FF_X71_Y27_N11
\inst5|AUX[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(14));

-- Location: LCCOMB_X71_Y27_N12
\inst5|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = (\inst5|AUX\(15) & (\inst5|Add0~29\ & VCC)) # (!\inst5|AUX\(15) & (!\inst5|Add0~29\))
-- \inst5|Add0~31\ = CARRY((!\inst5|AUX\(15) & !\inst5|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(15),
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: FF_X71_Y27_N13
\inst5|AUX[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(15));

-- Location: LCCOMB_X71_Y27_N14
\inst5|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = (\inst5|AUX\(16) & ((GND) # (!\inst5|Add0~31\))) # (!\inst5|AUX\(16) & (\inst5|Add0~31\ $ (GND)))
-- \inst5|Add0~33\ = CARRY((\inst5|AUX\(16)) # (!\inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|AUX\(16),
	datad => VCC,
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\,
	cout => \inst5|Add0~33\);

-- Location: FF_X71_Y27_N15
\inst5|AUX[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(16));

-- Location: LCCOMB_X71_Y27_N16
\inst5|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|Add0~34_combout\ = \inst5|Add0~33\ $ (!\inst5|AUX\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|AUX\(17),
	cin => \inst5|Add0~33\,
	combout => \inst5|Add0~34_combout\);

-- Location: FF_X71_Y27_N17
\inst5|AUX[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|AUX\(17));

-- Location: LCCOMB_X70_Y28_N22
\inst5|CLK~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|CLK~0_combout\ = \inst5|CLK~q\ $ (((!\inst5|AUX\(17) & (!\inst5|AUX\(16) & \inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|AUX\(17),
	datab => \inst5|AUX\(16),
	datac => \inst5|CLK~q\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|CLK~0_combout\);

-- Location: LCCOMB_X70_Y28_N24
\inst5|CLK~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|CLK~feeder_combout\ = \inst5|CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|CLK~0_combout\,
	combout => \inst5|CLK~feeder_combout\);

-- Location: FF_X70_Y28_N25
\inst5|CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|CLK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|CLK~q\);

-- Location: CLKCTRL_G6
\inst5|CLK~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|CLK~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\INI~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INI,
	o => \INI~input_o\);

-- Location: LCCOMB_X69_Y49_N28
\inst|U~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|U~2_combout\ = (!\inst|U\(0) & !\INI~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|U\(0),
	datad => \INI~input_o\,
	combout => \inst|U~2_combout\);

-- Location: FF_X69_Y49_N29
\inst|U[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|U~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|U\(0));

-- Location: LCCOMB_X69_Y49_N20
\inst|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|U\(0) & \inst|U\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|U\(0),
	datad => \inst|U\(1),
	combout => \inst|Add3~0_combout\);

-- Location: LCCOMB_X69_Y49_N22
\inst|U~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|U~5_combout\ = (\inst|U[2]~3_combout\ & (\inst|U\(3) $ (((\inst|U\(2) & \inst|Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U\(2),
	datab => \inst|Add3~0_combout\,
	datac => \inst|U\(3),
	datad => \inst|U[2]~3_combout\,
	combout => \inst|U~5_combout\);

-- Location: FF_X69_Y49_N23
\inst|U[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|U~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|U\(3));

-- Location: LCCOMB_X69_Y49_N0
\inst|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (\inst|U\(1)) # ((\inst|U\(2)) # ((!\inst|U\(0)) # (!\inst|U\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U\(1),
	datab => \inst|U\(2),
	datac => \inst|U\(3),
	datad => \inst|U\(0),
	combout => \inst|Equal3~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\F~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F,
	o => \F~input_o\);

-- Location: LCCOMB_X69_Y49_N12
\inst|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|D\(2) $ (((\inst|D\(1) & \inst|D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|D\(1),
	datac => \inst|D\(2),
	datad => \inst|D\(0),
	combout => \inst|Add2~0_combout\);

-- Location: LCCOMB_X69_Y49_N26
\inst|D[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D[3]~1_combout\ = (!\INI~input_o\ & !\inst|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INI~input_o\,
	datad => \inst|Equal3~0_combout\,
	combout => \inst|D[3]~1_combout\);

-- Location: LCCOMB_X70_Y49_N24
\inst|D[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D[3]~2_combout\ = (\inst|Equal4~0_combout\ & (\inst|D[3]~1_combout\ & ((\inst|D\(3)) # (!\inst|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(3),
	datab => \inst|Equal4~0_combout\,
	datac => \inst|D[3]~1_combout\,
	datad => \inst|process_0~3_combout\,
	combout => \inst|D[3]~2_combout\);

-- Location: LCCOMB_X69_Y49_N6
\inst|D[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D[2]~4_combout\ = (\inst|U[2]~3_combout\ & ((\inst|D\(2)) # ((\inst|Add2~0_combout\ & \inst|D[3]~2_combout\)))) # (!\inst|U[2]~3_combout\ & (\inst|Add2~0_combout\ & ((\inst|D[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U[2]~3_combout\,
	datab => \inst|Add2~0_combout\,
	datac => \inst|D\(2),
	datad => \inst|D[3]~2_combout\,
	combout => \inst|D[2]~4_combout\);

-- Location: FF_X69_Y49_N7
\inst|D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|D[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|D\(2));

-- Location: LCCOMB_X70_Y49_N14
\inst|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = ((\inst|D\(1)) # ((\inst|D\(2)) # (!\inst|D\(0)))) # (!\inst|D\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(3),
	datab => \inst|D\(1),
	datac => \inst|D\(2),
	datad => \inst|D\(0),
	combout => \inst|Equal4~0_combout\);

-- Location: LCCOMB_X70_Y49_N6
\inst|C~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|C~4_combout\ = (!\inst|Equal3~0_combout\ & !\inst|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal3~0_combout\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|C~4_combout\);

-- Location: LCCOMB_X71_Y49_N30
\inst|C[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|C[0]~5_combout\ = (!\INI~input_o\ & (!\inst|C~4_combout\ & ((\inst|D\(3)) # (!\inst|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INI~input_o\,
	datab => \inst|D\(3),
	datac => \inst|C~4_combout\,
	datad => \inst|process_0~3_combout\,
	combout => \inst|C[0]~5_combout\);

-- Location: LCCOMB_X70_Y49_N26
\inst|C[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|C[0]~9_combout\ = (!\inst|RST~0_combout\ & (\inst|C\(0) $ (((!\inst|Equal3~0_combout\ & !\inst|Equal4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|Equal4~0_combout\,
	datac => \inst|C\(0),
	datad => \inst|RST~0_combout\,
	combout => \inst|C[0]~9_combout\);

-- Location: FF_X70_Y49_N27
\inst|C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|C[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|C\(0));

-- Location: LCCOMB_X71_Y49_N6
\inst|C[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|C[3]~10_combout\ = (!\inst|Equal4~0_combout\ & (!\inst|M~0_combout\ & (!\inst|Equal3~0_combout\ & !\inst|RST~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~0_combout\,
	datab => \inst|M~0_combout\,
	datac => \inst|Equal3~0_combout\,
	datad => \inst|RST~0_combout\,
	combout => \inst|C[3]~10_combout\);

-- Location: LCCOMB_X71_Y49_N4
\inst|C[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|C[1]~6_combout\ = (\inst|C\(1) & ((\inst|C[0]~5_combout\) # ((!\inst|C\(0) & \inst|C[3]~10_combout\)))) # (!\inst|C\(1) & (((\inst|C\(0) & \inst|C[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C[0]~5_combout\,
	datab => \inst|C\(0),
	datac => \inst|C\(1),
	datad => \inst|C[3]~10_combout\,
	combout => \inst|C[1]~6_combout\);

-- Location: FF_X71_Y49_N5
\inst|C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|C[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|C\(1));

-- Location: LCCOMB_X71_Y49_N16
\inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|C\(2) $ (((\inst|C\(0) & \inst|C\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|C\(2),
	datac => \inst|C\(0),
	datad => \inst|C\(1),
	combout => \inst|Add1~0_combout\);

-- Location: LCCOMB_X71_Y49_N2
\inst|C[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|C[2]~7_combout\ = (\inst|C[0]~5_combout\ & ((\inst|C\(2)) # ((\inst|Add1~0_combout\ & \inst|C[3]~10_combout\)))) # (!\inst|C[0]~5_combout\ & (\inst|Add1~0_combout\ & ((\inst|C[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C[0]~5_combout\,
	datab => \inst|Add1~0_combout\,
	datac => \inst|C\(2),
	datad => \inst|C[3]~10_combout\,
	combout => \inst|C[2]~7_combout\);

-- Location: FF_X71_Y49_N3
\inst|C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|C[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|C\(2));

-- Location: LCCOMB_X72_Y49_N22
\inst|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~1_combout\ = \inst|C\(3) $ (((\inst|C\(2) & (\inst|C\(1) & \inst|C\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C\(2),
	datab => \inst|C\(1),
	datac => \inst|C\(3),
	datad => \inst|C\(0),
	combout => \inst|Add1~1_combout\);

-- Location: LCCOMB_X71_Y49_N0
\inst|C[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|C[3]~8_combout\ = (\inst|C[0]~5_combout\ & ((\inst|C\(3)) # ((\inst|Add1~1_combout\ & \inst|C[3]~10_combout\)))) # (!\inst|C[0]~5_combout\ & (\inst|Add1~1_combout\ & ((\inst|C[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C[0]~5_combout\,
	datab => \inst|Add1~1_combout\,
	datac => \inst|C\(3),
	datad => \inst|C[3]~10_combout\,
	combout => \inst|C[3]~8_combout\);

-- Location: FF_X71_Y49_N1
\inst|C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|C[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|C\(3));

-- Location: LCCOMB_X70_Y49_N20
\inst|M~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|M~0_combout\ = (!\inst|C\(1) & (\inst|C\(3) & (\inst|C\(0) & !\inst|C\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C\(1),
	datab => \inst|C\(3),
	datac => \inst|C\(0),
	datad => \inst|C\(2),
	combout => \inst|M~0_combout\);

-- Location: LCCOMB_X70_Y49_N2
\inst|M~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|M~1_combout\ = (\inst|Equal3~0_combout\) # ((\inst|Equal4~0_combout\) # (!\inst|M~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datac => \inst|Equal4~0_combout\,
	datad => \inst|M~0_combout\,
	combout => \inst|M~1_combout\);

-- Location: LCCOMB_X70_Y49_N4
\inst|M[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|M[0]~2_combout\ = (!\inst|RST~0_combout\ & (\inst|M~1_combout\ $ (!\inst|M\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|M~1_combout\,
	datac => \inst|M\(0),
	datad => \inst|RST~0_combout\,
	combout => \inst|M[0]~2_combout\);

-- Location: FF_X70_Y49_N5
\inst|M[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|M[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|M\(0));

-- Location: LCCOMB_X71_Y49_N18
\inst|M[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|M[0]~3_combout\ = (\inst|M~1_combout\ & (!\INI~input_o\ & ((\inst|D\(3)) # (!\inst|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|M~1_combout\,
	datab => \INI~input_o\,
	datac => \inst|D\(3),
	datad => \inst|process_0~3_combout\,
	combout => \inst|M[0]~3_combout\);

-- Location: LCCOMB_X71_Y49_N24
\inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|M\(2) $ (((\inst|M\(0) & \inst|M\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|M\(2),
	datac => \inst|M\(0),
	datad => \inst|M\(1),
	combout => \inst|Add0~0_combout\);

-- Location: LCCOMB_X71_Y49_N8
\inst|M[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|M[2]~7_combout\ = (\inst|Add0~0_combout\ & ((\inst|M[3]~5_combout\) # ((\inst|M[0]~3_combout\ & \inst|M\(2))))) # (!\inst|Add0~0_combout\ & (\inst|M[0]~3_combout\ & (\inst|M\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst|M[0]~3_combout\,
	datac => \inst|M\(2),
	datad => \inst|M[3]~5_combout\,
	combout => \inst|M[2]~7_combout\);

-- Location: FF_X71_Y49_N9
\inst|M[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|M[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|M\(2));

-- Location: LCCOMB_X72_Y49_N8
\inst|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = \inst|M\(3) $ (((\inst|M\(2) & (\inst|M\(1) & \inst|M\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|M\(2),
	datab => \inst|M\(1),
	datac => \inst|M\(0),
	datad => \inst|M\(3),
	combout => \inst|Add0~1_combout\);

-- Location: LCCOMB_X71_Y49_N26
\inst|M[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|M[3]~8_combout\ = (\inst|Add0~1_combout\ & ((\inst|M[3]~5_combout\) # ((\inst|M[0]~3_combout\ & \inst|M\(3))))) # (!\inst|Add0~1_combout\ & (\inst|M[0]~3_combout\ & (\inst|M\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~1_combout\,
	datab => \inst|M[0]~3_combout\,
	datac => \inst|M\(3),
	datad => \inst|M[3]~5_combout\,
	combout => \inst|M[3]~8_combout\);

-- Location: FF_X71_Y49_N27
\inst|M[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|M[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|M\(3));

-- Location: LCCOMB_X71_Y49_N28
\inst|M[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|M[0]~4_combout\ = (\inst|M\(1)) # ((\inst|M\(2)) # ((!\inst|M\(3)) # (!\inst|M\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|M\(1),
	datab => \inst|M\(2),
	datac => \inst|M\(0),
	datad => \inst|M\(3),
	combout => \inst|M[0]~4_combout\);

-- Location: LCCOMB_X71_Y49_N10
\inst|M[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|M[3]~5_combout\ = (!\inst|M~1_combout\ & (\inst|M[0]~4_combout\ & !\inst|RST~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|M~1_combout\,
	datab => \inst|M[0]~4_combout\,
	datad => \inst|RST~0_combout\,
	combout => \inst|M[3]~5_combout\);

-- Location: LCCOMB_X71_Y49_N14
\inst|M[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|M[1]~6_combout\ = (\inst|M\(1) & ((\inst|M[0]~3_combout\) # ((!\inst|M\(0) & \inst|M[3]~5_combout\)))) # (!\inst|M\(1) & (\inst|M\(0) & ((\inst|M[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|M\(0),
	datab => \inst|M[0]~3_combout\,
	datac => \inst|M\(1),
	datad => \inst|M[3]~5_combout\,
	combout => \inst|M[1]~6_combout\);

-- Location: FF_X71_Y49_N15
\inst|M[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|M[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|M\(1));

-- Location: LCCOMB_X70_Y49_N10
\inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\F~input_o\ & (\inst|M\(0) & (!\inst|M\(1) & !\inst|C\(1)))) # (!\F~input_o\ & (!\inst|M\(0) & (\inst|M\(1) & \inst|C\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F~input_o\,
	datab => \inst|M\(0),
	datac => \inst|M\(1),
	datad => \inst|C\(1),
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X70_Y49_N28
\inst|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst|C\(0) & (\inst|D\(0) & (\inst|D\(2) & !\inst|D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C\(0),
	datab => \inst|D\(0),
	datac => \inst|D\(2),
	datad => \inst|D\(1),
	combout => \inst|process_0~2_combout\);

-- Location: LCCOMB_X71_Y49_N22
\inst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (!\inst|C\(2) & (!\inst|M\(2) & (!\inst|M\(3) & !\inst|C\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C\(2),
	datab => \inst|M\(2),
	datac => \inst|M\(3),
	datad => \inst|C\(3),
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X70_Y49_N18
\inst|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = (\inst|process_0~0_combout\ & (\inst|process_0~2_combout\ & (!\inst|Equal3~0_combout\ & \inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~0_combout\,
	datab => \inst|process_0~2_combout\,
	datac => \inst|Equal3~0_combout\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|process_0~3_combout\);

-- Location: LCCOMB_X70_Y49_N12
\inst|RST~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|RST~0_combout\ = (\INI~input_o\) # ((!\inst|D\(3) & \inst|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INI~input_o\,
	datac => \inst|D\(3),
	datad => \inst|process_0~3_combout\,
	combout => \inst|RST~0_combout\);

-- Location: LCCOMB_X70_Y49_N8
\inst|D[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D[0]~0_combout\ = (!\inst|RST~0_combout\ & (\inst|Equal3~0_combout\ $ (!\inst|D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datac => \inst|D\(0),
	datad => \inst|RST~0_combout\,
	combout => \inst|D[0]~0_combout\);

-- Location: FF_X70_Y49_N9
\inst|D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|D\(0));

-- Location: LCCOMB_X69_Y49_N24
\inst|D[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D[1]~3_combout\ = (\inst|D\(1) & ((\inst|U[2]~3_combout\) # ((!\inst|D\(0) & \inst|D[3]~2_combout\)))) # (!\inst|D\(1) & (\inst|D\(0) & (\inst|D[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(0),
	datab => \inst|D[3]~2_combout\,
	datac => \inst|D\(1),
	datad => \inst|U[2]~3_combout\,
	combout => \inst|D[1]~3_combout\);

-- Location: FF_X69_Y49_N25
\inst|D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|D[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|D\(1));

-- Location: LCCOMB_X71_Y49_N20
\inst|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add2~1_combout\ = \inst|D\(3) $ (((\inst|D\(1) & (\inst|D\(0) & \inst|D\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(1),
	datab => \inst|D\(0),
	datac => \inst|D\(2),
	datad => \inst|D\(3),
	combout => \inst|Add2~1_combout\);

-- Location: LCCOMB_X70_Y49_N30
\inst|D[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D[3]~5_combout\ = (\inst|Add2~1_combout\ & ((\inst|D[3]~2_combout\) # ((\inst|D\(3) & \inst|U[2]~3_combout\)))) # (!\inst|Add2~1_combout\ & (((\inst|D\(3) & \inst|U[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~1_combout\,
	datab => \inst|D[3]~2_combout\,
	datac => \inst|D\(3),
	datad => \inst|U[2]~3_combout\,
	combout => \inst|D[3]~5_combout\);

-- Location: FF_X70_Y49_N31
\inst|D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|D[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|D\(3));

-- Location: LCCOMB_X69_Y49_N10
\inst|U[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|U[2]~3_combout\ = (!\INI~input_o\ & (\inst|Equal3~0_combout\ & ((\inst|D\(3)) # (!\inst|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INI~input_o\,
	datab => \inst|Equal3~0_combout\,
	datac => \inst|D\(3),
	datad => \inst|process_0~3_combout\,
	combout => \inst|U[2]~3_combout\);

-- Location: LCCOMB_X69_Y49_N30
\inst|U~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|U~4_combout\ = (\inst|U[2]~3_combout\ & (\inst|U\(0) $ (\inst|U\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U\(0),
	datac => \inst|U\(1),
	datad => \inst|U[2]~3_combout\,
	combout => \inst|U~4_combout\);

-- Location: FF_X69_Y49_N31
\inst|U[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|U~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|U\(1));

-- Location: LCCOMB_X69_Y49_N4
\inst|U~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|U~6_combout\ = (\inst|U[2]~3_combout\ & (\inst|U\(2) $ (((\inst|U\(0) & \inst|U\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U\(0),
	datab => \inst|U\(1),
	datac => \inst|U\(2),
	datad => \inst|U[2]~3_combout\,
	combout => \inst|U~6_combout\);

-- Location: FF_X69_Y49_N5
\inst|U[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|ALT_INV_CLK~clkctrl_outclk\,
	d => \inst|U~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|U\(2));

-- Location: LCCOMB_X69_Y53_N28
\inst6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (!\inst|U\(1) & (!\inst|U\(3) & (\inst|U\(2) $ (\inst|U\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U\(2),
	datab => \inst|U\(0),
	datac => \inst|U\(1),
	datad => \inst|U\(3),
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y53_N10
\inst6|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (\inst|U\(2) & (!\inst|U\(3) & (\inst|U\(0) $ (\inst|U\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U\(2),
	datab => \inst|U\(0),
	datac => \inst|U\(1),
	datad => \inst|U\(3),
	combout => \inst6|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y53_N8
\inst6|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (!\inst|U\(2) & (!\inst|U\(0) & (\inst|U\(1) & !\inst|U\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U\(2),
	datab => \inst|U\(0),
	datac => \inst|U\(1),
	datad => \inst|U\(3),
	combout => \inst6|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y53_N26
\inst6|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (!\inst|U\(3) & ((\inst|U\(2) & (\inst|U\(0) $ (!\inst|U\(1)))) # (!\inst|U\(2) & (\inst|U\(0) & !\inst|U\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U\(2),
	datab => \inst|U\(0),
	datac => \inst|U\(1),
	datad => \inst|U\(3),
	combout => \inst6|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y53_N12
\inst6|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = (\inst|U\(0)) # ((\inst|U\(1) & ((\inst|U\(3)))) # (!\inst|U\(1) & (\inst|U\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U\(2),
	datab => \inst|U\(0),
	datac => \inst|U\(1),
	datad => \inst|U\(3),
	combout => \inst6|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y53_N14
\inst6|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = (!\inst|U\(3) & ((\inst|U\(2) & (\inst|U\(0) & \inst|U\(1))) # (!\inst|U\(2) & ((\inst|U\(0)) # (\inst|U\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U\(2),
	datab => \inst|U\(0),
	datac => \inst|U\(1),
	datad => \inst|U\(3),
	combout => \inst6|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y53_N4
\inst6|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = (!\inst|U\(3) & (!\inst|U\(1) & !\inst|U\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|U\(3),
	datac => \inst|U\(1),
	datad => \inst|U\(2),
	combout => \inst6|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y50_N12
\inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (!\inst|D\(1) & (!\inst|D\(3) & (\inst|D\(0) $ (\inst|D\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(0),
	datab => \inst|D\(2),
	datac => \inst|D\(1),
	datad => \inst|D\(3),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y49_N0
\inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst|D\(2) & (!\inst|D\(3) & (\inst|D\(0) $ (\inst|D\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(0),
	datab => \inst|D\(2),
	datac => \inst|D\(3),
	datad => \inst|D\(1),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y50_N20
\inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (!\inst|D\(2) & (\inst|D\(1) & (!\inst|D\(0) & !\inst|D\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(2),
	datab => \inst|D\(1),
	datac => \inst|D\(0),
	datad => \inst|D\(3),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y50_N22
\inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (!\inst|D\(3) & ((\inst|D\(0) & (\inst|D\(2) $ (!\inst|D\(1)))) # (!\inst|D\(0) & (\inst|D\(2) & !\inst|D\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(0),
	datab => \inst|D\(2),
	datac => \inst|D\(1),
	datad => \inst|D\(3),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y50_N28
\inst4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst|D\(0)) # ((\inst|D\(1) & ((\inst|D\(3)))) # (!\inst|D\(1) & (\inst|D\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(0),
	datab => \inst|D\(2),
	datac => \inst|D\(1),
	datad => \inst|D\(3),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y50_N2
\inst4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (!\inst|D\(3) & ((\inst|D\(0) & ((\inst|D\(1)) # (!\inst|D\(2)))) # (!\inst|D\(0) & (!\inst|D\(2) & \inst|D\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D\(0),
	datab => \inst|D\(2),
	datac => \inst|D\(1),
	datad => \inst|D\(3),
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y50_N0
\inst4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (!\inst|D\(2) & (!\inst|D\(1) & !\inst|D\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|D\(2),
	datac => \inst|D\(1),
	datad => \inst|D\(3),
	combout => \inst4|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y49_N16
\inst3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (!\inst|C\(1) & (!\inst|C\(3) & (\inst|C\(2) $ (\inst|C\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C\(2),
	datab => \inst|C\(1),
	datac => \inst|C\(0),
	datad => \inst|C\(3),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y49_N16
\inst3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst|C\(2) & (!\inst|C\(3) & (\inst|C\(0) $ (\inst|C\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C\(0),
	datab => \inst|C\(2),
	datac => \inst|C\(3),
	datad => \inst|C\(1),
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y49_N18
\inst3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (!\inst|C\(0) & (!\inst|C\(2) & (!\inst|C\(3) & \inst|C\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C\(0),
	datab => \inst|C\(2),
	datac => \inst|C\(3),
	datad => \inst|C\(1),
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y49_N8
\inst3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (!\inst|C\(3) & ((\inst|C\(0) & (\inst|C\(2) $ (!\inst|C\(1)))) # (!\inst|C\(0) & (\inst|C\(2) & !\inst|C\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C\(0),
	datab => \inst|C\(2),
	datac => \inst|C\(3),
	datad => \inst|C\(1),
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X72_Y49_N24
\inst3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst|C\(0)) # ((\inst|C\(1) & ((\inst|C\(3)))) # (!\inst|C\(1) & (\inst|C\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C\(2),
	datab => \inst|C\(1),
	datac => \inst|C\(3),
	datad => \inst|C\(0),
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y49_N14
\inst3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (!\inst|C\(3) & ((\inst|C\(0) & ((\inst|C\(1)) # (!\inst|C\(2)))) # (!\inst|C\(0) & (!\inst|C\(2) & \inst|C\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C\(0),
	datab => \inst|C\(2),
	datac => \inst|C\(3),
	datad => \inst|C\(1),
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y49_N22
\inst3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (!\inst|C\(2) & (!\inst|C\(3) & !\inst|C\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C\(2),
	datab => \inst|C\(3),
	datad => \inst|C\(1),
	combout => \inst3|Mux6~0_combout\);

-- Location: LCCOMB_X72_Y49_N2
\inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (!\inst|M\(1) & (!\inst|M\(3) & (\inst|M\(2) $ (\inst|M\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|M\(2),
	datab => \inst|M\(1),
	datac => \inst|M\(0),
	datad => \inst|M\(3),
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X72_Y49_N20
\inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst|M\(2) & (!\inst|M\(3) & (\inst|M\(1) $ (\inst|M\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|M\(2),
	datab => \inst|M\(1),
	datac => \inst|M\(0),
	datad => \inst|M\(3),
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X72_Y49_N30
\inst2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (!\inst|M\(2) & (\inst|M\(1) & (!\inst|M\(0) & !\inst|M\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|M\(2),
	datab => \inst|M\(1),
	datac => \inst|M\(0),
	datad => \inst|M\(3),
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y49_N12
\inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (!\inst|M\(3) & ((\inst|M\(2) & (\inst|M\(0) $ (!\inst|M\(1)))) # (!\inst|M\(2) & (\inst|M\(0) & !\inst|M\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|M\(3),
	datab => \inst|M\(2),
	datac => \inst|M\(0),
	datad => \inst|M\(1),
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X72_Y49_N28
\inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst|M\(0)) # ((\inst|M\(1) & ((\inst|M\(3)))) # (!\inst|M\(1) & (\inst|M\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|M\(2),
	datab => \inst|M\(1),
	datac => \inst|M\(0),
	datad => \inst|M\(3),
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X72_Y49_N10
\inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (!\inst|M\(3) & ((\inst|M\(2) & (\inst|M\(1) & \inst|M\(0))) # (!\inst|M\(2) & ((\inst|M\(1)) # (\inst|M\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|M\(2),
	datab => \inst|M\(1),
	datac => \inst|M\(0),
	datad => \inst|M\(3),
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X72_Y49_N12
\inst2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (!\inst|M\(1) & (!\inst|M\(3) & !\inst|M\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|M\(1),
	datac => \inst|M\(3),
	datad => \inst|M\(2),
	combout => \inst2|Mux6~0_combout\);

-- Location: IOIBUF_X58_Y54_N15
\HEX0[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX0(7),
	o => \HEX0[7]~input_o\);

-- Location: IOIBUF_X74_Y54_N8
\HEX0[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX0(6),
	o => \HEX0[6]~input_o\);

-- Location: IOIBUF_X60_Y54_N1
\HEX0[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX0(5),
	o => \HEX0[5]~input_o\);

-- Location: IOIBUF_X62_Y54_N29
\HEX0[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX0(4),
	o => \HEX0[4]~input_o\);

-- Location: IOIBUF_X74_Y54_N1
\HEX0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX0(3),
	o => \HEX0[3]~input_o\);

-- Location: IOIBUF_X74_Y54_N15
\HEX0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX0(2),
	o => \HEX0[2]~input_o\);

-- Location: IOIBUF_X74_Y54_N22
\HEX0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX0(1),
	o => \HEX0[1]~input_o\);

-- Location: IOIBUF_X66_Y54_N15
\HEX0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX0(0),
	o => \HEX0[0]~input_o\);

-- Location: IOIBUF_X69_Y54_N22
\HEX1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX1(7),
	o => \HEX1[7]~input_o\);

-- Location: IOIBUF_X78_Y49_N8
\HEX1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX1(6),
	o => \HEX1[6]~input_o\);

-- Location: IOIBUF_X78_Y49_N1
\HEX1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX1(5),
	o => \HEX1[5]~input_o\);

-- Location: IOIBUF_X60_Y54_N8
\HEX1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX1(4),
	o => \HEX1[4]~input_o\);

-- Location: IOIBUF_X64_Y54_N1
\HEX1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX1(3),
	o => \HEX1[3]~input_o\);

-- Location: IOIBUF_X66_Y54_N29
\HEX1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX1(2),
	o => \HEX1[2]~input_o\);

-- Location: IOIBUF_X69_Y54_N29
\HEX1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX1(1),
	o => \HEX1[1]~input_o\);

-- Location: IOIBUF_X60_Y54_N15
\HEX1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX1(0),
	o => \HEX1[0]~input_o\);

-- Location: IOIBUF_X78_Y44_N8
\HEX2[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX2(7),
	o => \HEX2[7]~input_o\);

-- Location: IOIBUF_X66_Y54_N1
\HEX2[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX2(6),
	o => \HEX2[6]~input_o\);

-- Location: IOIBUF_X69_Y54_N15
\HEX2[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX2(5),
	o => \HEX2[5]~input_o\);

-- Location: IOIBUF_X78_Y44_N1
\HEX2[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX2(4),
	o => \HEX2[4]~input_o\);

-- Location: IOIBUF_X78_Y43_N1
\HEX2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX2(3),
	o => \HEX2[3]~input_o\);

-- Location: IOIBUF_X78_Y35_N1
\HEX2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX2(2),
	o => \HEX2[2]~input_o\);

-- Location: IOIBUF_X78_Y43_N8
\HEX2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX2(1),
	o => \HEX2[1]~input_o\);

-- Location: IOIBUF_X66_Y54_N8
\HEX2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX2(0),
	o => \HEX2[0]~input_o\);

-- Location: IOIBUF_X78_Y35_N22
\HEX3[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX3(7),
	o => \HEX3[7]~input_o\);

-- Location: IOIBUF_X78_Y33_N8
\HEX3[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX3(6),
	o => \HEX3[6]~input_o\);

-- Location: IOIBUF_X78_Y33_N1
\HEX3[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX3(5),
	o => \HEX3[5]~input_o\);

-- Location: IOIBUF_X69_Y54_N8
\HEX3[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX3(4),
	o => \HEX3[4]~input_o\);

-- Location: IOIBUF_X78_Y41_N8
\HEX3[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX3(3),
	o => \HEX3[3]~input_o\);

-- Location: IOIBUF_X78_Y41_N1
\HEX3[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX3(2),
	o => \HEX3[2]~input_o\);

-- Location: IOIBUF_X78_Y43_N15
\HEX3[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX3(1),
	o => \HEX3[1]~input_o\);

-- Location: IOIBUF_X78_Y35_N8
\HEX3[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HEX3(0),
	o => \HEX3[0]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

HEX0(7) <= \HEX0[7]~output_o\;

HEX0(6) <= \HEX0[6]~output_o\;

HEX0(5) <= \HEX0[5]~output_o\;

HEX0(4) <= \HEX0[4]~output_o\;

HEX0(3) <= \HEX0[3]~output_o\;

HEX0(2) <= \HEX0[2]~output_o\;

HEX0(1) <= \HEX0[1]~output_o\;

HEX0(0) <= \HEX0[0]~output_o\;

HEX1(7) <= \HEX1[7]~output_o\;

HEX1(6) <= \HEX1[6]~output_o\;

HEX1(5) <= \HEX1[5]~output_o\;

HEX1(4) <= \HEX1[4]~output_o\;

HEX1(3) <= \HEX1[3]~output_o\;

HEX1(2) <= \HEX1[2]~output_o\;

HEX1(1) <= \HEX1[1]~output_o\;

HEX1(0) <= \HEX1[0]~output_o\;

HEX2(7) <= \HEX2[7]~output_o\;

HEX2(6) <= \HEX2[6]~output_o\;

HEX2(5) <= \HEX2[5]~output_o\;

HEX2(4) <= \HEX2[4]~output_o\;

HEX2(3) <= \HEX2[3]~output_o\;

HEX2(2) <= \HEX2[2]~output_o\;

HEX2(1) <= \HEX2[1]~output_o\;

HEX2(0) <= \HEX2[0]~output_o\;

HEX3(7) <= \HEX3[7]~output_o\;

HEX3(6) <= \HEX3[6]~output_o\;

HEX3(5) <= \HEX3[5]~output_o\;

HEX3(4) <= \HEX3[4]~output_o\;

HEX3(3) <= \HEX3[3]~output_o\;

HEX3(2) <= \HEX3[2]~output_o\;

HEX3(1) <= \HEX3[1]~output_o\;

HEX3(0) <= \HEX3[0]~output_o\;
END structure;


