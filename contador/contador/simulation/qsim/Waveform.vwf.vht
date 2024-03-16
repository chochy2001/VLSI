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
-- Generated on "02/13/2024 15:45:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PRACTICA1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PRACTICA1_vhd_vec_tst IS
END PRACTICA1_vhd_vec_tst;
ARCHITECTURE PRACTICA1_arch OF PRACTICA1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL F : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL INI : STD_LOGIC;
COMPONENT PRACTICA1
	PORT (
	CLK : IN STD_LOGIC;
	F : IN STD_LOGIC;
	HEX0 : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX1 : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX2 : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX3 : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	INI : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PRACTICA1
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	F => F,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	INI => INI
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- F
t_prcs_F: PROCESS
BEGIN
	F <= '0';
WAIT;
END PROCESS t_prcs_F;
-- HEX0[7]
t_prcs_HEX0_7: PROCESS
BEGIN
	HEX0(7) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX0_7;
-- HEX0[6]
t_prcs_HEX0_6: PROCESS
BEGIN
	HEX0(6) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX0_6;
-- HEX0[5]
t_prcs_HEX0_5: PROCESS
BEGIN
	HEX0(5) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX0_5;
-- HEX0[4]
t_prcs_HEX0_4: PROCESS
BEGIN
	HEX0(4) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX0_4;
-- HEX0[3]
t_prcs_HEX0_3: PROCESS
BEGIN
	HEX0(3) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX0_3;
-- HEX0[2]
t_prcs_HEX0_2: PROCESS
BEGIN
	HEX0(2) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX0_2;
-- HEX0[1]
t_prcs_HEX0_1: PROCESS
BEGIN
	HEX0(1) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX0_1;
-- HEX0[0]
t_prcs_HEX0_0: PROCESS
BEGIN
	HEX0(0) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX0_0;
-- HEX1[7]
t_prcs_HEX1_7: PROCESS
BEGIN
	HEX1(7) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX1_7;
-- HEX1[6]
t_prcs_HEX1_6: PROCESS
BEGIN
	HEX1(6) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX1_6;
-- HEX1[5]
t_prcs_HEX1_5: PROCESS
BEGIN
	HEX1(5) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX1_5;
-- HEX1[4]
t_prcs_HEX1_4: PROCESS
BEGIN
	HEX1(4) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX1_4;
-- HEX1[3]
t_prcs_HEX1_3: PROCESS
BEGIN
	HEX1(3) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX1_3;
-- HEX1[2]
t_prcs_HEX1_2: PROCESS
BEGIN
	HEX1(2) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX1_2;
-- HEX1[1]
t_prcs_HEX1_1: PROCESS
BEGIN
	HEX1(1) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX1_1;
-- HEX1[0]
t_prcs_HEX1_0: PROCESS
BEGIN
	HEX1(0) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX1_0;
-- HEX2[7]
t_prcs_HEX2_7: PROCESS
BEGIN
	HEX2(7) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX2_7;
-- HEX2[6]
t_prcs_HEX2_6: PROCESS
BEGIN
	HEX2(6) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX2_6;
-- HEX2[5]
t_prcs_HEX2_5: PROCESS
BEGIN
	HEX2(5) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX2_5;
-- HEX2[4]
t_prcs_HEX2_4: PROCESS
BEGIN
	HEX2(4) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX2_4;
-- HEX2[3]
t_prcs_HEX2_3: PROCESS
BEGIN
	HEX2(3) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX2_3;
-- HEX2[2]
t_prcs_HEX2_2: PROCESS
BEGIN
	HEX2(2) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX2_2;
-- HEX2[1]
t_prcs_HEX2_1: PROCESS
BEGIN
	HEX2(1) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX2_1;
-- HEX2[0]
t_prcs_HEX2_0: PROCESS
BEGIN
	HEX2(0) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX2_0;
-- HEX3[7]
t_prcs_HEX3_7: PROCESS
BEGIN
	HEX3(7) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX3_7;
-- HEX3[6]
t_prcs_HEX3_6: PROCESS
BEGIN
	HEX3(6) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX3_6;
-- HEX3[5]
t_prcs_HEX3_5: PROCESS
BEGIN
	HEX3(5) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX3_5;
-- HEX3[4]
t_prcs_HEX3_4: PROCESS
BEGIN
	HEX3(4) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX3_4;
-- HEX3[3]
t_prcs_HEX3_3: PROCESS
BEGIN
	HEX3(3) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX3_3;
-- HEX3[2]
t_prcs_HEX3_2: PROCESS
BEGIN
	HEX3(2) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX3_2;
-- HEX3[1]
t_prcs_HEX3_1: PROCESS
BEGIN
	HEX3(1) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX3_1;
-- HEX3[0]
t_prcs_HEX3_0: PROCESS
BEGIN
	HEX3(0) <= 'Z';
WAIT;
END PROCESS t_prcs_HEX3_0;

-- INI
t_prcs_INI: PROCESS
BEGIN
	INI <= '1';
WAIT;
END PROCESS t_prcs_INI;
END PRACTICA1_arch;
