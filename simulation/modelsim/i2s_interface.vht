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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/21/2020 23:20:32"
                                                            
-- Vhdl Test Bench template for design  :  i2s_interface
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY i2s_interface_vhd_tst IS
END i2s_interface_vhd_tst;
ARCHITECTURE i2s_interface_arch OF i2s_interface_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL data : STD_LOGIC;
SIGNAL lrcl : STD_LOGIC;
SIGNAL mems_bclk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT i2s_interface
	PORT (
	clk : IN STD_LOGIC;
	data : IN STD_LOGIC;
	lrcl : OUT STD_LOGIC;
	mems_bclk : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : i2s_interface
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	data => data,
	lrcl => lrcl,
	mems_bclk => mems_bclk,
	reset => reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END i2s_interface_arch;
