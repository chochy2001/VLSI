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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/21/2024 19:13:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RandomNumberGenerator
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RandomNumberGenerator_vhd_vec_tst IS
END RandomNumberGenerator_vhd_vec_tst;
ARCHITECTURE RandomNumberGenerator_arch OF RandomNumberGenerator_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL hundreds : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL tens : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL u : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT RandomNumberGenerator
	PORT (
	clk : IN STD_LOGIC;
	hundreds : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	tens : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	u : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RandomNumberGenerator
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	hundreds => hundreds,
	reset => reset,
	tens => tens,
	u => u
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 2500 ps;
	clk <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END RandomNumberGenerator_arch;
