-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "07/17/2022 19:35:20"

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

ENTITY 	output_interface IS
    PORT (
	clk : IN std_logic;
	rdreq : IN std_logic;
	wrreq : IN std_logic;
	input : IN std_logic_vector(31 DOWNTO 0);
	output : BUFFER std_logic_vector(31 DOWNTO 0);
	hfull_flag : BUFFER std_logic;
	empty_flag : BUFFER std_logic;
	full_flag : BUFFER std_logic
	);
END output_interface;

-- Design Ports Information
-- output[0]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[2]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[3]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[4]	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[5]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[6]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[7]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[8]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[9]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[10]	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[11]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[12]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[13]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[14]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[15]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[16]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[17]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[18]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[19]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[20]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[21]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[22]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[23]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[24]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[25]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[26]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[27]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[28]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[29]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[30]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[31]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hfull_flag	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- empty_flag	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- full_flag	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wrreq	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rdreq	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[1]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[3]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[4]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[5]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[6]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[7]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[8]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[9]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[10]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[11]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[12]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[13]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[14]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[15]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[16]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[17]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[18]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[19]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[20]	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[21]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[22]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[23]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[24]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[25]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[26]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[27]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[28]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[29]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[30]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[31]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF output_interface IS
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
SIGNAL ww_rdreq : std_logic;
SIGNAL ww_wrreq : std_logic;
SIGNAL ww_input : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_hfull_flag : std_logic;
SIGNAL ww_empty_flag : std_logic;
SIGNAL ww_full_flag : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTBDATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTBDATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTBDATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTADATAIN_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTBDATAIN_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTADATAOUT_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dffe_af~4_combout\ : std_logic;
SIGNAL \wrreq~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~combout\ : std_logic;
SIGNAL \rdreq~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dffe_af~1_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dffe_af~0_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dffe_af~5_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dffe_af~2_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dffe_af~3_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dffe_af~6_combout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dffe_af~regout\ : std_logic;
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \input~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rdreq <= rdreq;
ww_wrreq <= wrreq;
ww_input <= input;
output <= ww_output;
hfull_flag <= ww_hfull_flag;
empty_flag <= ww_empty_flag;
full_flag <= ww_full_flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTBDATAIN_bus\ <= (\input~combout\(8) & \input~combout\(7) & \input~combout\(6) & \input~combout\(5) & \input~combout\(4) & \input~combout\(3) & 
\input~combout\(2) & \input~combout\(1) & \input~combout\(0));

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTAADDR_bus\ <= (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(8) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(7) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(6) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(5) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(4) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTBADDR_bus\ <= (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(8) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(7) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(6) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(5) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(4) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(0) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(0);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(1) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(1);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(2) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(2);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(3) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(3);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(4) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(4);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(5) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(5);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(6) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(6);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(7) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(7);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(8) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(8);

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTBDATAIN_bus\ <= (\input~combout\(17) & \input~combout\(16) & \input~combout\(15) & \input~combout\(14) & \input~combout\(13) & \input~combout\(12) & 
\input~combout\(11) & \input~combout\(10) & \input~combout\(9));

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTAADDR_bus\ <= (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(8) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(7) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(6) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(5) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(4) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTBADDR_bus\ <= (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(8) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(7) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(6) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(5) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(4) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(9) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAOUT_bus\(0);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(10) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAOUT_bus\(1);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(11) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAOUT_bus\(2);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(12) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAOUT_bus\(3);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(13) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAOUT_bus\(4);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(14) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAOUT_bus\(5);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(15) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAOUT_bus\(6);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(16) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAOUT_bus\(7);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(17) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAOUT_bus\(8);

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTBDATAIN_bus\ <= (\input~combout\(26) & \input~combout\(25) & \input~combout\(24) & \input~combout\(23) & \input~combout\(22) & \input~combout\(21) & 
\input~combout\(20) & \input~combout\(19) & \input~combout\(18));

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTAADDR_bus\ <= (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(8) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(7) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(6) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(5) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(4) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTBADDR_bus\ <= (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(8) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(7) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(6) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(5) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(4) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(18) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(0);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(19) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(1);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(20) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(2);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(21) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(3);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(22) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(4);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(23) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(5);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(24) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(6);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(25) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(7);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(26) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(8);

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTADATAIN_bus\ <= (vcc & vcc & vcc & vcc & vcc);

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTBDATAIN_bus\ <= (\input~combout\(31) & \input~combout\(30) & \input~combout\(29) & \input~combout\(28) & \input~combout\(27));

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTAADDR_bus\ <= (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(8) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(7) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(6) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(5) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(4) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTBADDR_bus\ <= (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(8) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(7) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(6) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(5) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(4) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & 
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(27) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTADATAOUT_bus\(0);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(28) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTADATAOUT_bus\(1);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(29) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTADATAOUT_bus\(2);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(30) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTADATAOUT_bus\(3);
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(31) <= \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTADATAOUT_bus\(4);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~regout\ <= NOT \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\;

-- Location: LCCOMB_X11_Y3_N10
\FIFOOP|scfifo_component|auto_generated|dffe_af~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dffe_af~4_combout\ = (\wrreq~combout\) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(8),
	datad => \wrreq~combout\,
	combout => \FIFOOP|scfifo_component|auto_generated|dffe_af~4_combout\);

-- Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wrreq~I\ : cycloneii_io
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
	padio => ww_wrreq,
	combout => \wrreq~combout\);

-- Location: LCCOMB_X12_Y3_N0
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ = \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) $ (((VCC) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ = CARRY(\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) $ 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X12_Y3_N2
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) $ (((\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & ((\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)) # ((GND))))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ = CARRY((\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) $ 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X12_Y3_N4
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & ((VCC)))) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) $ (((VCC) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ = CARRY((!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) $ (!\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X12_Y3_N6
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3) $ (((\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ & ((\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3)) # ((GND))))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ = CARRY((\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3) $ 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X12_Y3_N8
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ & 
-- (((\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(4) & VCC)))) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(4) $ (((VCC) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ = CARRY((!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(4),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\);

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rdreq~I\ : cycloneii_io
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
	padio => ww_rdreq,
	combout => \rdreq~combout\);

-- Location: LCCOMB_X11_Y3_N26
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ = (\wrreq~combout\) # (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrreq~combout\,
	datad => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\);

-- Location: LCFF_X12_Y3_N1
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0));

-- Location: LCFF_X12_Y3_N7
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3));

-- Location: LCFF_X12_Y3_N3
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1));

-- Location: LCCOMB_X11_Y3_N24
\FIFOOP|scfifo_component|auto_generated|dffe_af~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dffe_af~1_combout\ = (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3) & 
-- !\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datac => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datad => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	combout => \FIFOOP|scfifo_component|auto_generated|dffe_af~1_combout\);

-- Location: LCCOMB_X12_Y3_N10
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(5) $ (((\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ & ((\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(5)) # ((GND))))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ = CARRY((\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(5) $ 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(5),
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X12_Y3_N12
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(6) & ((VCC)))) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(6) $ (((VCC) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ = CARRY((!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(6) $ (!\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(6),
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X12_Y3_N14
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(7) $ (((\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ & (((\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(7)) # (GND))))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ = CARRY((\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(7))) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(7),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\);

-- Location: LCFF_X12_Y3_N15
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(7));

-- Location: LCFF_X12_Y3_N13
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(6));

-- Location: LCFF_X12_Y3_N11
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(5));

-- Location: LCCOMB_X11_Y3_N6
\FIFOOP|scfifo_component|auto_generated|dffe_af~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dffe_af~0_combout\ = (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(4) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(7) & 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(6) & !\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(4),
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(7),
	datac => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(6),
	datad => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(5),
	combout => \FIFOOP|scfifo_component|auto_generated|dffe_af~0_combout\);

-- Location: LCCOMB_X11_Y3_N28
\FIFOOP|scfifo_component|auto_generated|dffe_af~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dffe_af~5_combout\ = (\rdreq~combout\ & (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) & (\FIFOOP|scfifo_component|auto_generated|dffe_af~1_combout\ & 
-- \FIFOOP|scfifo_component|auto_generated|dffe_af~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rdreq~combout\,
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datac => \FIFOOP|scfifo_component|auto_generated|dffe_af~1_combout\,
	datad => \FIFOOP|scfifo_component|auto_generated|dffe_af~0_combout\,
	combout => \FIFOOP|scfifo_component|auto_generated|dffe_af~5_combout\);

-- Location: LCCOMB_X12_Y3_N18
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\) # ((\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & 
-- ((\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(8)) # (!\FIFOOP|scfifo_component|auto_generated|dffe_af~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(8),
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\,
	datac => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datad => \FIFOOP|scfifo_component|auto_generated|dffe_af~5_combout\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\);

-- Location: LCFF_X12_Y3_N19
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\);

-- Location: LCCOMB_X11_Y3_N16
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ = (\wrreq~combout\ & (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\ $ (((!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\) # 
-- (!\rdreq~combout\))))) # (!\wrreq~combout\ & (((\rdreq~combout\ & \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrreq~combout\,
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datac => \rdreq~combout\,
	datad => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\);

-- Location: LCFF_X12_Y3_N9
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(4));

-- Location: LCCOMB_X12_Y3_N26
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(5) & (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(4) & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(7) & \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(5),
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(4),
	datac => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(7),
	datad => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(6),
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\);

-- Location: LCFF_X12_Y3_N5
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2));

-- Location: LCCOMB_X12_Y3_N20
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3) & (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2) & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1) & \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(3),
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(2),
	datac => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(1),
	datad => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\);

-- Location: LCCOMB_X12_Y3_N16
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~combout\ = \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(8) $ 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(8),
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~combout\);

-- Location: LCFF_X12_Y3_N17
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(8));

-- Location: LCCOMB_X11_Y3_N14
\FIFOOP|scfifo_component|auto_generated|dffe_af~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dffe_af~2_combout\ = (!\rdreq~combout\ & (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(8) & \wrreq~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rdreq~combout\,
	datac => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(8),
	datad => \wrreq~combout\,
	combout => \FIFOOP|scfifo_component|auto_generated|dffe_af~2_combout\);

-- Location: LCCOMB_X12_Y3_N30
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\ & (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ & 
-- (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ & \FIFOOP|scfifo_component|auto_generated|dffe_af~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\,
	datac => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\,
	datad => \FIFOOP|scfifo_component|auto_generated|dffe_af~2_combout\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\);

-- Location: LCCOMB_X12_Y3_N28
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\) # ((!\rdreq~combout\ & \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rdreq~combout\,
	datac => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	datad => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\);

-- Location: LCFF_X12_Y3_N29
\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\);

-- Location: LCCOMB_X12_Y3_N22
\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ = (\wrreq~combout\ & !\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wrreq~combout\,
	datad => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y3_N24
\FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ = (\rdreq~combout\ & \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rdreq~combout\,
	datad => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~regout\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\);

-- Location: LCCOMB_X14_Y3_N8
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\ = \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0) $ (VCC)
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ = CARRY(\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0),
	datad => VCC,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\);

-- Location: LCFF_X14_Y3_N9
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit5a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(0));

-- Location: LCCOMB_X14_Y3_N10
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\)) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1) & ((\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\) # (GND)))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ = CARRY((!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\);

-- Location: LCFF_X14_Y3_N11
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit5a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(1));

-- Location: LCCOMB_X14_Y3_N12
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ $ 
-- (GND))) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ & VCC))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ = CARRY((\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2) & !\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\);

-- Location: LCFF_X14_Y3_N13
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit5a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(2));

-- Location: LCCOMB_X14_Y3_N14
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\)) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3) & ((\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\) # (GND)))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ = CARRY((!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\);

-- Location: LCFF_X14_Y3_N15
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit5a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(3));

-- Location: LCCOMB_X14_Y3_N16
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(4) & (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ $ 
-- (GND))) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(4) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ & VCC))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\ = CARRY((\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(4) & !\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(4),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\);

-- Location: LCFF_X14_Y3_N17
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit5a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(4));

-- Location: LCCOMB_X14_Y3_N18
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(5) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\)) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(5) & ((\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\) # (GND)))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ = CARRY((!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(5),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\);

-- Location: LCFF_X14_Y3_N19
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit5a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(5));

-- Location: LCCOMB_X14_Y3_N20
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(6) & (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ $ 
-- (GND))) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(6) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ & VCC))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\ = CARRY((\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(6) & !\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(6),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\);

-- Location: LCFF_X14_Y3_N21
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit5a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(6));

-- Location: LCCOMB_X14_Y3_N22
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(7) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\)) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(7) & ((\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\) # (GND)))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ = CARRY((!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(7),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\);

-- Location: LCFF_X14_Y3_N23
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit5a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(7));

-- Location: LCCOMB_X14_Y3_N24
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~combout\ = \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ $ (!\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(8),
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~combout\);

-- Location: LCFF_X14_Y3_N25
\FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit5a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|rd_ptr_count|safe_q\(8));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[0]~I\ : cycloneii_io
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
	padio => ww_input(0),
	combout => \input~combout\(0));

-- Location: LCCOMB_X15_Y3_N6
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ = \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0) $ (VCC)
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0),
	datad => VCC,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: LCFF_X15_Y3_N7
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit5a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(0));

-- Location: LCCOMB_X15_Y3_N8
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\)) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1) & ((\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (GND)))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY((!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: LCFF_X15_Y3_N9
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit5a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(1));

-- Location: LCCOMB_X15_Y3_N10
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ & VCC))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY((\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2) & !\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: LCFF_X15_Y3_N11
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit5a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(2));

-- Location: LCCOMB_X15_Y3_N12
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\)) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3) & ((\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # (GND)))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ = CARRY((!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\);

-- Location: LCFF_X15_Y3_N13
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit5a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(3));

-- Location: LCCOMB_X15_Y3_N14
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(4) & (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(4) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ & VCC))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ = CARRY((\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(4) & !\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(4),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\);

-- Location: LCFF_X15_Y3_N15
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit5a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(4));

-- Location: LCCOMB_X15_Y3_N16
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(5) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\)) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(5) & ((\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\) # (GND)))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ = CARRY((!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(5),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\);

-- Location: LCFF_X15_Y3_N17
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit5a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(5));

-- Location: LCCOMB_X15_Y3_N18
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(6) & (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(6) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ & VCC))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\ = CARRY((\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(6) & !\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(6),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\);

-- Location: LCFF_X15_Y3_N19
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit5a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(6));

-- Location: LCCOMB_X15_Y3_N20
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~combout\ = (\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(7) & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\)) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(7) & ((\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\) # (GND)))
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ = CARRY((!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\) # (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(7),
	datad => VCC,
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~combout\,
	cout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\);

-- Location: LCFF_X15_Y3_N21
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit5a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(7));

-- Location: LCCOMB_X15_Y3_N22
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~combout\ = \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ $ (!\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(8),
	cin => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\,
	combout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~combout\);

-- Location: LCFF_X15_Y3_N23
\FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit5a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~combout\,
	ena => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dpfifo|wr_ptr|safe_q\(8));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[1]~I\ : cycloneii_io
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
	padio => ww_input(1),
	combout => \input~combout\(1));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[2]~I\ : cycloneii_io
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
	padio => ww_input(2),
	combout => \input~combout\(2));

-- Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[3]~I\ : cycloneii_io
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
	padio => ww_input(3),
	combout => \input~combout\(3));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[4]~I\ : cycloneii_io
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
	padio => ww_input(4),
	combout => \input~combout\(4));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[5]~I\ : cycloneii_io
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
	padio => ww_input(5),
	combout => \input~combout\(5));

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[6]~I\ : cycloneii_io
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
	padio => ww_input(6),
	combout => \input~combout\(6));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[7]~I\ : cycloneii_io
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
	padio => ww_input(7),
	combout => \input~combout\(7));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[8]~I\ : cycloneii_io
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
	padio => ww_input(8),
	combout => \input~combout\(8));

-- Location: M4K_X13_Y3
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "output_interface_fifo:FIFOOP|scfifo:scfifo_component|scfifo_5361:auto_generated|a_dpfifo_pk31:dpfifo|dpram_ev01:FIFOram|altsyncram_avj1:altsyncram2|altsyncram_9pc1:altsyncram3|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	clk0 => \clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	ena1 => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portadatain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAIN_bus\,
	portbdatain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTBDATAIN_bus\,
	portaaddr => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTAADDR_bus\,
	portbaddr => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a0_PORTADATAOUT_bus\);

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[9]~I\ : cycloneii_io
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
	padio => ww_input(9),
	combout => \input~combout\(9));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[10]~I\ : cycloneii_io
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
	padio => ww_input(10),
	combout => \input~combout\(10));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[11]~I\ : cycloneii_io
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
	padio => ww_input(11),
	combout => \input~combout\(11));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[12]~I\ : cycloneii_io
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
	padio => ww_input(12),
	combout => \input~combout\(12));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[13]~I\ : cycloneii_io
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
	padio => ww_input(13),
	combout => \input~combout\(13));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[14]~I\ : cycloneii_io
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
	padio => ww_input(14),
	combout => \input~combout\(14));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[15]~I\ : cycloneii_io
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
	padio => ww_input(15),
	combout => \input~combout\(15));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[16]~I\ : cycloneii_io
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
	padio => ww_input(16),
	combout => \input~combout\(16));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[17]~I\ : cycloneii_io
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
	padio => ww_input(17),
	combout => \input~combout\(17));

-- Location: M4K_X13_Y2
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "output_interface_fifo:FIFOOP|scfifo:scfifo_component|scfifo_5361:auto_generated|a_dpfifo_pk31:dpfifo|dpram_ev01:FIFOram|altsyncram_avj1:altsyncram2|altsyncram_9pc1:altsyncram3|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	clk0 => \clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	ena1 => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portadatain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAIN_bus\,
	portbdatain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTBDATAIN_bus\,
	portaaddr => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTAADDR_bus\,
	portbaddr => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a9_PORTADATAOUT_bus\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[18]~I\ : cycloneii_io
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
	padio => ww_input(18),
	combout => \input~combout\(18));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[19]~I\ : cycloneii_io
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
	padio => ww_input(19),
	combout => \input~combout\(19));

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[20]~I\ : cycloneii_io
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
	padio => ww_input(20),
	combout => \input~combout\(20));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[21]~I\ : cycloneii_io
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
	padio => ww_input(21),
	combout => \input~combout\(21));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[22]~I\ : cycloneii_io
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
	padio => ww_input(22),
	combout => \input~combout\(22));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[23]~I\ : cycloneii_io
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
	padio => ww_input(23),
	combout => \input~combout\(23));

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[24]~I\ : cycloneii_io
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
	padio => ww_input(24),
	combout => \input~combout\(24));

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[25]~I\ : cycloneii_io
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
	padio => ww_input(25),
	combout => \input~combout\(25));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[26]~I\ : cycloneii_io
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
	padio => ww_input(26),
	combout => \input~combout\(26));

-- Location: M4K_X13_Y1
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "output_interface_fifo:FIFOOP|scfifo:scfifo_component|scfifo_5361:auto_generated|a_dpfifo_pk31:dpfifo|dpram_ev01:FIFOram|altsyncram_avj1:altsyncram2|altsyncram_9pc1:altsyncram3|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	clk0 => \clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	ena1 => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portadatain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAIN_bus\,
	portbdatain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTBDATAIN_bus\,
	portaaddr => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTAADDR_bus\,
	portbaddr => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a18_PORTADATAOUT_bus\);

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[27]~I\ : cycloneii_io
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
	padio => ww_input(27),
	combout => \input~combout\(27));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[28]~I\ : cycloneii_io
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
	padio => ww_input(28),
	combout => \input~combout\(28));

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[29]~I\ : cycloneii_io
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
	padio => ww_input(29),
	combout => \input~combout\(29));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[30]~I\ : cycloneii_io
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
	padio => ww_input(30),
	combout => \input~combout\(30));

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[31]~I\ : cycloneii_io
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
	padio => ww_input(31),
	combout => \input~combout\(31));

-- Location: M4K_X13_Y4
\FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "output_interface_fifo:FIFOOP|scfifo:scfifo_component|scfifo_5361:auto_generated|a_dpfifo_pk31:dpfifo|dpram_ev01:FIFOram|altsyncram_avj1:altsyncram2|altsyncram_9pc1:altsyncram3|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 5,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 5,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	clk0 => \clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	ena1 => \FIFOOP|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portadatain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTADATAIN_bus\,
	portbdatain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTBDATAIN_bus\,
	portaaddr => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTAADDR_bus\,
	portbaddr => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|ram_block4a27_PORTADATAOUT_bus\);

-- Location: LCCOMB_X11_Y3_N12
\FIFOOP|scfifo_component|auto_generated|dffe_af~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dffe_af~3_combout\ = (\FIFOOP|scfifo_component|auto_generated|dffe_af~1_combout\ & (!\FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0) & 
-- (\FIFOOP|scfifo_component|auto_generated|dffe_af~2_combout\ & \FIFOOP|scfifo_component|auto_generated|dffe_af~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dffe_af~1_combout\,
	datab => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|safe_q\(0),
	datac => \FIFOOP|scfifo_component|auto_generated|dffe_af~2_combout\,
	datad => \FIFOOP|scfifo_component|auto_generated|dffe_af~0_combout\,
	combout => \FIFOOP|scfifo_component|auto_generated|dffe_af~3_combout\);

-- Location: LCCOMB_X11_Y3_N0
\FIFOOP|scfifo_component|auto_generated|dffe_af~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \FIFOOP|scfifo_component|auto_generated|dffe_af~6_combout\ = (\FIFOOP|scfifo_component|auto_generated|dffe_af~3_combout\) # ((\FIFOOP|scfifo_component|auto_generated|dffe_af~regout\ & ((\FIFOOP|scfifo_component|auto_generated|dffe_af~4_combout\) # 
-- (!\FIFOOP|scfifo_component|auto_generated|dffe_af~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FIFOOP|scfifo_component|auto_generated|dffe_af~4_combout\,
	datab => \FIFOOP|scfifo_component|auto_generated|dffe_af~5_combout\,
	datac => \FIFOOP|scfifo_component|auto_generated|dffe_af~regout\,
	datad => \FIFOOP|scfifo_component|auto_generated|dffe_af~3_combout\,
	combout => \FIFOOP|scfifo_component|auto_generated|dffe_af~6_combout\);

-- Location: LCFF_X11_Y3_N1
\FIFOOP|scfifo_component|auto_generated|dffe_af\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \FIFOOP|scfifo_component|auto_generated|dffe_af~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FIFOOP|scfifo_component|auto_generated|dffe_af~regout\);

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[0]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[1]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[2]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[3]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[4]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(4));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[5]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(5));

-- Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[6]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(6));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[7]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(7));

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[8]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(8));

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[9]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(9));

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[10]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(10));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[11]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(11));

-- Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[12]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(12));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[13]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(13));

-- Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[14]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(14));

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[15]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(15));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[16]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(16));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[17]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(17));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[18]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(18));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[19]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(19));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[20]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(20));

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[21]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(21));

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[22]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(22));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[23]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(23));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[24]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(24));

-- Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[25]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(25));

-- Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[26]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(26));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[27]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(27));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[28]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(28));

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[29]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(29));

-- Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[30]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(30));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[31]~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|FIFOram|altsyncram2|altsyncram3|q_a\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(31));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hfull_flag~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dffe_af~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hfull_flag);

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\empty_flag~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_empty_flag);

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\full_flag~I\ : cycloneii_io
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
	datain => \FIFOOP|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_full_flag);
END structure;


