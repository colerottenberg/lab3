-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "03/03/2024 22:00:04"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	top_level IS
    PORT (
	clk : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(1 DOWNTO 0);
	led0 : OUT std_logic_vector(6 DOWNTO 0);
	led0_dp : OUT std_logic;
	led1 : OUT std_logic_vector(6 DOWNTO 0);
	led1_dp : OUT std_logic;
	led2 : OUT std_logic_vector(6 DOWNTO 0);
	led2_dp : OUT std_logic;
	led3 : OUT std_logic_vector(6 DOWNTO 0);
	led3_dp : OUT std_logic;
	led4 : OUT std_logic_vector(6 DOWNTO 0);
	led4_dp : OUT std_logic;
	led5 : OUT std_logic_vector(6 DOWNTO 0);
	led5_dp : OUT std_logic;
	dbg : OUT std_logic_vector(23 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- switch[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4_dp	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5_dp	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[8]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[9]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[10]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[11]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[12]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[13]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[14]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[15]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[16]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[17]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[18]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[19]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[20]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[21]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[22]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg[23]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
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
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0_dp : std_logic;
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led1_dp : std_logic;
SIGNAL ww_led2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led2_dp : std_logic;
SIGNAL ww_led3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led3_dp : std_logic;
SIGNAL ww_led4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led4_dp : std_logic;
SIGNAL ww_led5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led5_dp : std_logic;
SIGNAL ww_dbg : std_logic_vector(23 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \led0_dp~output_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \led1[5]~output_o\ : std_logic;
SIGNAL \led1[6]~output_o\ : std_logic;
SIGNAL \led1_dp~output_o\ : std_logic;
SIGNAL \led2[0]~output_o\ : std_logic;
SIGNAL \led2[1]~output_o\ : std_logic;
SIGNAL \led2[2]~output_o\ : std_logic;
SIGNAL \led2[3]~output_o\ : std_logic;
SIGNAL \led2[4]~output_o\ : std_logic;
SIGNAL \led2[5]~output_o\ : std_logic;
SIGNAL \led2[6]~output_o\ : std_logic;
SIGNAL \led2_dp~output_o\ : std_logic;
SIGNAL \led3[0]~output_o\ : std_logic;
SIGNAL \led3[1]~output_o\ : std_logic;
SIGNAL \led3[2]~output_o\ : std_logic;
SIGNAL \led3[3]~output_o\ : std_logic;
SIGNAL \led3[4]~output_o\ : std_logic;
SIGNAL \led3[5]~output_o\ : std_logic;
SIGNAL \led3[6]~output_o\ : std_logic;
SIGNAL \led3_dp~output_o\ : std_logic;
SIGNAL \led4[0]~output_o\ : std_logic;
SIGNAL \led4[1]~output_o\ : std_logic;
SIGNAL \led4[2]~output_o\ : std_logic;
SIGNAL \led4[3]~output_o\ : std_logic;
SIGNAL \led4[4]~output_o\ : std_logic;
SIGNAL \led4[5]~output_o\ : std_logic;
SIGNAL \led4[6]~output_o\ : std_logic;
SIGNAL \led4_dp~output_o\ : std_logic;
SIGNAL \led5[0]~output_o\ : std_logic;
SIGNAL \led5[1]~output_o\ : std_logic;
SIGNAL \led5[2]~output_o\ : std_logic;
SIGNAL \led5[3]~output_o\ : std_logic;
SIGNAL \led5[4]~output_o\ : std_logic;
SIGNAL \led5[5]~output_o\ : std_logic;
SIGNAL \led5[6]~output_o\ : std_logic;
SIGNAL \led5_dp~output_o\ : std_logic;
SIGNAL \dbg[0]~output_o\ : std_logic;
SIGNAL \dbg[1]~output_o\ : std_logic;
SIGNAL \dbg[2]~output_o\ : std_logic;
SIGNAL \dbg[3]~output_o\ : std_logic;
SIGNAL \dbg[4]~output_o\ : std_logic;
SIGNAL \dbg[5]~output_o\ : std_logic;
SIGNAL \dbg[6]~output_o\ : std_logic;
SIGNAL \dbg[7]~output_o\ : std_logic;
SIGNAL \dbg[8]~output_o\ : std_logic;
SIGNAL \dbg[9]~output_o\ : std_logic;
SIGNAL \dbg[10]~output_o\ : std_logic;
SIGNAL \dbg[11]~output_o\ : std_logic;
SIGNAL \dbg[12]~output_o\ : std_logic;
SIGNAL \dbg[13]~output_o\ : std_logic;
SIGNAL \dbg[14]~output_o\ : std_logic;
SIGNAL \dbg[15]~output_o\ : std_logic;
SIGNAL \dbg[16]~output_o\ : std_logic;
SIGNAL \dbg[17]~output_o\ : std_logic;
SIGNAL \dbg[18]~output_o\ : std_logic;
SIGNAL \dbg[19]~output_o\ : std_logic;
SIGNAL \dbg[20]~output_o\ : std_logic;
SIGNAL \dbg[21]~output_o\ : std_logic;
SIGNAL \dbg[22]~output_o\ : std_logic;
SIGNAL \dbg[23]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \DATAPATH|N_COMP|Equal0~1_combout\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[0]~6_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \FSM|i_en~combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[0]~7\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[1]~8_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[1]~9\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[2]~10_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[2]~11\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[3]~12_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[3]~13\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[4]~14_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[4]~15\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[5]~16_combout\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \DATAPATH|N_REG|q[4]~feeder_combout\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~1_cout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~3_cout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~5_cout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~7_cout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~9_cout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~10_combout\ : std_logic;
SIGNAL \FSM|next_state.COMPUTE~0_combout\ : std_logic;
SIGNAL \FSM|state.COMPUTE~q\ : std_logic;
SIGNAL \FSM|state.ADD~q\ : std_logic;
SIGNAL \DATAPATH|N_COMP|Equal0~0_combout\ : std_logic;
SIGNAL \FSM|Selector0~0_combout\ : std_logic;
SIGNAL \FSM|state.CHECK_LE~q\ : std_logic;
SIGNAL \FSM|result_sel~0_combout\ : std_logic;
SIGNAL \FSM|result_sel~1_combout\ : std_logic;
SIGNAL \FSM|Selector1~0_combout\ : std_logic;
SIGNAL \FSM|Selector1~1_combout\ : std_logic;
SIGNAL \FSM|state.DONE_STATE~q\ : std_logic;
SIGNAL \FSM|Selector2~0_combout\ : std_logic;
SIGNAL \FSM|state.RESTART~q\ : std_logic;
SIGNAL \FSM|state.START~0_combout\ : std_logic;
SIGNAL \FSM|state.START~q\ : std_logic;
SIGNAL \FSM|next_state.INIT~0_combout\ : std_logic;
SIGNAL \FSM|state.INIT~q\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[20]~0_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[18]~2_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[17]~3_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[15]~5_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[11]~9_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[9]~11_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[7]~13_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[5]~15_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[2]~18_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[1]~19_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[0]~24_combout\ : std_logic;
SIGNAL \FSM|y_en~combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[0]~20_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[0]~25\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[1]~26_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[1]~27\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[2]~28_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[2]~29\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[3]~30_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[3]~17_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[3]~31\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[4]~32_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[4]~16_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[4]~33\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[5]~34_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[5]~35\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[6]~36_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[6]~14_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[6]~37\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[7]~38_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[7]~39\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[8]~40_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[8]~12_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[8]~41\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[9]~42_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[9]~43\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[10]~44_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[10]~10_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[10]~45\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[11]~46_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[11]~47\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[12]~48_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[12]~8_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[12]~49\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[13]~50_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[13]~7_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[13]~51\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[14]~52_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[14]~6_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[14]~53\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[15]~54_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[15]~55\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[16]~56_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[16]~4_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[16]~57\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[17]~58_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[17]~59\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[18]~60_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[18]~61\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[19]~62_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[19]~1_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[19]~63\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[20]~64_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[20]~0_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[22]~22_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[20]~65\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[21]~66_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[21]~23_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[21]~67\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[22]~68_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[22]~1_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[21]~2_combout\ : std_logic;
SIGNAL \DATAPATH|X_MUX|output[23]~21_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[22]~69\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[23]~70_combout\ : std_logic;
SIGNAL \U_LED0|output[0]~8_combout\ : std_logic;
SIGNAL \U_LED0|output[0]~9_combout\ : std_logic;
SIGNAL \U_LED0|output[1]~10_combout\ : std_logic;
SIGNAL \U_LED0|output[2]~16_combout\ : std_logic;
SIGNAL \U_LED0|output[2]~11_combout\ : std_logic;
SIGNAL \U_LED0|output[3]~12_combout\ : std_logic;
SIGNAL \U_LED0|output[4]~13_combout\ : std_logic;
SIGNAL \U_LED0|output[5]~14_combout\ : std_logic;
SIGNAL \U_LED0|output[6]~15_combout\ : std_logic;
SIGNAL \FSM|done~combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[17]~5_combout\ : std_logic;
SIGNAL \U_LED1|output[0]~0_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[18]~4_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[16]~3_combout\ : std_logic;
SIGNAL \U_LED1|output[0]~1_combout\ : std_logic;
SIGNAL \U_LED1|output[1]~2_combout\ : std_logic;
SIGNAL \U_LED1|output[2]~3_combout\ : std_logic;
SIGNAL \U_LED1|output[1]~4_combout\ : std_logic;
SIGNAL \U_LED1|output[2]~5_combout\ : std_logic;
SIGNAL \U_LED1|output[3]~6_combout\ : std_logic;
SIGNAL \U_LED1|output[4]~7_combout\ : std_logic;
SIGNAL \U_LED1|output[5]~8_combout\ : std_logic;
SIGNAL \U_LED1|output[6]~9_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[13]~8_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[14]~7_combout\ : std_logic;
SIGNAL \U_LED2|output[0]~0_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[12]~6_combout\ : std_logic;
SIGNAL \U_LED2|output[0]~1_combout\ : std_logic;
SIGNAL \U_LED2|output[1]~2_combout\ : std_logic;
SIGNAL \U_LED2|output[2]~3_combout\ : std_logic;
SIGNAL \U_LED2|output[1]~4_combout\ : std_logic;
SIGNAL \U_LED2|output[2]~5_combout\ : std_logic;
SIGNAL \U_LED2|output[3]~6_combout\ : std_logic;
SIGNAL \U_LED2|output[4]~7_combout\ : std_logic;
SIGNAL \U_LED2|output[5]~8_combout\ : std_logic;
SIGNAL \U_LED2|output[6]~9_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[10]~10_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[8]~9_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[9]~11_combout\ : std_logic;
SIGNAL \U_LED3|output[0]~0_combout\ : std_logic;
SIGNAL \U_LED3|output[0]~1_combout\ : std_logic;
SIGNAL \U_LED3|output[1]~2_combout\ : std_logic;
SIGNAL \U_LED3|output[1]~3_combout\ : std_logic;
SIGNAL \U_LED3|output[2]~4_combout\ : std_logic;
SIGNAL \U_LED3|output[2]~5_combout\ : std_logic;
SIGNAL \U_LED3|output[3]~6_combout\ : std_logic;
SIGNAL \U_LED3|output[4]~7_combout\ : std_logic;
SIGNAL \U_LED3|output[5]~8_combout\ : std_logic;
SIGNAL \U_LED3|output[6]~9_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[6]~13_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[5]~14_combout\ : std_logic;
SIGNAL \U_LED4|output[0]~0_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[4]~12_combout\ : std_logic;
SIGNAL \U_LED4|output[0]~1_combout\ : std_logic;
SIGNAL \U_LED4|output[1]~2_combout\ : std_logic;
SIGNAL \U_LED4|output[2]~3_combout\ : std_logic;
SIGNAL \U_LED4|output[1]~4_combout\ : std_logic;
SIGNAL \U_LED4|output[2]~5_combout\ : std_logic;
SIGNAL \U_LED4|output[3]~6_combout\ : std_logic;
SIGNAL \U_LED4|output[4]~7_combout\ : std_logic;
SIGNAL \U_LED4|output[5]~8_combout\ : std_logic;
SIGNAL \U_LED4|output[6]~9_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[0]~15_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[2]~16_combout\ : std_logic;
SIGNAL \U_LED5|output[0]~0_combout\ : std_logic;
SIGNAL \DATAPATH|RESULT_MUX|output[1]~17_combout\ : std_logic;
SIGNAL \U_LED5|output[0]~1_combout\ : std_logic;
SIGNAL \U_LED5|output[1]~2_combout\ : std_logic;
SIGNAL \U_LED5|output[1]~4_combout\ : std_logic;
SIGNAL \U_LED5|output[1]~3_combout\ : std_logic;
SIGNAL \U_LED5|output[2]~5_combout\ : std_logic;
SIGNAL \U_LED5|output[3]~6_combout\ : std_logic;
SIGNAL \U_LED5|output[4]~7_combout\ : std_logic;
SIGNAL \U_LED5|output[5]~8_combout\ : std_logic;
SIGNAL \U_LED5|output[6]~9_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DATAPATH|Y_REG|q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \DATAPATH|N_REG|q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DATAPATH|X_REG|q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \FSM|ALT_INV_done~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_switch <= switch;
ww_button <= button;
led0 <= ww_led0;
led0_dp <= ww_led0_dp;
led1 <= ww_led1;
led1_dp <= ww_led1_dp;
led2 <= ww_led2;
led2_dp <= ww_led2_dp;
led3 <= ww_led3;
led3_dp <= ww_led3_dp;
led4 <= ww_led4;
led4_dp <= ww_led4_dp;
led5 <= ww_led5;
led5_dp <= ww_led5_dp;
dbg <= ww_dbg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\FSM|ALT_INV_done~combout\ <= NOT \FSM|done~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X78_Y45_N9
\led0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[0]~9_combout\,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\led0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[1]~10_combout\,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\led0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[2]~11_combout\,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\led0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[3]~12_combout\,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\led0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[4]~13_combout\,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\led0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[5]~14_combout\,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\led0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[6]~15_combout\,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\led0_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_done~combout\,
	devoe => ww_devoe,
	o => \led0_dp~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\led1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[0]~1_combout\,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\led1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[1]~2_combout\,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\led1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[2]~5_combout\,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\led1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[3]~6_combout\,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\led1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[4]~7_combout\,
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\led1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[5]~8_combout\,
	devoe => ww_devoe,
	o => \led1[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\led1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[6]~9_combout\,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\led1_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_done~combout\,
	devoe => ww_devoe,
	o => \led1_dp~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\led2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[0]~1_combout\,
	devoe => ww_devoe,
	o => \led2[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\led2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[1]~2_combout\,
	devoe => ww_devoe,
	o => \led2[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\led2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[2]~5_combout\,
	devoe => ww_devoe,
	o => \led2[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\led2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[3]~6_combout\,
	devoe => ww_devoe,
	o => \led2[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\led2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[4]~7_combout\,
	devoe => ww_devoe,
	o => \led2[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\led2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[5]~8_combout\,
	devoe => ww_devoe,
	o => \led2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\led2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[6]~9_combout\,
	devoe => ww_devoe,
	o => \led2[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\led2_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_done~combout\,
	devoe => ww_devoe,
	o => \led2_dp~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\led3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[0]~1_combout\,
	devoe => ww_devoe,
	o => \led3[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\led3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[1]~2_combout\,
	devoe => ww_devoe,
	o => \led3[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\led3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[2]~5_combout\,
	devoe => ww_devoe,
	o => \led3[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\led3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[3]~6_combout\,
	devoe => ww_devoe,
	o => \led3[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\led3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[4]~7_combout\,
	devoe => ww_devoe,
	o => \led3[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\led3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[5]~8_combout\,
	devoe => ww_devoe,
	o => \led3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\led3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[6]~9_combout\,
	devoe => ww_devoe,
	o => \led3[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\led3_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_done~combout\,
	devoe => ww_devoe,
	o => \led3_dp~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\led4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|output[0]~1_combout\,
	devoe => ww_devoe,
	o => \led4[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\led4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|output[1]~2_combout\,
	devoe => ww_devoe,
	o => \led4[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\led4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|output[2]~5_combout\,
	devoe => ww_devoe,
	o => \led4[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\led4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|output[3]~6_combout\,
	devoe => ww_devoe,
	o => \led4[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\led4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|output[4]~7_combout\,
	devoe => ww_devoe,
	o => \led4[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\led4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|output[5]~8_combout\,
	devoe => ww_devoe,
	o => \led4[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\led4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|output[6]~9_combout\,
	devoe => ww_devoe,
	o => \led4[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\led4_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_done~combout\,
	devoe => ww_devoe,
	o => \led4_dp~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\led5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|output[0]~1_combout\,
	devoe => ww_devoe,
	o => \led5[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\led5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|output[1]~2_combout\,
	devoe => ww_devoe,
	o => \led5[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\led5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|output[2]~5_combout\,
	devoe => ww_devoe,
	o => \led5[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\led5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|output[3]~6_combout\,
	devoe => ww_devoe,
	o => \led5[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\led5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|output[4]~7_combout\,
	devoe => ww_devoe,
	o => \led5[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\led5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|output[5]~8_combout\,
	devoe => ww_devoe,
	o => \led5[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\led5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|output[6]~9_combout\,
	devoe => ww_devoe,
	o => \led5[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\led5_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|ALT_INV_done~combout\,
	devoe => ww_devoe,
	o => \led5_dp~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\dbg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[0]~15_combout\,
	devoe => ww_devoe,
	o => \dbg[0]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\dbg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[1]~17_combout\,
	devoe => ww_devoe,
	o => \dbg[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\dbg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[2]~16_combout\,
	devoe => ww_devoe,
	o => \dbg[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\dbg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \dbg[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\dbg[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[4]~12_combout\,
	devoe => ww_devoe,
	o => \dbg[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\dbg[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[5]~14_combout\,
	devoe => ww_devoe,
	o => \dbg[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\dbg[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[6]~13_combout\,
	devoe => ww_devoe,
	o => \dbg[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\dbg[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \dbg[7]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\dbg[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[8]~9_combout\,
	devoe => ww_devoe,
	o => \dbg[8]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\dbg[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[9]~11_combout\,
	devoe => ww_devoe,
	o => \dbg[9]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\dbg[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[10]~10_combout\,
	devoe => ww_devoe,
	o => \dbg[10]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\dbg[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED3|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \dbg[11]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\dbg[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[12]~6_combout\,
	devoe => ww_devoe,
	o => \dbg[12]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\dbg[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[13]~8_combout\,
	devoe => ww_devoe,
	o => \dbg[13]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\dbg[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[14]~7_combout\,
	devoe => ww_devoe,
	o => \dbg[14]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\dbg[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED2|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \dbg[15]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\dbg[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[16]~3_combout\,
	devoe => ww_devoe,
	o => \dbg[16]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\dbg[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[17]~5_combout\,
	devoe => ww_devoe,
	o => \dbg[17]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\dbg[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[18]~4_combout\,
	devoe => ww_devoe,
	o => \dbg[18]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\dbg[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \dbg[19]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\dbg[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[20]~0_combout\,
	devoe => ww_devoe,
	o => \dbg[20]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\dbg[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[21]~2_combout\,
	devoe => ww_devoe,
	o => \dbg[21]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\dbg[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH|RESULT_MUX|output[22]~1_combout\,
	devoe => ww_devoe,
	o => \dbg[22]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\dbg[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[0]~8_combout\,
	devoe => ww_devoe,
	o => \dbg[23]~output_o\);

-- Location: IOIBUF_X78_Y29_N22
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: IOIBUF_X49_Y54_N29
\button[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\switch[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\button[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

-- Location: FF_X64_Y44_N25
\DATAPATH|N_REG|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \switch[0]~input_o\,
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \FSM|state.INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|N_REG|q\(0));

-- Location: IOIBUF_X58_Y54_N22
\switch[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: FF_X64_Y44_N19
\DATAPATH|N_REG|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \switch[1]~input_o\,
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \FSM|state.INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|N_REG|q\(1));

-- Location: LCCOMB_X64_Y44_N24
\DATAPATH|N_COMP|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|N_COMP|Equal0~1_combout\ = (!\DATAPATH|N_REG|q\(0) & !\DATAPATH|N_REG|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|N_REG|q\(0),
	datad => \DATAPATH|N_REG|q\(1),
	combout => \DATAPATH|N_COMP|Equal0~1_combout\);

-- Location: IOIBUF_X60_Y54_N29
\switch[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: FF_X64_Y44_N9
\DATAPATH|N_REG|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \switch[5]~input_o\,
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \FSM|state.INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|N_REG|q\(5));

-- Location: LCCOMB_X63_Y44_N0
\DATAPATH|I_REG|q[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[0]~6_combout\ = \DATAPATH|I_REG|q\(0) $ (VCC)
-- \DATAPATH|I_REG|q[0]~7\ = CARRY(\DATAPATH|I_REG|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(0),
	datad => VCC,
	combout => \DATAPATH|I_REG|q[0]~6_combout\,
	cout => \DATAPATH|I_REG|q[0]~7\);

-- Location: LCCOMB_X63_Y44_N20
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X65_Y44_N22
\FSM|i_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|i_en~combout\ = (\FSM|state.COMPUTE~q\) # (\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|state.COMPUTE~q\,
	datad => \FSM|state.INIT~q\,
	combout => \FSM|i_en~combout\);

-- Location: FF_X63_Y44_N1
\DATAPATH|I_REG|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[0]~6_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(0));

-- Location: LCCOMB_X63_Y44_N2
\DATAPATH|I_REG|q[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[1]~8_combout\ = (\DATAPATH|I_REG|q\(1) & (!\DATAPATH|I_REG|q[0]~7\)) # (!\DATAPATH|I_REG|q\(1) & ((\DATAPATH|I_REG|q[0]~7\) # (GND)))
-- \DATAPATH|I_REG|q[1]~9\ = CARRY((!\DATAPATH|I_REG|q[0]~7\) # (!\DATAPATH|I_REG|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(1),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[0]~7\,
	combout => \DATAPATH|I_REG|q[1]~8_combout\,
	cout => \DATAPATH|I_REG|q[1]~9\);

-- Location: FF_X63_Y44_N3
\DATAPATH|I_REG|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[1]~8_combout\,
	asdata => VCC,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(1));

-- Location: LCCOMB_X63_Y44_N4
\DATAPATH|I_REG|q[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[2]~10_combout\ = (\DATAPATH|I_REG|q\(2) & (\DATAPATH|I_REG|q[1]~9\ $ (GND))) # (!\DATAPATH|I_REG|q\(2) & (!\DATAPATH|I_REG|q[1]~9\ & VCC))
-- \DATAPATH|I_REG|q[2]~11\ = CARRY((\DATAPATH|I_REG|q\(2) & !\DATAPATH|I_REG|q[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(2),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[1]~9\,
	combout => \DATAPATH|I_REG|q[2]~10_combout\,
	cout => \DATAPATH|I_REG|q[2]~11\);

-- Location: FF_X63_Y44_N5
\DATAPATH|I_REG|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[2]~10_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(2));

-- Location: LCCOMB_X63_Y44_N6
\DATAPATH|I_REG|q[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[3]~12_combout\ = (\DATAPATH|I_REG|q\(3) & (!\DATAPATH|I_REG|q[2]~11\)) # (!\DATAPATH|I_REG|q\(3) & ((\DATAPATH|I_REG|q[2]~11\) # (GND)))
-- \DATAPATH|I_REG|q[3]~13\ = CARRY((!\DATAPATH|I_REG|q[2]~11\) # (!\DATAPATH|I_REG|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(3),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[2]~11\,
	combout => \DATAPATH|I_REG|q[3]~12_combout\,
	cout => \DATAPATH|I_REG|q[3]~13\);

-- Location: FF_X63_Y44_N7
\DATAPATH|I_REG|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[3]~12_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(3));

-- Location: LCCOMB_X63_Y44_N8
\DATAPATH|I_REG|q[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[4]~14_combout\ = (\DATAPATH|I_REG|q\(4) & (\DATAPATH|I_REG|q[3]~13\ $ (GND))) # (!\DATAPATH|I_REG|q\(4) & (!\DATAPATH|I_REG|q[3]~13\ & VCC))
-- \DATAPATH|I_REG|q[4]~15\ = CARRY((\DATAPATH|I_REG|q\(4) & !\DATAPATH|I_REG|q[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(4),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[3]~13\,
	combout => \DATAPATH|I_REG|q[4]~14_combout\,
	cout => \DATAPATH|I_REG|q[4]~15\);

-- Location: FF_X63_Y44_N9
\DATAPATH|I_REG|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[4]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(4));

-- Location: LCCOMB_X63_Y44_N10
\DATAPATH|I_REG|q[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[5]~16_combout\ = \DATAPATH|I_REG|q[4]~15\ $ (\DATAPATH|I_REG|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|I_REG|q\(5),
	cin => \DATAPATH|I_REG|q[4]~15\,
	combout => \DATAPATH|I_REG|q[5]~16_combout\);

-- Location: FF_X63_Y44_N11
\DATAPATH|I_REG|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[5]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(5));

-- Location: IOIBUF_X56_Y54_N29
\switch[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: LCCOMB_X64_Y44_N30
\DATAPATH|N_REG|q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|N_REG|q[4]~feeder_combout\ = \switch[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[4]~input_o\,
	combout => \DATAPATH|N_REG|q[4]~feeder_combout\);

-- Location: FF_X64_Y44_N31
\DATAPATH|N_REG|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|N_REG|q[4]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|state.INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|N_REG|q\(4));

-- Location: IOIBUF_X60_Y54_N22
\switch[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: FF_X64_Y44_N21
\DATAPATH|N_REG|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \switch[3]~input_o\,
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \FSM|state.INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|N_REG|q\(3));

-- Location: IOIBUF_X60_Y54_N15
\switch[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: FF_X64_Y44_N29
\DATAPATH|N_REG|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \switch[2]~input_o\,
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \FSM|state.INIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|N_REG|q\(2));

-- Location: LCCOMB_X64_Y44_N6
\DATAPATH|LE_COMP|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~1_cout\ = CARRY((\DATAPATH|I_REG|q\(0) & !\DATAPATH|N_REG|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(0),
	datab => \DATAPATH|N_REG|q\(0),
	datad => VCC,
	cout => \DATAPATH|LE_COMP|LessThan0~1_cout\);

-- Location: LCCOMB_X64_Y44_N8
\DATAPATH|LE_COMP|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~3_cout\ = CARRY((\DATAPATH|I_REG|q\(1) & (\DATAPATH|N_REG|q\(1) & !\DATAPATH|LE_COMP|LessThan0~1_cout\)) # (!\DATAPATH|I_REG|q\(1) & ((\DATAPATH|N_REG|q\(1)) # (!\DATAPATH|LE_COMP|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(1),
	datab => \DATAPATH|N_REG|q\(1),
	datad => VCC,
	cin => \DATAPATH|LE_COMP|LessThan0~1_cout\,
	cout => \DATAPATH|LE_COMP|LessThan0~3_cout\);

-- Location: LCCOMB_X64_Y44_N10
\DATAPATH|LE_COMP|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~5_cout\ = CARRY((\DATAPATH|N_REG|q\(2) & (\DATAPATH|I_REG|q\(2) & !\DATAPATH|LE_COMP|LessThan0~3_cout\)) # (!\DATAPATH|N_REG|q\(2) & ((\DATAPATH|I_REG|q\(2)) # (!\DATAPATH|LE_COMP|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|N_REG|q\(2),
	datab => \DATAPATH|I_REG|q\(2),
	datad => VCC,
	cin => \DATAPATH|LE_COMP|LessThan0~3_cout\,
	cout => \DATAPATH|LE_COMP|LessThan0~5_cout\);

-- Location: LCCOMB_X64_Y44_N12
\DATAPATH|LE_COMP|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~7_cout\ = CARRY((\DATAPATH|N_REG|q\(3) & ((!\DATAPATH|LE_COMP|LessThan0~5_cout\) # (!\DATAPATH|I_REG|q\(3)))) # (!\DATAPATH|N_REG|q\(3) & (!\DATAPATH|I_REG|q\(3) & !\DATAPATH|LE_COMP|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|N_REG|q\(3),
	datab => \DATAPATH|I_REG|q\(3),
	datad => VCC,
	cin => \DATAPATH|LE_COMP|LessThan0~5_cout\,
	cout => \DATAPATH|LE_COMP|LessThan0~7_cout\);

-- Location: LCCOMB_X64_Y44_N14
\DATAPATH|LE_COMP|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~9_cout\ = CARRY((\DATAPATH|I_REG|q\(4) & ((!\DATAPATH|LE_COMP|LessThan0~7_cout\) # (!\DATAPATH|N_REG|q\(4)))) # (!\DATAPATH|I_REG|q\(4) & (!\DATAPATH|N_REG|q\(4) & !\DATAPATH|LE_COMP|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(4),
	datab => \DATAPATH|N_REG|q\(4),
	datad => VCC,
	cin => \DATAPATH|LE_COMP|LessThan0~7_cout\,
	cout => \DATAPATH|LE_COMP|LessThan0~9_cout\);

-- Location: LCCOMB_X64_Y44_N16
\DATAPATH|LE_COMP|LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~10_combout\ = (\DATAPATH|N_REG|q\(5) & (\DATAPATH|LE_COMP|LessThan0~9_cout\ & \DATAPATH|I_REG|q\(5))) # (!\DATAPATH|N_REG|q\(5) & ((\DATAPATH|LE_COMP|LessThan0~9_cout\) # (\DATAPATH|I_REG|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|N_REG|q\(5),
	datad => \DATAPATH|I_REG|q\(5),
	cin => \DATAPATH|LE_COMP|LessThan0~9_cout\,
	combout => \DATAPATH|LE_COMP|LessThan0~10_combout\);

-- Location: LCCOMB_X64_Y44_N4
\FSM|next_state.COMPUTE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|next_state.COMPUTE~0_combout\ = (\FSM|state.CHECK_LE~q\ & !\DATAPATH|LE_COMP|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|state.CHECK_LE~q\,
	datad => \DATAPATH|LE_COMP|LessThan0~10_combout\,
	combout => \FSM|next_state.COMPUTE~0_combout\);

-- Location: FF_X64_Y44_N5
\FSM|state.COMPUTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|next_state.COMPUTE~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|state.COMPUTE~q\);

-- Location: FF_X65_Y44_N9
\FSM|state.ADD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|state.COMPUTE~q\,
	clrn => \button[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|state.ADD~q\);

-- Location: LCCOMB_X64_Y44_N28
\DATAPATH|N_COMP|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|N_COMP|Equal0~0_combout\ = (!\DATAPATH|N_REG|q\(3) & (!\DATAPATH|N_REG|q\(5) & (!\DATAPATH|N_REG|q\(2) & !\DATAPATH|N_REG|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|N_REG|q\(3),
	datab => \DATAPATH|N_REG|q\(5),
	datac => \DATAPATH|N_REG|q\(2),
	datad => \DATAPATH|N_REG|q\(4),
	combout => \DATAPATH|N_COMP|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y44_N22
\FSM|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|Selector0~0_combout\ = (\FSM|state.ADD~q\) # ((\FSM|state.INIT~q\ & ((!\DATAPATH|N_COMP|Equal0~0_combout\) # (!\DATAPATH|N_COMP|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.INIT~q\,
	datab => \DATAPATH|N_COMP|Equal0~1_combout\,
	datac => \FSM|state.ADD~q\,
	datad => \DATAPATH|N_COMP|Equal0~0_combout\,
	combout => \FSM|Selector0~0_combout\);

-- Location: FF_X64_Y44_N23
\FSM|state.CHECK_LE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Selector0~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|state.CHECK_LE~q\);

-- Location: LCCOMB_X64_Y44_N18
\FSM|result_sel~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|result_sel~0_combout\ = (!\DATAPATH|N_REG|q\(2) & (!\DATAPATH|N_REG|q\(4) & (!\DATAPATH|N_REG|q\(1) & !\DATAPATH|N_REG|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|N_REG|q\(2),
	datab => \DATAPATH|N_REG|q\(4),
	datac => \DATAPATH|N_REG|q\(1),
	datad => \DATAPATH|N_REG|q\(0),
	combout => \FSM|result_sel~0_combout\);

-- Location: LCCOMB_X64_Y44_N20
\FSM|result_sel~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|result_sel~1_combout\ = (\FSM|state.INIT~q\ & (!\DATAPATH|N_REG|q\(5) & (!\DATAPATH|N_REG|q\(3) & \FSM|result_sel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.INIT~q\,
	datab => \DATAPATH|N_REG|q\(5),
	datac => \DATAPATH|N_REG|q\(3),
	datad => \FSM|result_sel~0_combout\,
	combout => \FSM|result_sel~1_combout\);

-- Location: LCCOMB_X65_Y44_N8
\FSM|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|Selector1~0_combout\ = (!\button[1]~input_o\ & \FSM|state.DONE_STATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datad => \FSM|state.DONE_STATE~q\,
	combout => \FSM|Selector1~0_combout\);

-- Location: LCCOMB_X64_Y44_N26
\FSM|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|Selector1~1_combout\ = (\FSM|result_sel~1_combout\) # ((\FSM|Selector1~0_combout\) # ((\FSM|state.CHECK_LE~q\ & \DATAPATH|LE_COMP|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.CHECK_LE~q\,
	datab => \FSM|result_sel~1_combout\,
	datac => \FSM|Selector1~0_combout\,
	datad => \DATAPATH|LE_COMP|LessThan0~10_combout\,
	combout => \FSM|Selector1~1_combout\);

-- Location: FF_X64_Y44_N27
\FSM|state.DONE_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Selector1~1_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|state.DONE_STATE~q\);

-- Location: LCCOMB_X65_Y44_N30
\FSM|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|Selector2~0_combout\ = (\button[1]~input_o\ & ((\FSM|state.RESTART~q\) # (\FSM|state.DONE_STATE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datac => \FSM|state.RESTART~q\,
	datad => \FSM|state.DONE_STATE~q\,
	combout => \FSM|Selector2~0_combout\);

-- Location: FF_X65_Y44_N31
\FSM|state.RESTART\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|Selector2~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|state.RESTART~q\);

-- Location: LCCOMB_X65_Y44_N24
\FSM|state.START~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|state.START~0_combout\ = (\FSM|state.START~q\) # (!\button[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|state.START~q\,
	datad => \button[1]~input_o\,
	combout => \FSM|state.START~0_combout\);

-- Location: FF_X65_Y44_N25
\FSM|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|state.START~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|state.START~q\);

-- Location: LCCOMB_X65_Y44_N12
\FSM|next_state.INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|next_state.INIT~0_combout\ = (!\button[1]~input_o\ & ((\FSM|state.RESTART~q\) # (!\FSM|state.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datac => \FSM|state.RESTART~q\,
	datad => \FSM|state.START~q\,
	combout => \FSM|next_state.INIT~0_combout\);

-- Location: FF_X65_Y44_N13
\FSM|state.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|next_state.INIT~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|state.INIT~q\);

-- Location: LCCOMB_X65_Y43_N12
\DATAPATH|X_MUX|output[20]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[20]~0_combout\ = (\DATAPATH|Y_REG|q\(20) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|Y_REG|q\(20),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[20]~0_combout\);

-- Location: FF_X65_Y43_N13
\DATAPATH|X_REG|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[20]~0_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(20));

-- Location: LCCOMB_X65_Y43_N4
\DATAPATH|X_MUX|output[18]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[18]~2_combout\ = (\DATAPATH|Y_REG|q\(18) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(18),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[18]~2_combout\);

-- Location: FF_X65_Y43_N5
\DATAPATH|X_REG|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[18]~2_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(18));

-- Location: LCCOMB_X65_Y43_N30
\DATAPATH|X_MUX|output[17]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[17]~3_combout\ = (\DATAPATH|Y_REG|q\(17) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(17),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[17]~3_combout\);

-- Location: FF_X65_Y43_N31
\DATAPATH|X_REG|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[17]~3_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(17));

-- Location: LCCOMB_X66_Y43_N24
\DATAPATH|X_MUX|output[15]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[15]~5_combout\ = (\DATAPATH|Y_REG|q\(15) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(15),
	datac => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[15]~5_combout\);

-- Location: FF_X66_Y43_N25
\DATAPATH|X_REG|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[15]~5_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(15));

-- Location: LCCOMB_X65_Y44_N28
\DATAPATH|X_MUX|output[11]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[11]~9_combout\ = (\DATAPATH|Y_REG|q\(11) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(11),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[11]~9_combout\);

-- Location: FF_X65_Y44_N29
\DATAPATH|X_REG|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[11]~9_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(11));

-- Location: LCCOMB_X66_Y44_N4
\DATAPATH|X_MUX|output[9]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[9]~11_combout\ = (\DATAPATH|Y_REG|q\(9) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(9),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[9]~11_combout\);

-- Location: FF_X66_Y44_N5
\DATAPATH|X_REG|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[9]~11_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(9));

-- Location: LCCOMB_X65_Y44_N6
\DATAPATH|X_MUX|output[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[7]~13_combout\ = (!\FSM|state.INIT~q\ & \DATAPATH|Y_REG|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.INIT~q\,
	datad => \DATAPATH|Y_REG|q\(7),
	combout => \DATAPATH|X_MUX|output[7]~13_combout\);

-- Location: FF_X65_Y44_N7
\DATAPATH|X_REG|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[7]~13_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(7));

-- Location: LCCOMB_X66_Y44_N0
\DATAPATH|X_MUX|output[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[5]~15_combout\ = (\DATAPATH|Y_REG|q\(5) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|Y_REG|q\(5),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[5]~15_combout\);

-- Location: FF_X66_Y44_N1
\DATAPATH|X_REG|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[5]~15_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(5));

-- Location: LCCOMB_X67_Y44_N26
\DATAPATH|X_MUX|output[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[2]~18_combout\ = (\DATAPATH|Y_REG|q\(2) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(2),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[2]~18_combout\);

-- Location: FF_X67_Y44_N27
\DATAPATH|X_REG|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[2]~18_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(2));

-- Location: LCCOMB_X67_Y44_N0
\DATAPATH|X_MUX|output[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[1]~19_combout\ = (\DATAPATH|Y_REG|q\(1) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(1),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[1]~19_combout\);

-- Location: FF_X67_Y44_N1
\DATAPATH|X_REG|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[1]~19_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(1));

-- Location: LCCOMB_X66_Y44_N8
\DATAPATH|Y_REG|q[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[0]~24_combout\ = (\DATAPATH|X_REG|q\(0) & (\DATAPATH|Y_REG|q\(0) $ (VCC))) # (!\DATAPATH|X_REG|q\(0) & (\DATAPATH|Y_REG|q\(0) & VCC))
-- \DATAPATH|Y_REG|q[0]~25\ = CARRY((\DATAPATH|X_REG|q\(0) & \DATAPATH|Y_REG|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(0),
	datab => \DATAPATH|Y_REG|q\(0),
	datad => VCC,
	combout => \DATAPATH|Y_REG|q[0]~24_combout\,
	cout => \DATAPATH|Y_REG|q[0]~25\);

-- Location: LCCOMB_X65_Y44_N18
\FSM|y_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|y_en~combout\ = (\FSM|state.INIT~q\) # (\FSM|state.ADD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.INIT~q\,
	datac => \FSM|state.ADD~q\,
	combout => \FSM|y_en~combout\);

-- Location: FF_X66_Y44_N9
\DATAPATH|Y_REG|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[0]~24_combout\,
	asdata => VCC,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(0));

-- Location: LCCOMB_X67_Y44_N6
\DATAPATH|X_MUX|output[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[0]~20_combout\ = (\DATAPATH|Y_REG|q\(0) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(0),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[0]~20_combout\);

-- Location: FF_X67_Y44_N7
\DATAPATH|X_REG|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[0]~20_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(0));

-- Location: LCCOMB_X66_Y44_N10
\DATAPATH|Y_REG|q[1]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[1]~26_combout\ = (\DATAPATH|Y_REG|q\(1) & ((\DATAPATH|X_REG|q\(1) & (\DATAPATH|Y_REG|q[0]~25\ & VCC)) # (!\DATAPATH|X_REG|q\(1) & (!\DATAPATH|Y_REG|q[0]~25\)))) # (!\DATAPATH|Y_REG|q\(1) & ((\DATAPATH|X_REG|q\(1) & 
-- (!\DATAPATH|Y_REG|q[0]~25\)) # (!\DATAPATH|X_REG|q\(1) & ((\DATAPATH|Y_REG|q[0]~25\) # (GND)))))
-- \DATAPATH|Y_REG|q[1]~27\ = CARRY((\DATAPATH|Y_REG|q\(1) & (!\DATAPATH|X_REG|q\(1) & !\DATAPATH|Y_REG|q[0]~25\)) # (!\DATAPATH|Y_REG|q\(1) & ((!\DATAPATH|Y_REG|q[0]~25\) # (!\DATAPATH|X_REG|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(1),
	datab => \DATAPATH|X_REG|q\(1),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[0]~25\,
	combout => \DATAPATH|Y_REG|q[1]~26_combout\,
	cout => \DATAPATH|Y_REG|q[1]~27\);

-- Location: FF_X66_Y44_N11
\DATAPATH|Y_REG|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[1]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(1));

-- Location: LCCOMB_X66_Y44_N12
\DATAPATH|Y_REG|q[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[2]~28_combout\ = ((\DATAPATH|Y_REG|q\(2) $ (\DATAPATH|X_REG|q\(2) $ (!\DATAPATH|Y_REG|q[1]~27\)))) # (GND)
-- \DATAPATH|Y_REG|q[2]~29\ = CARRY((\DATAPATH|Y_REG|q\(2) & ((\DATAPATH|X_REG|q\(2)) # (!\DATAPATH|Y_REG|q[1]~27\))) # (!\DATAPATH|Y_REG|q\(2) & (\DATAPATH|X_REG|q\(2) & !\DATAPATH|Y_REG|q[1]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(2),
	datab => \DATAPATH|X_REG|q\(2),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[1]~27\,
	combout => \DATAPATH|Y_REG|q[2]~28_combout\,
	cout => \DATAPATH|Y_REG|q[2]~29\);

-- Location: FF_X66_Y44_N13
\DATAPATH|Y_REG|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[2]~28_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(2));

-- Location: LCCOMB_X66_Y44_N14
\DATAPATH|Y_REG|q[3]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[3]~30_combout\ = (\DATAPATH|X_REG|q\(3) & ((\DATAPATH|Y_REG|q\(3) & (\DATAPATH|Y_REG|q[2]~29\ & VCC)) # (!\DATAPATH|Y_REG|q\(3) & (!\DATAPATH|Y_REG|q[2]~29\)))) # (!\DATAPATH|X_REG|q\(3) & ((\DATAPATH|Y_REG|q\(3) & 
-- (!\DATAPATH|Y_REG|q[2]~29\)) # (!\DATAPATH|Y_REG|q\(3) & ((\DATAPATH|Y_REG|q[2]~29\) # (GND)))))
-- \DATAPATH|Y_REG|q[3]~31\ = CARRY((\DATAPATH|X_REG|q\(3) & (!\DATAPATH|Y_REG|q\(3) & !\DATAPATH|Y_REG|q[2]~29\)) # (!\DATAPATH|X_REG|q\(3) & ((!\DATAPATH|Y_REG|q[2]~29\) # (!\DATAPATH|Y_REG|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(3),
	datab => \DATAPATH|Y_REG|q\(3),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[2]~29\,
	combout => \DATAPATH|Y_REG|q[3]~30_combout\,
	cout => \DATAPATH|Y_REG|q[3]~31\);

-- Location: FF_X66_Y44_N15
\DATAPATH|Y_REG|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[3]~30_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(3));

-- Location: LCCOMB_X67_Y44_N4
\DATAPATH|X_MUX|output[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[3]~17_combout\ = (\DATAPATH|Y_REG|q\(3) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(3),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[3]~17_combout\);

-- Location: FF_X67_Y44_N5
\DATAPATH|X_REG|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[3]~17_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(3));

-- Location: LCCOMB_X66_Y44_N16
\DATAPATH|Y_REG|q[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[4]~32_combout\ = ((\DATAPATH|X_REG|q\(4) $ (\DATAPATH|Y_REG|q\(4) $ (!\DATAPATH|Y_REG|q[3]~31\)))) # (GND)
-- \DATAPATH|Y_REG|q[4]~33\ = CARRY((\DATAPATH|X_REG|q\(4) & ((\DATAPATH|Y_REG|q\(4)) # (!\DATAPATH|Y_REG|q[3]~31\))) # (!\DATAPATH|X_REG|q\(4) & (\DATAPATH|Y_REG|q\(4) & !\DATAPATH|Y_REG|q[3]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(4),
	datab => \DATAPATH|Y_REG|q\(4),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[3]~31\,
	combout => \DATAPATH|Y_REG|q[4]~32_combout\,
	cout => \DATAPATH|Y_REG|q[4]~33\);

-- Location: FF_X66_Y44_N17
\DATAPATH|Y_REG|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[4]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(4));

-- Location: LCCOMB_X66_Y44_N2
\DATAPATH|X_MUX|output[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[4]~16_combout\ = (\DATAPATH|Y_REG|q\(4) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|Y_REG|q\(4),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[4]~16_combout\);

-- Location: FF_X66_Y44_N3
\DATAPATH|X_REG|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[4]~16_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(4));

-- Location: LCCOMB_X66_Y44_N18
\DATAPATH|Y_REG|q[5]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[5]~34_combout\ = (\DATAPATH|Y_REG|q\(5) & ((\DATAPATH|X_REG|q\(5) & (\DATAPATH|Y_REG|q[4]~33\ & VCC)) # (!\DATAPATH|X_REG|q\(5) & (!\DATAPATH|Y_REG|q[4]~33\)))) # (!\DATAPATH|Y_REG|q\(5) & ((\DATAPATH|X_REG|q\(5) & 
-- (!\DATAPATH|Y_REG|q[4]~33\)) # (!\DATAPATH|X_REG|q\(5) & ((\DATAPATH|Y_REG|q[4]~33\) # (GND)))))
-- \DATAPATH|Y_REG|q[5]~35\ = CARRY((\DATAPATH|Y_REG|q\(5) & (!\DATAPATH|X_REG|q\(5) & !\DATAPATH|Y_REG|q[4]~33\)) # (!\DATAPATH|Y_REG|q\(5) & ((!\DATAPATH|Y_REG|q[4]~33\) # (!\DATAPATH|X_REG|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(5),
	datab => \DATAPATH|X_REG|q\(5),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[4]~33\,
	combout => \DATAPATH|Y_REG|q[5]~34_combout\,
	cout => \DATAPATH|Y_REG|q[5]~35\);

-- Location: FF_X66_Y44_N19
\DATAPATH|Y_REG|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[5]~34_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(5));

-- Location: LCCOMB_X66_Y44_N20
\DATAPATH|Y_REG|q[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[6]~36_combout\ = ((\DATAPATH|X_REG|q\(6) $ (\DATAPATH|Y_REG|q\(6) $ (!\DATAPATH|Y_REG|q[5]~35\)))) # (GND)
-- \DATAPATH|Y_REG|q[6]~37\ = CARRY((\DATAPATH|X_REG|q\(6) & ((\DATAPATH|Y_REG|q\(6)) # (!\DATAPATH|Y_REG|q[5]~35\))) # (!\DATAPATH|X_REG|q\(6) & (\DATAPATH|Y_REG|q\(6) & !\DATAPATH|Y_REG|q[5]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(6),
	datab => \DATAPATH|Y_REG|q\(6),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[5]~35\,
	combout => \DATAPATH|Y_REG|q[6]~36_combout\,
	cout => \DATAPATH|Y_REG|q[6]~37\);

-- Location: FF_X66_Y44_N21
\DATAPATH|Y_REG|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[6]~36_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(6));

-- Location: LCCOMB_X66_Y44_N6
\DATAPATH|X_MUX|output[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[6]~14_combout\ = (\DATAPATH|Y_REG|q\(6) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|Y_REG|q\(6),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[6]~14_combout\);

-- Location: FF_X66_Y44_N7
\DATAPATH|X_REG|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[6]~14_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(6));

-- Location: LCCOMB_X66_Y44_N22
\DATAPATH|Y_REG|q[7]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[7]~38_combout\ = (\DATAPATH|Y_REG|q\(7) & ((\DATAPATH|X_REG|q\(7) & (\DATAPATH|Y_REG|q[6]~37\ & VCC)) # (!\DATAPATH|X_REG|q\(7) & (!\DATAPATH|Y_REG|q[6]~37\)))) # (!\DATAPATH|Y_REG|q\(7) & ((\DATAPATH|X_REG|q\(7) & 
-- (!\DATAPATH|Y_REG|q[6]~37\)) # (!\DATAPATH|X_REG|q\(7) & ((\DATAPATH|Y_REG|q[6]~37\) # (GND)))))
-- \DATAPATH|Y_REG|q[7]~39\ = CARRY((\DATAPATH|Y_REG|q\(7) & (!\DATAPATH|X_REG|q\(7) & !\DATAPATH|Y_REG|q[6]~37\)) # (!\DATAPATH|Y_REG|q\(7) & ((!\DATAPATH|Y_REG|q[6]~37\) # (!\DATAPATH|X_REG|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(7),
	datab => \DATAPATH|X_REG|q\(7),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[6]~37\,
	combout => \DATAPATH|Y_REG|q[7]~38_combout\,
	cout => \DATAPATH|Y_REG|q[7]~39\);

-- Location: FF_X66_Y44_N23
\DATAPATH|Y_REG|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[7]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(7));

-- Location: LCCOMB_X66_Y44_N24
\DATAPATH|Y_REG|q[8]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[8]~40_combout\ = ((\DATAPATH|X_REG|q\(8) $ (\DATAPATH|Y_REG|q\(8) $ (!\DATAPATH|Y_REG|q[7]~39\)))) # (GND)
-- \DATAPATH|Y_REG|q[8]~41\ = CARRY((\DATAPATH|X_REG|q\(8) & ((\DATAPATH|Y_REG|q\(8)) # (!\DATAPATH|Y_REG|q[7]~39\))) # (!\DATAPATH|X_REG|q\(8) & (\DATAPATH|Y_REG|q\(8) & !\DATAPATH|Y_REG|q[7]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(8),
	datab => \DATAPATH|Y_REG|q\(8),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[7]~39\,
	combout => \DATAPATH|Y_REG|q[8]~40_combout\,
	cout => \DATAPATH|Y_REG|q[8]~41\);

-- Location: FF_X66_Y44_N25
\DATAPATH|Y_REG|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[8]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(8));

-- Location: LCCOMB_X65_Y44_N16
\DATAPATH|X_MUX|output[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[8]~12_combout\ = (!\FSM|state.INIT~q\ & \DATAPATH|Y_REG|q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.INIT~q\,
	datad => \DATAPATH|Y_REG|q\(8),
	combout => \DATAPATH|X_MUX|output[8]~12_combout\);

-- Location: FF_X65_Y44_N17
\DATAPATH|X_REG|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[8]~12_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(8));

-- Location: LCCOMB_X66_Y44_N26
\DATAPATH|Y_REG|q[9]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[9]~42_combout\ = (\DATAPATH|Y_REG|q\(9) & ((\DATAPATH|X_REG|q\(9) & (\DATAPATH|Y_REG|q[8]~41\ & VCC)) # (!\DATAPATH|X_REG|q\(9) & (!\DATAPATH|Y_REG|q[8]~41\)))) # (!\DATAPATH|Y_REG|q\(9) & ((\DATAPATH|X_REG|q\(9) & 
-- (!\DATAPATH|Y_REG|q[8]~41\)) # (!\DATAPATH|X_REG|q\(9) & ((\DATAPATH|Y_REG|q[8]~41\) # (GND)))))
-- \DATAPATH|Y_REG|q[9]~43\ = CARRY((\DATAPATH|Y_REG|q\(9) & (!\DATAPATH|X_REG|q\(9) & !\DATAPATH|Y_REG|q[8]~41\)) # (!\DATAPATH|Y_REG|q\(9) & ((!\DATAPATH|Y_REG|q[8]~41\) # (!\DATAPATH|X_REG|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(9),
	datab => \DATAPATH|X_REG|q\(9),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[8]~41\,
	combout => \DATAPATH|Y_REG|q[9]~42_combout\,
	cout => \DATAPATH|Y_REG|q[9]~43\);

-- Location: FF_X66_Y44_N27
\DATAPATH|Y_REG|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[9]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(9));

-- Location: LCCOMB_X66_Y44_N28
\DATAPATH|Y_REG|q[10]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[10]~44_combout\ = ((\DATAPATH|X_REG|q\(10) $ (\DATAPATH|Y_REG|q\(10) $ (!\DATAPATH|Y_REG|q[9]~43\)))) # (GND)
-- \DATAPATH|Y_REG|q[10]~45\ = CARRY((\DATAPATH|X_REG|q\(10) & ((\DATAPATH|Y_REG|q\(10)) # (!\DATAPATH|Y_REG|q[9]~43\))) # (!\DATAPATH|X_REG|q\(10) & (\DATAPATH|Y_REG|q\(10) & !\DATAPATH|Y_REG|q[9]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(10),
	datab => \DATAPATH|Y_REG|q\(10),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[9]~43\,
	combout => \DATAPATH|Y_REG|q[10]~44_combout\,
	cout => \DATAPATH|Y_REG|q[10]~45\);

-- Location: FF_X66_Y44_N29
\DATAPATH|Y_REG|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[10]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(10));

-- Location: LCCOMB_X65_Y44_N26
\DATAPATH|X_MUX|output[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[10]~10_combout\ = (!\FSM|state.INIT~q\ & \DATAPATH|Y_REG|q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.INIT~q\,
	datad => \DATAPATH|Y_REG|q\(10),
	combout => \DATAPATH|X_MUX|output[10]~10_combout\);

-- Location: FF_X65_Y44_N27
\DATAPATH|X_REG|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[10]~10_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(10));

-- Location: LCCOMB_X66_Y44_N30
\DATAPATH|Y_REG|q[11]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[11]~46_combout\ = (\DATAPATH|Y_REG|q\(11) & ((\DATAPATH|X_REG|q\(11) & (\DATAPATH|Y_REG|q[10]~45\ & VCC)) # (!\DATAPATH|X_REG|q\(11) & (!\DATAPATH|Y_REG|q[10]~45\)))) # (!\DATAPATH|Y_REG|q\(11) & ((\DATAPATH|X_REG|q\(11) & 
-- (!\DATAPATH|Y_REG|q[10]~45\)) # (!\DATAPATH|X_REG|q\(11) & ((\DATAPATH|Y_REG|q[10]~45\) # (GND)))))
-- \DATAPATH|Y_REG|q[11]~47\ = CARRY((\DATAPATH|Y_REG|q\(11) & (!\DATAPATH|X_REG|q\(11) & !\DATAPATH|Y_REG|q[10]~45\)) # (!\DATAPATH|Y_REG|q\(11) & ((!\DATAPATH|Y_REG|q[10]~45\) # (!\DATAPATH|X_REG|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(11),
	datab => \DATAPATH|X_REG|q\(11),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[10]~45\,
	combout => \DATAPATH|Y_REG|q[11]~46_combout\,
	cout => \DATAPATH|Y_REG|q[11]~47\);

-- Location: FF_X66_Y44_N31
\DATAPATH|Y_REG|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[11]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(11));

-- Location: LCCOMB_X66_Y43_N0
\DATAPATH|Y_REG|q[12]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[12]~48_combout\ = ((\DATAPATH|X_REG|q\(12) $ (\DATAPATH|Y_REG|q\(12) $ (!\DATAPATH|Y_REG|q[11]~47\)))) # (GND)
-- \DATAPATH|Y_REG|q[12]~49\ = CARRY((\DATAPATH|X_REG|q\(12) & ((\DATAPATH|Y_REG|q\(12)) # (!\DATAPATH|Y_REG|q[11]~47\))) # (!\DATAPATH|X_REG|q\(12) & (\DATAPATH|Y_REG|q\(12) & !\DATAPATH|Y_REG|q[11]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(12),
	datab => \DATAPATH|Y_REG|q\(12),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[11]~47\,
	combout => \DATAPATH|Y_REG|q[12]~48_combout\,
	cout => \DATAPATH|Y_REG|q[12]~49\);

-- Location: FF_X66_Y43_N1
\DATAPATH|Y_REG|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[12]~48_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(12));

-- Location: LCCOMB_X66_Y43_N30
\DATAPATH|X_MUX|output[12]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[12]~8_combout\ = (\DATAPATH|Y_REG|q\(12) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|Y_REG|q\(12),
	datac => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[12]~8_combout\);

-- Location: FF_X66_Y43_N31
\DATAPATH|X_REG|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[12]~8_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(12));

-- Location: LCCOMB_X66_Y43_N2
\DATAPATH|Y_REG|q[13]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[13]~50_combout\ = (\DATAPATH|X_REG|q\(13) & ((\DATAPATH|Y_REG|q\(13) & (\DATAPATH|Y_REG|q[12]~49\ & VCC)) # (!\DATAPATH|Y_REG|q\(13) & (!\DATAPATH|Y_REG|q[12]~49\)))) # (!\DATAPATH|X_REG|q\(13) & ((\DATAPATH|Y_REG|q\(13) & 
-- (!\DATAPATH|Y_REG|q[12]~49\)) # (!\DATAPATH|Y_REG|q\(13) & ((\DATAPATH|Y_REG|q[12]~49\) # (GND)))))
-- \DATAPATH|Y_REG|q[13]~51\ = CARRY((\DATAPATH|X_REG|q\(13) & (!\DATAPATH|Y_REG|q\(13) & !\DATAPATH|Y_REG|q[12]~49\)) # (!\DATAPATH|X_REG|q\(13) & ((!\DATAPATH|Y_REG|q[12]~49\) # (!\DATAPATH|Y_REG|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(13),
	datab => \DATAPATH|Y_REG|q\(13),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[12]~49\,
	combout => \DATAPATH|Y_REG|q[13]~50_combout\,
	cout => \DATAPATH|Y_REG|q[13]~51\);

-- Location: FF_X66_Y43_N3
\DATAPATH|Y_REG|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[13]~50_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(13));

-- Location: LCCOMB_X66_Y43_N28
\DATAPATH|X_MUX|output[13]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[13]~7_combout\ = (\DATAPATH|Y_REG|q\(13) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|Y_REG|q\(13),
	datac => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[13]~7_combout\);

-- Location: FF_X66_Y43_N29
\DATAPATH|X_REG|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[13]~7_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(13));

-- Location: LCCOMB_X66_Y43_N4
\DATAPATH|Y_REG|q[14]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[14]~52_combout\ = ((\DATAPATH|X_REG|q\(14) $ (\DATAPATH|Y_REG|q\(14) $ (!\DATAPATH|Y_REG|q[13]~51\)))) # (GND)
-- \DATAPATH|Y_REG|q[14]~53\ = CARRY((\DATAPATH|X_REG|q\(14) & ((\DATAPATH|Y_REG|q\(14)) # (!\DATAPATH|Y_REG|q[13]~51\))) # (!\DATAPATH|X_REG|q\(14) & (\DATAPATH|Y_REG|q\(14) & !\DATAPATH|Y_REG|q[13]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(14),
	datab => \DATAPATH|Y_REG|q\(14),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[13]~51\,
	combout => \DATAPATH|Y_REG|q[14]~52_combout\,
	cout => \DATAPATH|Y_REG|q[14]~53\);

-- Location: FF_X66_Y43_N5
\DATAPATH|Y_REG|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[14]~52_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(14));

-- Location: LCCOMB_X66_Y43_N26
\DATAPATH|X_MUX|output[14]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[14]~6_combout\ = (!\FSM|state.INIT~q\ & \DATAPATH|Y_REG|q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.INIT~q\,
	datac => \DATAPATH|Y_REG|q\(14),
	combout => \DATAPATH|X_MUX|output[14]~6_combout\);

-- Location: FF_X66_Y43_N27
\DATAPATH|X_REG|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[14]~6_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(14));

-- Location: LCCOMB_X66_Y43_N6
\DATAPATH|Y_REG|q[15]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[15]~54_combout\ = (\DATAPATH|Y_REG|q\(15) & ((\DATAPATH|X_REG|q\(15) & (\DATAPATH|Y_REG|q[14]~53\ & VCC)) # (!\DATAPATH|X_REG|q\(15) & (!\DATAPATH|Y_REG|q[14]~53\)))) # (!\DATAPATH|Y_REG|q\(15) & ((\DATAPATH|X_REG|q\(15) & 
-- (!\DATAPATH|Y_REG|q[14]~53\)) # (!\DATAPATH|X_REG|q\(15) & ((\DATAPATH|Y_REG|q[14]~53\) # (GND)))))
-- \DATAPATH|Y_REG|q[15]~55\ = CARRY((\DATAPATH|Y_REG|q\(15) & (!\DATAPATH|X_REG|q\(15) & !\DATAPATH|Y_REG|q[14]~53\)) # (!\DATAPATH|Y_REG|q\(15) & ((!\DATAPATH|Y_REG|q[14]~53\) # (!\DATAPATH|X_REG|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(15),
	datab => \DATAPATH|X_REG|q\(15),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[14]~53\,
	combout => \DATAPATH|Y_REG|q[15]~54_combout\,
	cout => \DATAPATH|Y_REG|q[15]~55\);

-- Location: FF_X66_Y43_N7
\DATAPATH|Y_REG|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[15]~54_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(15));

-- Location: LCCOMB_X66_Y43_N8
\DATAPATH|Y_REG|q[16]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[16]~56_combout\ = ((\DATAPATH|X_REG|q\(16) $ (\DATAPATH|Y_REG|q\(16) $ (!\DATAPATH|Y_REG|q[15]~55\)))) # (GND)
-- \DATAPATH|Y_REG|q[16]~57\ = CARRY((\DATAPATH|X_REG|q\(16) & ((\DATAPATH|Y_REG|q\(16)) # (!\DATAPATH|Y_REG|q[15]~55\))) # (!\DATAPATH|X_REG|q\(16) & (\DATAPATH|Y_REG|q\(16) & !\DATAPATH|Y_REG|q[15]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(16),
	datab => \DATAPATH|Y_REG|q\(16),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[15]~55\,
	combout => \DATAPATH|Y_REG|q[16]~56_combout\,
	cout => \DATAPATH|Y_REG|q[16]~57\);

-- Location: FF_X66_Y43_N9
\DATAPATH|Y_REG|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[16]~56_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(16));

-- Location: LCCOMB_X65_Y43_N0
\DATAPATH|X_MUX|output[16]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[16]~4_combout\ = (\DATAPATH|Y_REG|q\(16) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(16),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[16]~4_combout\);

-- Location: FF_X65_Y43_N1
\DATAPATH|X_REG|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[16]~4_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(16));

-- Location: LCCOMB_X66_Y43_N10
\DATAPATH|Y_REG|q[17]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[17]~58_combout\ = (\DATAPATH|Y_REG|q\(17) & ((\DATAPATH|X_REG|q\(17) & (\DATAPATH|Y_REG|q[16]~57\ & VCC)) # (!\DATAPATH|X_REG|q\(17) & (!\DATAPATH|Y_REG|q[16]~57\)))) # (!\DATAPATH|Y_REG|q\(17) & ((\DATAPATH|X_REG|q\(17) & 
-- (!\DATAPATH|Y_REG|q[16]~57\)) # (!\DATAPATH|X_REG|q\(17) & ((\DATAPATH|Y_REG|q[16]~57\) # (GND)))))
-- \DATAPATH|Y_REG|q[17]~59\ = CARRY((\DATAPATH|Y_REG|q\(17) & (!\DATAPATH|X_REG|q\(17) & !\DATAPATH|Y_REG|q[16]~57\)) # (!\DATAPATH|Y_REG|q\(17) & ((!\DATAPATH|Y_REG|q[16]~57\) # (!\DATAPATH|X_REG|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(17),
	datab => \DATAPATH|X_REG|q\(17),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[16]~57\,
	combout => \DATAPATH|Y_REG|q[17]~58_combout\,
	cout => \DATAPATH|Y_REG|q[17]~59\);

-- Location: FF_X66_Y43_N11
\DATAPATH|Y_REG|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[17]~58_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(17));

-- Location: LCCOMB_X66_Y43_N12
\DATAPATH|Y_REG|q[18]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[18]~60_combout\ = ((\DATAPATH|Y_REG|q\(18) $ (\DATAPATH|X_REG|q\(18) $ (!\DATAPATH|Y_REG|q[17]~59\)))) # (GND)
-- \DATAPATH|Y_REG|q[18]~61\ = CARRY((\DATAPATH|Y_REG|q\(18) & ((\DATAPATH|X_REG|q\(18)) # (!\DATAPATH|Y_REG|q[17]~59\))) # (!\DATAPATH|Y_REG|q\(18) & (\DATAPATH|X_REG|q\(18) & !\DATAPATH|Y_REG|q[17]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(18),
	datab => \DATAPATH|X_REG|q\(18),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[17]~59\,
	combout => \DATAPATH|Y_REG|q[18]~60_combout\,
	cout => \DATAPATH|Y_REG|q[18]~61\);

-- Location: FF_X66_Y43_N13
\DATAPATH|Y_REG|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[18]~60_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(18));

-- Location: LCCOMB_X66_Y43_N14
\DATAPATH|Y_REG|q[19]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[19]~62_combout\ = (\DATAPATH|X_REG|q\(19) & ((\DATAPATH|Y_REG|q\(19) & (\DATAPATH|Y_REG|q[18]~61\ & VCC)) # (!\DATAPATH|Y_REG|q\(19) & (!\DATAPATH|Y_REG|q[18]~61\)))) # (!\DATAPATH|X_REG|q\(19) & ((\DATAPATH|Y_REG|q\(19) & 
-- (!\DATAPATH|Y_REG|q[18]~61\)) # (!\DATAPATH|Y_REG|q\(19) & ((\DATAPATH|Y_REG|q[18]~61\) # (GND)))))
-- \DATAPATH|Y_REG|q[19]~63\ = CARRY((\DATAPATH|X_REG|q\(19) & (!\DATAPATH|Y_REG|q\(19) & !\DATAPATH|Y_REG|q[18]~61\)) # (!\DATAPATH|X_REG|q\(19) & ((!\DATAPATH|Y_REG|q[18]~61\) # (!\DATAPATH|Y_REG|q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(19),
	datab => \DATAPATH|Y_REG|q\(19),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[18]~61\,
	combout => \DATAPATH|Y_REG|q[19]~62_combout\,
	cout => \DATAPATH|Y_REG|q[19]~63\);

-- Location: FF_X66_Y43_N15
\DATAPATH|Y_REG|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[19]~62_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(19));

-- Location: LCCOMB_X65_Y43_N2
\DATAPATH|X_MUX|output[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[19]~1_combout\ = (\DATAPATH|Y_REG|q\(19) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(19),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[19]~1_combout\);

-- Location: FF_X65_Y43_N3
\DATAPATH|X_REG|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[19]~1_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(19));

-- Location: LCCOMB_X66_Y43_N16
\DATAPATH|Y_REG|q[20]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[20]~64_combout\ = ((\DATAPATH|X_REG|q\(20) $ (\DATAPATH|Y_REG|q\(20) $ (!\DATAPATH|Y_REG|q[19]~63\)))) # (GND)
-- \DATAPATH|Y_REG|q[20]~65\ = CARRY((\DATAPATH|X_REG|q\(20) & ((\DATAPATH|Y_REG|q\(20)) # (!\DATAPATH|Y_REG|q[19]~63\))) # (!\DATAPATH|X_REG|q\(20) & (\DATAPATH|Y_REG|q\(20) & !\DATAPATH|Y_REG|q[19]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(20),
	datab => \DATAPATH|Y_REG|q\(20),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[19]~63\,
	combout => \DATAPATH|Y_REG|q[20]~64_combout\,
	cout => \DATAPATH|Y_REG|q[20]~65\);

-- Location: FF_X66_Y43_N17
\DATAPATH|Y_REG|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[20]~64_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(20));

-- Location: LCCOMB_X66_Y42_N8
\DATAPATH|RESULT_MUX|output[20]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[20]~0_combout\ = (\DATAPATH|Y_REG|q\(20) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(20),
	datad => \FSM|result_sel~1_combout\,
	combout => \DATAPATH|RESULT_MUX|output[20]~0_combout\);

-- Location: LCCOMB_X65_Y43_N16
\DATAPATH|X_MUX|output[22]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[22]~22_combout\ = (\DATAPATH|Y_REG|q\(22) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(22),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[22]~22_combout\);

-- Location: FF_X65_Y43_N17
\DATAPATH|X_REG|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[22]~22_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(22));

-- Location: LCCOMB_X66_Y43_N18
\DATAPATH|Y_REG|q[21]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[21]~66_combout\ = (\DATAPATH|X_REG|q\(21) & ((\DATAPATH|Y_REG|q\(21) & (\DATAPATH|Y_REG|q[20]~65\ & VCC)) # (!\DATAPATH|Y_REG|q\(21) & (!\DATAPATH|Y_REG|q[20]~65\)))) # (!\DATAPATH|X_REG|q\(21) & ((\DATAPATH|Y_REG|q\(21) & 
-- (!\DATAPATH|Y_REG|q[20]~65\)) # (!\DATAPATH|Y_REG|q\(21) & ((\DATAPATH|Y_REG|q[20]~65\) # (GND)))))
-- \DATAPATH|Y_REG|q[21]~67\ = CARRY((\DATAPATH|X_REG|q\(21) & (!\DATAPATH|Y_REG|q\(21) & !\DATAPATH|Y_REG|q[20]~65\)) # (!\DATAPATH|X_REG|q\(21) & ((!\DATAPATH|Y_REG|q[20]~65\) # (!\DATAPATH|Y_REG|q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(21),
	datab => \DATAPATH|Y_REG|q\(21),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[20]~65\,
	combout => \DATAPATH|Y_REG|q[21]~66_combout\,
	cout => \DATAPATH|Y_REG|q[21]~67\);

-- Location: FF_X66_Y43_N19
\DATAPATH|Y_REG|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[21]~66_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(21));

-- Location: LCCOMB_X65_Y43_N10
\DATAPATH|X_MUX|output[21]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[21]~23_combout\ = (\DATAPATH|Y_REG|q\(21) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|Y_REG|q\(21),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[21]~23_combout\);

-- Location: FF_X65_Y43_N11
\DATAPATH|X_REG|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[21]~23_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(21));

-- Location: LCCOMB_X66_Y43_N20
\DATAPATH|Y_REG|q[22]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[22]~68_combout\ = ((\DATAPATH|X_REG|q\(22) $ (\DATAPATH|Y_REG|q\(22) $ (!\DATAPATH|Y_REG|q[21]~67\)))) # (GND)
-- \DATAPATH|Y_REG|q[22]~69\ = CARRY((\DATAPATH|X_REG|q\(22) & ((\DATAPATH|Y_REG|q\(22)) # (!\DATAPATH|Y_REG|q[21]~67\))) # (!\DATAPATH|X_REG|q\(22) & (\DATAPATH|Y_REG|q\(22) & !\DATAPATH|Y_REG|q[21]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(22),
	datab => \DATAPATH|Y_REG|q\(22),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[21]~67\,
	combout => \DATAPATH|Y_REG|q[22]~68_combout\,
	cout => \DATAPATH|Y_REG|q[22]~69\);

-- Location: FF_X66_Y43_N21
\DATAPATH|Y_REG|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[22]~68_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(22));

-- Location: LCCOMB_X66_Y42_N4
\DATAPATH|RESULT_MUX|output[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[22]~1_combout\ = (\DATAPATH|Y_REG|q\(22) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(22),
	datad => \FSM|result_sel~1_combout\,
	combout => \DATAPATH|RESULT_MUX|output[22]~1_combout\);

-- Location: LCCOMB_X66_Y42_N26
\DATAPATH|RESULT_MUX|output[21]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[21]~2_combout\ = (\DATAPATH|Y_REG|q\(21) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(21),
	datad => \FSM|result_sel~1_combout\,
	combout => \DATAPATH|RESULT_MUX|output[21]~2_combout\);

-- Location: LCCOMB_X65_Y43_N14
\DATAPATH|X_MUX|output[23]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_MUX|output[23]~21_combout\ = (\DATAPATH|Y_REG|q\(23) & !\FSM|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(23),
	datad => \FSM|state.INIT~q\,
	combout => \DATAPATH|X_MUX|output[23]~21_combout\);

-- Location: FF_X65_Y43_N15
\DATAPATH|X_REG|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_MUX|output[23]~21_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|i_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(23));

-- Location: LCCOMB_X66_Y43_N22
\DATAPATH|Y_REG|q[23]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[23]~70_combout\ = \DATAPATH|X_REG|q\(23) $ (\DATAPATH|Y_REG|q[22]~69\ $ (\DATAPATH|Y_REG|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(23),
	datad => \DATAPATH|Y_REG|q\(23),
	cin => \DATAPATH|Y_REG|q[22]~69\,
	combout => \DATAPATH|Y_REG|q[23]~70_combout\);

-- Location: FF_X66_Y43_N23
\DATAPATH|Y_REG|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[23]~70_combout\,
	asdata => \~GND~combout\,
	clrn => \button[0]~input_o\,
	sload => \FSM|state.INIT~q\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(23));

-- Location: LCCOMB_X66_Y42_N18
\U_LED0|output[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[0]~8_combout\ = (!\FSM|result_sel~1_combout\ & \DATAPATH|Y_REG|q\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|result_sel~1_combout\,
	datad => \DATAPATH|Y_REG|q\(23),
	combout => \U_LED0|output[0]~8_combout\);

-- Location: LCCOMB_X66_Y42_N16
\U_LED0|output[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[0]~9_combout\ = (\DATAPATH|RESULT_MUX|output[22]~1_combout\ & (!\DATAPATH|RESULT_MUX|output[21]~2_combout\ & (\DATAPATH|RESULT_MUX|output[20]~0_combout\ $ (!\U_LED0|output[0]~8_combout\)))) # (!\DATAPATH|RESULT_MUX|output[22]~1_combout\ & 
-- (\DATAPATH|RESULT_MUX|output[20]~0_combout\ & (\DATAPATH|RESULT_MUX|output[21]~2_combout\ $ (!\U_LED0|output[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[20]~0_combout\,
	datab => \DATAPATH|RESULT_MUX|output[22]~1_combout\,
	datac => \DATAPATH|RESULT_MUX|output[21]~2_combout\,
	datad => \U_LED0|output[0]~8_combout\,
	combout => \U_LED0|output[0]~9_combout\);

-- Location: LCCOMB_X77_Y42_N16
\U_LED0|output[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[1]~10_combout\ = (\DATAPATH|RESULT_MUX|output[21]~2_combout\ & ((\DATAPATH|RESULT_MUX|output[20]~0_combout\ & ((\U_LED0|output[0]~8_combout\))) # (!\DATAPATH|RESULT_MUX|output[20]~0_combout\ & (\DATAPATH|RESULT_MUX|output[22]~1_combout\)))) 
-- # (!\DATAPATH|RESULT_MUX|output[21]~2_combout\ & (\DATAPATH|RESULT_MUX|output[22]~1_combout\ & (\DATAPATH|RESULT_MUX|output[20]~0_combout\ $ (\U_LED0|output[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[21]~2_combout\,
	datab => \DATAPATH|RESULT_MUX|output[22]~1_combout\,
	datac => \DATAPATH|RESULT_MUX|output[20]~0_combout\,
	datad => \U_LED0|output[0]~8_combout\,
	combout => \U_LED0|output[1]~10_combout\);

-- Location: LCCOMB_X66_Y42_N22
\U_LED0|output[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[2]~16_combout\ = (\DATAPATH|Y_REG|q\(21) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(21),
	datad => \FSM|result_sel~1_combout\,
	combout => \U_LED0|output[2]~16_combout\);

-- Location: LCCOMB_X66_Y42_N14
\U_LED0|output[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[2]~11_combout\ = (\DATAPATH|RESULT_MUX|output[22]~1_combout\ & (\U_LED0|output[0]~8_combout\ & ((\U_LED0|output[2]~16_combout\) # (!\DATAPATH|Y_REG|q\(20))))) # (!\DATAPATH|RESULT_MUX|output[22]~1_combout\ & (\U_LED0|output[2]~16_combout\ & 
-- (!\DATAPATH|Y_REG|q\(20) & !\U_LED0|output[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED0|output[2]~16_combout\,
	datab => \DATAPATH|RESULT_MUX|output[22]~1_combout\,
	datac => \DATAPATH|Y_REG|q\(20),
	datad => \U_LED0|output[0]~8_combout\,
	combout => \U_LED0|output[2]~11_combout\);

-- Location: LCCOMB_X66_Y42_N24
\U_LED0|output[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[3]~12_combout\ = (\DATAPATH|RESULT_MUX|output[21]~2_combout\ & ((\DATAPATH|RESULT_MUX|output[20]~0_combout\ & (\DATAPATH|RESULT_MUX|output[22]~1_combout\)) # (!\DATAPATH|RESULT_MUX|output[20]~0_combout\ & 
-- (!\DATAPATH|RESULT_MUX|output[22]~1_combout\ & \U_LED0|output[0]~8_combout\)))) # (!\DATAPATH|RESULT_MUX|output[21]~2_combout\ & (!\U_LED0|output[0]~8_combout\ & (\DATAPATH|RESULT_MUX|output[20]~0_combout\ $ (\DATAPATH|RESULT_MUX|output[22]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[20]~0_combout\,
	datab => \DATAPATH|RESULT_MUX|output[22]~1_combout\,
	datac => \DATAPATH|RESULT_MUX|output[21]~2_combout\,
	datad => \U_LED0|output[0]~8_combout\,
	combout => \U_LED0|output[3]~12_combout\);

-- Location: LCCOMB_X77_Y42_N6
\U_LED0|output[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[4]~13_combout\ = (\DATAPATH|RESULT_MUX|output[21]~2_combout\ & (((\DATAPATH|RESULT_MUX|output[20]~0_combout\ & !\U_LED0|output[0]~8_combout\)))) # (!\DATAPATH|RESULT_MUX|output[21]~2_combout\ & ((\DATAPATH|RESULT_MUX|output[22]~1_combout\ & 
-- ((!\U_LED0|output[0]~8_combout\))) # (!\DATAPATH|RESULT_MUX|output[22]~1_combout\ & (\DATAPATH|RESULT_MUX|output[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[21]~2_combout\,
	datab => \DATAPATH|RESULT_MUX|output[22]~1_combout\,
	datac => \DATAPATH|RESULT_MUX|output[20]~0_combout\,
	datad => \U_LED0|output[0]~8_combout\,
	combout => \U_LED0|output[4]~13_combout\);

-- Location: LCCOMB_X66_Y42_N2
\U_LED0|output[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[5]~14_combout\ = (\DATAPATH|RESULT_MUX|output[20]~0_combout\ & (\U_LED0|output[0]~8_combout\ $ (((\DATAPATH|RESULT_MUX|output[21]~2_combout\) # (!\DATAPATH|RESULT_MUX|output[22]~1_combout\))))) # (!\DATAPATH|RESULT_MUX|output[20]~0_combout\ 
-- & (!\DATAPATH|RESULT_MUX|output[22]~1_combout\ & (\DATAPATH|RESULT_MUX|output[21]~2_combout\ & !\U_LED0|output[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[20]~0_combout\,
	datab => \DATAPATH|RESULT_MUX|output[22]~1_combout\,
	datac => \DATAPATH|RESULT_MUX|output[21]~2_combout\,
	datad => \U_LED0|output[0]~8_combout\,
	combout => \U_LED0|output[5]~14_combout\);

-- Location: LCCOMB_X66_Y42_N20
\U_LED0|output[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[6]~15_combout\ = (\DATAPATH|RESULT_MUX|output[20]~0_combout\ & (!\U_LED0|output[0]~8_combout\ & (\DATAPATH|RESULT_MUX|output[22]~1_combout\ $ (!\DATAPATH|RESULT_MUX|output[21]~2_combout\)))) # (!\DATAPATH|RESULT_MUX|output[20]~0_combout\ & 
-- (!\DATAPATH|RESULT_MUX|output[21]~2_combout\ & (\DATAPATH|RESULT_MUX|output[22]~1_combout\ $ (!\U_LED0|output[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[20]~0_combout\,
	datab => \DATAPATH|RESULT_MUX|output[22]~1_combout\,
	datac => \DATAPATH|RESULT_MUX|output[21]~2_combout\,
	datad => \U_LED0|output[0]~8_combout\,
	combout => \U_LED0|output[6]~15_combout\);

-- Location: LCCOMB_X64_Y44_N0
\FSM|done\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|done~combout\ = (\FSM|state.RESTART~q\) # (\FSM|state.DONE_STATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.RESTART~q\,
	datad => \FSM|state.DONE_STATE~q\,
	combout => \FSM|done~combout\);

-- Location: LCCOMB_X67_Y43_N6
\DATAPATH|RESULT_MUX|output[17]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[17]~5_combout\ = (!\FSM|result_sel~1_combout\ & \DATAPATH|Y_REG|q\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~1_combout\,
	datad => \DATAPATH|Y_REG|q\(17),
	combout => \DATAPATH|RESULT_MUX|output[17]~5_combout\);

-- Location: LCCOMB_X67_Y43_N22
\U_LED1|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[0]~0_combout\ = (!\FSM|result_sel~1_combout\ & \DATAPATH|Y_REG|q\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~1_combout\,
	datad => \DATAPATH|Y_REG|q\(19),
	combout => \U_LED1|output[0]~0_combout\);

-- Location: LCCOMB_X67_Y43_N8
\DATAPATH|RESULT_MUX|output[18]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[18]~4_combout\ = (!\FSM|result_sel~1_combout\ & \DATAPATH|Y_REG|q\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~1_combout\,
	datad => \DATAPATH|Y_REG|q\(18),
	combout => \DATAPATH|RESULT_MUX|output[18]~4_combout\);

-- Location: LCCOMB_X67_Y43_N24
\DATAPATH|RESULT_MUX|output[16]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[16]~3_combout\ = (!\FSM|result_sel~1_combout\ & \DATAPATH|Y_REG|q\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~1_combout\,
	datad => \DATAPATH|Y_REG|q\(16),
	combout => \DATAPATH|RESULT_MUX|output[16]~3_combout\);

-- Location: LCCOMB_X67_Y43_N28
\U_LED1|output[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[0]~1_combout\ = (\U_LED1|output[0]~0_combout\ & (\DATAPATH|RESULT_MUX|output[16]~3_combout\ & (\DATAPATH|RESULT_MUX|output[17]~5_combout\ $ (\DATAPATH|RESULT_MUX|output[18]~4_combout\)))) # (!\U_LED1|output[0]~0_combout\ & 
-- (!\DATAPATH|RESULT_MUX|output[17]~5_combout\ & (\DATAPATH|RESULT_MUX|output[18]~4_combout\ $ (\DATAPATH|RESULT_MUX|output[16]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[17]~5_combout\,
	datab => \U_LED1|output[0]~0_combout\,
	datac => \DATAPATH|RESULT_MUX|output[18]~4_combout\,
	datad => \DATAPATH|RESULT_MUX|output[16]~3_combout\,
	combout => \U_LED1|output[0]~1_combout\);

-- Location: LCCOMB_X67_Y43_N10
\U_LED1|output[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[1]~2_combout\ = (\DATAPATH|RESULT_MUX|output[17]~5_combout\ & ((\DATAPATH|RESULT_MUX|output[16]~3_combout\ & (\U_LED1|output[0]~0_combout\)) # (!\DATAPATH|RESULT_MUX|output[16]~3_combout\ & ((\DATAPATH|RESULT_MUX|output[18]~4_combout\))))) 
-- # (!\DATAPATH|RESULT_MUX|output[17]~5_combout\ & (\DATAPATH|RESULT_MUX|output[18]~4_combout\ & (\U_LED1|output[0]~0_combout\ $ (\DATAPATH|RESULT_MUX|output[16]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[17]~5_combout\,
	datab => \U_LED1|output[0]~0_combout\,
	datac => \DATAPATH|RESULT_MUX|output[18]~4_combout\,
	datad => \DATAPATH|RESULT_MUX|output[16]~3_combout\,
	combout => \U_LED1|output[1]~2_combout\);

-- Location: LCCOMB_X67_Y43_N12
\U_LED1|output[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[2]~3_combout\ = (!\DATAPATH|Y_REG|q\(16) & (!\U_LED1|output[0]~0_combout\ & (!\DATAPATH|RESULT_MUX|output[18]~4_combout\ & \DATAPATH|RESULT_MUX|output[17]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(16),
	datab => \U_LED1|output[0]~0_combout\,
	datac => \DATAPATH|RESULT_MUX|output[18]~4_combout\,
	datad => \DATAPATH|RESULT_MUX|output[17]~5_combout\,
	combout => \U_LED1|output[2]~3_combout\);

-- Location: LCCOMB_X67_Y43_N26
\U_LED1|output[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[1]~4_combout\ = (\DATAPATH|Y_REG|q\(19) & (!\FSM|result_sel~1_combout\ & \DATAPATH|Y_REG|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(19),
	datac => \FSM|result_sel~1_combout\,
	datad => \DATAPATH|Y_REG|q\(18),
	combout => \U_LED1|output[1]~4_combout\);

-- Location: LCCOMB_X67_Y43_N16
\U_LED1|output[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[2]~5_combout\ = (\U_LED1|output[2]~3_combout\) # ((\U_LED1|output[1]~4_combout\ & ((\DATAPATH|RESULT_MUX|output[17]~5_combout\) # (!\DATAPATH|RESULT_MUX|output[16]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED1|output[2]~3_combout\,
	datab => \DATAPATH|RESULT_MUX|output[16]~3_combout\,
	datac => \U_LED1|output[1]~4_combout\,
	datad => \DATAPATH|RESULT_MUX|output[17]~5_combout\,
	combout => \U_LED1|output[2]~5_combout\);

-- Location: LCCOMB_X67_Y43_N30
\U_LED1|output[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[3]~6_combout\ = (\DATAPATH|RESULT_MUX|output[17]~5_combout\ & ((\DATAPATH|RESULT_MUX|output[18]~4_combout\ & ((\DATAPATH|RESULT_MUX|output[16]~3_combout\))) # (!\DATAPATH|RESULT_MUX|output[18]~4_combout\ & (\U_LED1|output[0]~0_combout\ & 
-- !\DATAPATH|RESULT_MUX|output[16]~3_combout\)))) # (!\DATAPATH|RESULT_MUX|output[17]~5_combout\ & (!\U_LED1|output[0]~0_combout\ & (\DATAPATH|RESULT_MUX|output[18]~4_combout\ $ (\DATAPATH|RESULT_MUX|output[16]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[17]~5_combout\,
	datab => \U_LED1|output[0]~0_combout\,
	datac => \DATAPATH|RESULT_MUX|output[18]~4_combout\,
	datad => \DATAPATH|RESULT_MUX|output[16]~3_combout\,
	combout => \U_LED1|output[3]~6_combout\);

-- Location: LCCOMB_X67_Y43_N20
\U_LED1|output[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[4]~7_combout\ = (\DATAPATH|RESULT_MUX|output[17]~5_combout\ & (!\U_LED1|output[0]~0_combout\ & ((\DATAPATH|RESULT_MUX|output[16]~3_combout\)))) # (!\DATAPATH|RESULT_MUX|output[17]~5_combout\ & ((\DATAPATH|RESULT_MUX|output[18]~4_combout\ & 
-- (!\U_LED1|output[0]~0_combout\)) # (!\DATAPATH|RESULT_MUX|output[18]~4_combout\ & ((\DATAPATH|RESULT_MUX|output[16]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[17]~5_combout\,
	datab => \U_LED1|output[0]~0_combout\,
	datac => \DATAPATH|RESULT_MUX|output[18]~4_combout\,
	datad => \DATAPATH|RESULT_MUX|output[16]~3_combout\,
	combout => \U_LED1|output[4]~7_combout\);

-- Location: LCCOMB_X67_Y43_N14
\U_LED1|output[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[5]~8_combout\ = (\DATAPATH|RESULT_MUX|output[17]~5_combout\ & (!\U_LED1|output[0]~0_combout\ & ((\DATAPATH|RESULT_MUX|output[16]~3_combout\) # (!\DATAPATH|RESULT_MUX|output[18]~4_combout\)))) # (!\DATAPATH|RESULT_MUX|output[17]~5_combout\ & 
-- (\DATAPATH|RESULT_MUX|output[16]~3_combout\ & (\U_LED1|output[0]~0_combout\ $ (!\DATAPATH|RESULT_MUX|output[18]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[17]~5_combout\,
	datab => \U_LED1|output[0]~0_combout\,
	datac => \DATAPATH|RESULT_MUX|output[18]~4_combout\,
	datad => \DATAPATH|RESULT_MUX|output[16]~3_combout\,
	combout => \U_LED1|output[5]~8_combout\);

-- Location: LCCOMB_X67_Y43_N4
\U_LED1|output[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[6]~9_combout\ = (\DATAPATH|RESULT_MUX|output[16]~3_combout\ & (!\U_LED1|output[0]~0_combout\ & (\DATAPATH|RESULT_MUX|output[17]~5_combout\ $ (!\DATAPATH|RESULT_MUX|output[18]~4_combout\)))) # (!\DATAPATH|RESULT_MUX|output[16]~3_combout\ & 
-- (!\DATAPATH|RESULT_MUX|output[17]~5_combout\ & (\U_LED1|output[0]~0_combout\ $ (!\DATAPATH|RESULT_MUX|output[18]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[17]~5_combout\,
	datab => \U_LED1|output[0]~0_combout\,
	datac => \DATAPATH|RESULT_MUX|output[18]~4_combout\,
	datad => \DATAPATH|RESULT_MUX|output[16]~3_combout\,
	combout => \U_LED1|output[6]~9_combout\);

-- Location: LCCOMB_X74_Y41_N6
\DATAPATH|RESULT_MUX|output[13]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[13]~8_combout\ = (!\FSM|result_sel~1_combout\ & \DATAPATH|Y_REG|q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|result_sel~1_combout\,
	datad => \DATAPATH|Y_REG|q\(13),
	combout => \DATAPATH|RESULT_MUX|output[13]~8_combout\);

-- Location: LCCOMB_X74_Y41_N20
\DATAPATH|RESULT_MUX|output[14]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[14]~7_combout\ = (!\FSM|result_sel~1_combout\ & \DATAPATH|Y_REG|q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|result_sel~1_combout\,
	datad => \DATAPATH|Y_REG|q\(14),
	combout => \DATAPATH|RESULT_MUX|output[14]~7_combout\);

-- Location: LCCOMB_X74_Y41_N14
\U_LED2|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[0]~0_combout\ = (\DATAPATH|Y_REG|q\(15) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(15),
	datad => \FSM|result_sel~1_combout\,
	combout => \U_LED2|output[0]~0_combout\);

-- Location: LCCOMB_X74_Y41_N16
\DATAPATH|RESULT_MUX|output[12]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[12]~6_combout\ = (\DATAPATH|Y_REG|q\(12) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(12),
	datad => \FSM|result_sel~1_combout\,
	combout => \DATAPATH|RESULT_MUX|output[12]~6_combout\);

-- Location: LCCOMB_X74_Y41_N24
\U_LED2|output[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[0]~1_combout\ = (\DATAPATH|RESULT_MUX|output[14]~7_combout\ & (!\DATAPATH|RESULT_MUX|output[13]~8_combout\ & (\U_LED2|output[0]~0_combout\ $ (!\DATAPATH|RESULT_MUX|output[12]~6_combout\)))) # (!\DATAPATH|RESULT_MUX|output[14]~7_combout\ & 
-- (\DATAPATH|RESULT_MUX|output[12]~6_combout\ & (\DATAPATH|RESULT_MUX|output[13]~8_combout\ $ (!\U_LED2|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[13]~8_combout\,
	datab => \DATAPATH|RESULT_MUX|output[14]~7_combout\,
	datac => \U_LED2|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[12]~6_combout\,
	combout => \U_LED2|output[0]~1_combout\);

-- Location: LCCOMB_X74_Y41_N10
\U_LED2|output[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[1]~2_combout\ = (\DATAPATH|RESULT_MUX|output[13]~8_combout\ & ((\DATAPATH|RESULT_MUX|output[12]~6_combout\ & ((\U_LED2|output[0]~0_combout\))) # (!\DATAPATH|RESULT_MUX|output[12]~6_combout\ & (\DATAPATH|RESULT_MUX|output[14]~7_combout\)))) 
-- # (!\DATAPATH|RESULT_MUX|output[13]~8_combout\ & (\DATAPATH|RESULT_MUX|output[14]~7_combout\ & (\U_LED2|output[0]~0_combout\ $ (\DATAPATH|RESULT_MUX|output[12]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[13]~8_combout\,
	datab => \DATAPATH|RESULT_MUX|output[14]~7_combout\,
	datac => \U_LED2|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[12]~6_combout\,
	combout => \U_LED2|output[1]~2_combout\);

-- Location: LCCOMB_X74_Y41_N12
\U_LED2|output[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[2]~3_combout\ = (!\DATAPATH|Y_REG|q\(12) & (!\DATAPATH|RESULT_MUX|output[14]~7_combout\ & (!\U_LED2|output[0]~0_combout\ & \DATAPATH|RESULT_MUX|output[13]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(12),
	datab => \DATAPATH|RESULT_MUX|output[14]~7_combout\,
	datac => \U_LED2|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[13]~8_combout\,
	combout => \U_LED2|output[2]~3_combout\);

-- Location: LCCOMB_X74_Y41_N26
\U_LED2|output[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[1]~4_combout\ = (\DATAPATH|Y_REG|q\(15) & (!\FSM|result_sel~1_combout\ & \DATAPATH|Y_REG|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(15),
	datab => \FSM|result_sel~1_combout\,
	datad => \DATAPATH|Y_REG|q\(14),
	combout => \U_LED2|output[1]~4_combout\);

-- Location: LCCOMB_X74_Y41_N28
\U_LED2|output[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[2]~5_combout\ = (\U_LED2|output[2]~3_combout\) # ((\U_LED2|output[1]~4_combout\ & ((\DATAPATH|RESULT_MUX|output[13]~8_combout\) # (!\DATAPATH|RESULT_MUX|output[12]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED2|output[2]~3_combout\,
	datab => \DATAPATH|RESULT_MUX|output[12]~6_combout\,
	datac => \U_LED2|output[1]~4_combout\,
	datad => \DATAPATH|RESULT_MUX|output[13]~8_combout\,
	combout => \U_LED2|output[2]~5_combout\);

-- Location: LCCOMB_X74_Y41_N18
\U_LED2|output[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[3]~6_combout\ = (\DATAPATH|RESULT_MUX|output[13]~8_combout\ & ((\DATAPATH|RESULT_MUX|output[14]~7_combout\ & ((\DATAPATH|RESULT_MUX|output[12]~6_combout\))) # (!\DATAPATH|RESULT_MUX|output[14]~7_combout\ & (\U_LED2|output[0]~0_combout\ & 
-- !\DATAPATH|RESULT_MUX|output[12]~6_combout\)))) # (!\DATAPATH|RESULT_MUX|output[13]~8_combout\ & (!\U_LED2|output[0]~0_combout\ & (\DATAPATH|RESULT_MUX|output[14]~7_combout\ $ (\DATAPATH|RESULT_MUX|output[12]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[13]~8_combout\,
	datab => \DATAPATH|RESULT_MUX|output[14]~7_combout\,
	datac => \U_LED2|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[12]~6_combout\,
	combout => \U_LED2|output[3]~6_combout\);

-- Location: LCCOMB_X74_Y41_N4
\U_LED2|output[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[4]~7_combout\ = (\DATAPATH|RESULT_MUX|output[13]~8_combout\ & (((!\U_LED2|output[0]~0_combout\ & \DATAPATH|RESULT_MUX|output[12]~6_combout\)))) # (!\DATAPATH|RESULT_MUX|output[13]~8_combout\ & ((\DATAPATH|RESULT_MUX|output[14]~7_combout\ & 
-- (!\U_LED2|output[0]~0_combout\)) # (!\DATAPATH|RESULT_MUX|output[14]~7_combout\ & ((\DATAPATH|RESULT_MUX|output[12]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[13]~8_combout\,
	datab => \DATAPATH|RESULT_MUX|output[14]~7_combout\,
	datac => \U_LED2|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[12]~6_combout\,
	combout => \U_LED2|output[4]~7_combout\);

-- Location: LCCOMB_X74_Y41_N22
\U_LED2|output[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[5]~8_combout\ = (\DATAPATH|RESULT_MUX|output[13]~8_combout\ & (!\U_LED2|output[0]~0_combout\ & ((\DATAPATH|RESULT_MUX|output[12]~6_combout\) # (!\DATAPATH|RESULT_MUX|output[14]~7_combout\)))) # (!\DATAPATH|RESULT_MUX|output[13]~8_combout\ & 
-- (\DATAPATH|RESULT_MUX|output[12]~6_combout\ & (\DATAPATH|RESULT_MUX|output[14]~7_combout\ $ (!\U_LED2|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[13]~8_combout\,
	datab => \DATAPATH|RESULT_MUX|output[14]~7_combout\,
	datac => \U_LED2|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[12]~6_combout\,
	combout => \U_LED2|output[5]~8_combout\);

-- Location: LCCOMB_X74_Y41_N8
\U_LED2|output[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[6]~9_combout\ = (\DATAPATH|RESULT_MUX|output[12]~6_combout\ & (!\U_LED2|output[0]~0_combout\ & (\DATAPATH|RESULT_MUX|output[13]~8_combout\ $ (!\DATAPATH|RESULT_MUX|output[14]~7_combout\)))) # (!\DATAPATH|RESULT_MUX|output[12]~6_combout\ & 
-- (!\DATAPATH|RESULT_MUX|output[13]~8_combout\ & (\DATAPATH|RESULT_MUX|output[14]~7_combout\ $ (!\U_LED2|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[13]~8_combout\,
	datab => \DATAPATH|RESULT_MUX|output[14]~7_combout\,
	datac => \U_LED2|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[12]~6_combout\,
	combout => \U_LED2|output[6]~9_combout\);

-- Location: LCCOMB_X77_Y44_N0
\DATAPATH|RESULT_MUX|output[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[10]~10_combout\ = (\DATAPATH|Y_REG|q\(10) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(10),
	datad => \FSM|result_sel~1_combout\,
	combout => \DATAPATH|RESULT_MUX|output[10]~10_combout\);

-- Location: LCCOMB_X77_Y44_N8
\DATAPATH|RESULT_MUX|output[8]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[8]~9_combout\ = (\DATAPATH|Y_REG|q\(8) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(8),
	datad => \FSM|result_sel~1_combout\,
	combout => \DATAPATH|RESULT_MUX|output[8]~9_combout\);

-- Location: LCCOMB_X77_Y44_N14
\DATAPATH|RESULT_MUX|output[9]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[9]~11_combout\ = (!\FSM|result_sel~1_combout\ & \DATAPATH|Y_REG|q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|result_sel~1_combout\,
	datad => \DATAPATH|Y_REG|q\(9),
	combout => \DATAPATH|RESULT_MUX|output[9]~11_combout\);

-- Location: LCCOMB_X77_Y44_N18
\U_LED3|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[0]~0_combout\ = (\DATAPATH|Y_REG|q\(11) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(11),
	datad => \FSM|result_sel~1_combout\,
	combout => \U_LED3|output[0]~0_combout\);

-- Location: LCCOMB_X77_Y44_N16
\U_LED3|output[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[0]~1_combout\ = (\DATAPATH|RESULT_MUX|output[10]~10_combout\ & (!\DATAPATH|RESULT_MUX|output[9]~11_combout\ & (\DATAPATH|RESULT_MUX|output[8]~9_combout\ $ (!\U_LED3|output[0]~0_combout\)))) # (!\DATAPATH|RESULT_MUX|output[10]~10_combout\ & 
-- (\DATAPATH|RESULT_MUX|output[8]~9_combout\ & (\DATAPATH|RESULT_MUX|output[9]~11_combout\ $ (!\U_LED3|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[10]~10_combout\,
	datab => \DATAPATH|RESULT_MUX|output[8]~9_combout\,
	datac => \DATAPATH|RESULT_MUX|output[9]~11_combout\,
	datad => \U_LED3|output[0]~0_combout\,
	combout => \U_LED3|output[0]~1_combout\);

-- Location: LCCOMB_X77_Y44_N10
\U_LED3|output[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[1]~2_combout\ = (\DATAPATH|RESULT_MUX|output[9]~11_combout\ & ((\DATAPATH|RESULT_MUX|output[8]~9_combout\ & ((\U_LED3|output[0]~0_combout\))) # (!\DATAPATH|RESULT_MUX|output[8]~9_combout\ & (\DATAPATH|RESULT_MUX|output[10]~10_combout\)))) # 
-- (!\DATAPATH|RESULT_MUX|output[9]~11_combout\ & (\DATAPATH|RESULT_MUX|output[10]~10_combout\ & (\DATAPATH|RESULT_MUX|output[8]~9_combout\ $ (\U_LED3|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[10]~10_combout\,
	datab => \DATAPATH|RESULT_MUX|output[8]~9_combout\,
	datac => \DATAPATH|RESULT_MUX|output[9]~11_combout\,
	datad => \U_LED3|output[0]~0_combout\,
	combout => \U_LED3|output[1]~2_combout\);

-- Location: LCCOMB_X77_Y44_N12
\U_LED3|output[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[1]~3_combout\ = (\DATAPATH|RESULT_MUX|output[10]~10_combout\ & (\U_LED3|output[0]~0_combout\ & ((\DATAPATH|RESULT_MUX|output[9]~11_combout\) # (!\DATAPATH|RESULT_MUX|output[8]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[10]~10_combout\,
	datab => \DATAPATH|RESULT_MUX|output[8]~9_combout\,
	datac => \DATAPATH|RESULT_MUX|output[9]~11_combout\,
	datad => \U_LED3|output[0]~0_combout\,
	combout => \U_LED3|output[1]~3_combout\);

-- Location: LCCOMB_X77_Y44_N6
\U_LED3|output[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[2]~4_combout\ = (!\DATAPATH|Y_REG|q\(8) & ((\FSM|result_sel~1_combout\) # (!\DATAPATH|Y_REG|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(11),
	datac => \DATAPATH|Y_REG|q\(8),
	datad => \FSM|result_sel~1_combout\,
	combout => \U_LED3|output[2]~4_combout\);

-- Location: LCCOMB_X77_Y44_N28
\U_LED3|output[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[2]~5_combout\ = (\U_LED3|output[1]~3_combout\) # ((\DATAPATH|RESULT_MUX|output[9]~11_combout\ & (!\DATAPATH|RESULT_MUX|output[10]~10_combout\ & \U_LED3|output[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED3|output[1]~3_combout\,
	datab => \DATAPATH|RESULT_MUX|output[9]~11_combout\,
	datac => \DATAPATH|RESULT_MUX|output[10]~10_combout\,
	datad => \U_LED3|output[2]~4_combout\,
	combout => \U_LED3|output[2]~5_combout\);

-- Location: LCCOMB_X77_Y44_N26
\U_LED3|output[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[3]~6_combout\ = (\DATAPATH|RESULT_MUX|output[9]~11_combout\ & ((\DATAPATH|RESULT_MUX|output[10]~10_combout\ & (\DATAPATH|RESULT_MUX|output[8]~9_combout\)) # (!\DATAPATH|RESULT_MUX|output[10]~10_combout\ & 
-- (!\DATAPATH|RESULT_MUX|output[8]~9_combout\ & \U_LED3|output[0]~0_combout\)))) # (!\DATAPATH|RESULT_MUX|output[9]~11_combout\ & (!\U_LED3|output[0]~0_combout\ & (\DATAPATH|RESULT_MUX|output[10]~10_combout\ $ (\DATAPATH|RESULT_MUX|output[8]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[10]~10_combout\,
	datab => \DATAPATH|RESULT_MUX|output[8]~9_combout\,
	datac => \DATAPATH|RESULT_MUX|output[9]~11_combout\,
	datad => \U_LED3|output[0]~0_combout\,
	combout => \U_LED3|output[3]~6_combout\);

-- Location: LCCOMB_X77_Y44_N20
\U_LED3|output[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[4]~7_combout\ = (\DATAPATH|RESULT_MUX|output[9]~11_combout\ & (((\DATAPATH|RESULT_MUX|output[8]~9_combout\ & !\U_LED3|output[0]~0_combout\)))) # (!\DATAPATH|RESULT_MUX|output[9]~11_combout\ & ((\DATAPATH|RESULT_MUX|output[10]~10_combout\ & 
-- ((!\U_LED3|output[0]~0_combout\))) # (!\DATAPATH|RESULT_MUX|output[10]~10_combout\ & (\DATAPATH|RESULT_MUX|output[8]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[10]~10_combout\,
	datab => \DATAPATH|RESULT_MUX|output[8]~9_combout\,
	datac => \DATAPATH|RESULT_MUX|output[9]~11_combout\,
	datad => \U_LED3|output[0]~0_combout\,
	combout => \U_LED3|output[4]~7_combout\);

-- Location: LCCOMB_X77_Y44_N30
\U_LED3|output[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[5]~8_combout\ = (\DATAPATH|RESULT_MUX|output[10]~10_combout\ & (\DATAPATH|RESULT_MUX|output[8]~9_combout\ & (\DATAPATH|RESULT_MUX|output[9]~11_combout\ $ (\U_LED3|output[0]~0_combout\)))) # (!\DATAPATH|RESULT_MUX|output[10]~10_combout\ & 
-- (!\U_LED3|output[0]~0_combout\ & ((\DATAPATH|RESULT_MUX|output[8]~9_combout\) # (\DATAPATH|RESULT_MUX|output[9]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[10]~10_combout\,
	datab => \DATAPATH|RESULT_MUX|output[8]~9_combout\,
	datac => \DATAPATH|RESULT_MUX|output[9]~11_combout\,
	datad => \U_LED3|output[0]~0_combout\,
	combout => \U_LED3|output[5]~8_combout\);

-- Location: LCCOMB_X77_Y44_N24
\U_LED3|output[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[6]~9_combout\ = (\DATAPATH|RESULT_MUX|output[8]~9_combout\ & (!\U_LED3|output[0]~0_combout\ & (\DATAPATH|RESULT_MUX|output[10]~10_combout\ $ (!\DATAPATH|RESULT_MUX|output[9]~11_combout\)))) # (!\DATAPATH|RESULT_MUX|output[8]~9_combout\ & 
-- (!\DATAPATH|RESULT_MUX|output[9]~11_combout\ & (\DATAPATH|RESULT_MUX|output[10]~10_combout\ $ (!\U_LED3|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[10]~10_combout\,
	datab => \DATAPATH|RESULT_MUX|output[8]~9_combout\,
	datac => \DATAPATH|RESULT_MUX|output[9]~11_combout\,
	datad => \U_LED3|output[0]~0_combout\,
	combout => \U_LED3|output[6]~9_combout\);

-- Location: LCCOMB_X66_Y50_N24
\DATAPATH|RESULT_MUX|output[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[6]~13_combout\ = (\DATAPATH|Y_REG|q\(6) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(6),
	datad => \FSM|result_sel~1_combout\,
	combout => \DATAPATH|RESULT_MUX|output[6]~13_combout\);

-- Location: LCCOMB_X66_Y50_N2
\DATAPATH|RESULT_MUX|output[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[5]~14_combout\ = (\DATAPATH|Y_REG|q\(5) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(5),
	datad => \FSM|result_sel~1_combout\,
	combout => \DATAPATH|RESULT_MUX|output[5]~14_combout\);

-- Location: LCCOMB_X66_Y50_N22
\U_LED4|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[0]~0_combout\ = (\DATAPATH|Y_REG|q\(7) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(7),
	datad => \FSM|result_sel~1_combout\,
	combout => \U_LED4|output[0]~0_combout\);

-- Location: LCCOMB_X66_Y50_N0
\DATAPATH|RESULT_MUX|output[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[4]~12_combout\ = (\DATAPATH|Y_REG|q\(4) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(4),
	datad => \FSM|result_sel~1_combout\,
	combout => \DATAPATH|RESULT_MUX|output[4]~12_combout\);

-- Location: LCCOMB_X66_Y50_N8
\U_LED4|output[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[0]~1_combout\ = (\DATAPATH|RESULT_MUX|output[6]~13_combout\ & (!\DATAPATH|RESULT_MUX|output[5]~14_combout\ & (\U_LED4|output[0]~0_combout\ $ (!\DATAPATH|RESULT_MUX|output[4]~12_combout\)))) # (!\DATAPATH|RESULT_MUX|output[6]~13_combout\ & 
-- (\DATAPATH|RESULT_MUX|output[4]~12_combout\ & (\DATAPATH|RESULT_MUX|output[5]~14_combout\ $ (!\U_LED4|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[6]~13_combout\,
	datab => \DATAPATH|RESULT_MUX|output[5]~14_combout\,
	datac => \U_LED4|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[4]~12_combout\,
	combout => \U_LED4|output[0]~1_combout\);

-- Location: LCCOMB_X66_Y50_N30
\U_LED4|output[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[1]~2_combout\ = (\DATAPATH|RESULT_MUX|output[5]~14_combout\ & ((\DATAPATH|RESULT_MUX|output[4]~12_combout\ & ((\U_LED4|output[0]~0_combout\))) # (!\DATAPATH|RESULT_MUX|output[4]~12_combout\ & (\DATAPATH|RESULT_MUX|output[6]~13_combout\)))) 
-- # (!\DATAPATH|RESULT_MUX|output[5]~14_combout\ & (\DATAPATH|RESULT_MUX|output[6]~13_combout\ & (\U_LED4|output[0]~0_combout\ $ (\DATAPATH|RESULT_MUX|output[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[6]~13_combout\,
	datab => \DATAPATH|RESULT_MUX|output[5]~14_combout\,
	datac => \U_LED4|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[4]~12_combout\,
	combout => \U_LED4|output[1]~2_combout\);

-- Location: LCCOMB_X66_Y50_N16
\U_LED4|output[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[2]~3_combout\ = (!\U_LED4|output[0]~0_combout\ & (!\DATAPATH|RESULT_MUX|output[6]~13_combout\ & (!\DATAPATH|Y_REG|q\(4) & \DATAPATH|RESULT_MUX|output[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED4|output[0]~0_combout\,
	datab => \DATAPATH|RESULT_MUX|output[6]~13_combout\,
	datac => \DATAPATH|Y_REG|q\(4),
	datad => \DATAPATH|RESULT_MUX|output[5]~14_combout\,
	combout => \U_LED4|output[2]~3_combout\);

-- Location: LCCOMB_X66_Y50_N26
\U_LED4|output[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[1]~4_combout\ = (\DATAPATH|Y_REG|q\(7) & (\DATAPATH|Y_REG|q\(6) & !\FSM|result_sel~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(7),
	datac => \DATAPATH|Y_REG|q\(6),
	datad => \FSM|result_sel~1_combout\,
	combout => \U_LED4|output[1]~4_combout\);

-- Location: LCCOMB_X66_Y50_N12
\U_LED4|output[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[2]~5_combout\ = (\U_LED4|output[2]~3_combout\) # ((\U_LED4|output[1]~4_combout\ & ((\DATAPATH|RESULT_MUX|output[5]~14_combout\) # (!\DATAPATH|RESULT_MUX|output[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED4|output[2]~3_combout\,
	datab => \DATAPATH|RESULT_MUX|output[5]~14_combout\,
	datac => \U_LED4|output[1]~4_combout\,
	datad => \DATAPATH|RESULT_MUX|output[4]~12_combout\,
	combout => \U_LED4|output[2]~5_combout\);

-- Location: LCCOMB_X66_Y50_N14
\U_LED4|output[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[3]~6_combout\ = (\DATAPATH|RESULT_MUX|output[5]~14_combout\ & ((\DATAPATH|RESULT_MUX|output[6]~13_combout\ & ((\DATAPATH|RESULT_MUX|output[4]~12_combout\))) # (!\DATAPATH|RESULT_MUX|output[6]~13_combout\ & (\U_LED4|output[0]~0_combout\ & 
-- !\DATAPATH|RESULT_MUX|output[4]~12_combout\)))) # (!\DATAPATH|RESULT_MUX|output[5]~14_combout\ & (!\U_LED4|output[0]~0_combout\ & (\DATAPATH|RESULT_MUX|output[6]~13_combout\ $ (\DATAPATH|RESULT_MUX|output[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[6]~13_combout\,
	datab => \DATAPATH|RESULT_MUX|output[5]~14_combout\,
	datac => \U_LED4|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[4]~12_combout\,
	combout => \U_LED4|output[3]~6_combout\);

-- Location: LCCOMB_X66_Y50_N28
\U_LED4|output[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[4]~7_combout\ = (\DATAPATH|RESULT_MUX|output[5]~14_combout\ & (((!\U_LED4|output[0]~0_combout\ & \DATAPATH|RESULT_MUX|output[4]~12_combout\)))) # (!\DATAPATH|RESULT_MUX|output[5]~14_combout\ & ((\DATAPATH|RESULT_MUX|output[6]~13_combout\ & 
-- (!\U_LED4|output[0]~0_combout\)) # (!\DATAPATH|RESULT_MUX|output[6]~13_combout\ & ((\DATAPATH|RESULT_MUX|output[4]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[6]~13_combout\,
	datab => \DATAPATH|RESULT_MUX|output[5]~14_combout\,
	datac => \U_LED4|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[4]~12_combout\,
	combout => \U_LED4|output[4]~7_combout\);

-- Location: LCCOMB_X66_Y50_N18
\U_LED4|output[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[5]~8_combout\ = (\DATAPATH|RESULT_MUX|output[6]~13_combout\ & (\DATAPATH|RESULT_MUX|output[4]~12_combout\ & (\DATAPATH|RESULT_MUX|output[5]~14_combout\ $ (\U_LED4|output[0]~0_combout\)))) # (!\DATAPATH|RESULT_MUX|output[6]~13_combout\ & 
-- (!\U_LED4|output[0]~0_combout\ & ((\DATAPATH|RESULT_MUX|output[5]~14_combout\) # (\DATAPATH|RESULT_MUX|output[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[6]~13_combout\,
	datab => \DATAPATH|RESULT_MUX|output[5]~14_combout\,
	datac => \U_LED4|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[4]~12_combout\,
	combout => \U_LED4|output[5]~8_combout\);

-- Location: LCCOMB_X66_Y50_N20
\U_LED4|output[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[6]~9_combout\ = (\DATAPATH|RESULT_MUX|output[4]~12_combout\ & (!\U_LED4|output[0]~0_combout\ & (\DATAPATH|RESULT_MUX|output[6]~13_combout\ $ (!\DATAPATH|RESULT_MUX|output[5]~14_combout\)))) # (!\DATAPATH|RESULT_MUX|output[4]~12_combout\ & 
-- (!\DATAPATH|RESULT_MUX|output[5]~14_combout\ & (\DATAPATH|RESULT_MUX|output[6]~13_combout\ $ (!\U_LED4|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[6]~13_combout\,
	datab => \DATAPATH|RESULT_MUX|output[5]~14_combout\,
	datac => \U_LED4|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[4]~12_combout\,
	combout => \U_LED4|output[6]~9_combout\);

-- Location: LCCOMB_X67_Y50_N12
\DATAPATH|RESULT_MUX|output[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[0]~15_combout\ = (\DATAPATH|Y_REG|q\(0) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(0),
	datad => \FSM|result_sel~1_combout\,
	combout => \DATAPATH|RESULT_MUX|output[0]~15_combout\);

-- Location: LCCOMB_X67_Y50_N24
\DATAPATH|RESULT_MUX|output[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[2]~16_combout\ = (\DATAPATH|Y_REG|q\(2) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(2),
	datad => \FSM|result_sel~1_combout\,
	combout => \DATAPATH|RESULT_MUX|output[2]~16_combout\);

-- Location: LCCOMB_X67_Y50_N14
\U_LED5|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[0]~0_combout\ = (\DATAPATH|Y_REG|q\(3) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(3),
	datad => \FSM|result_sel~1_combout\,
	combout => \U_LED5|output[0]~0_combout\);

-- Location: LCCOMB_X67_Y50_N2
\DATAPATH|RESULT_MUX|output[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|RESULT_MUX|output[1]~17_combout\ = (\DATAPATH|Y_REG|q\(1) & !\FSM|result_sel~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(1),
	datad => \FSM|result_sel~1_combout\,
	combout => \DATAPATH|RESULT_MUX|output[1]~17_combout\);

-- Location: LCCOMB_X67_Y50_N4
\U_LED5|output[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[0]~1_combout\ = (\DATAPATH|RESULT_MUX|output[2]~16_combout\ & (!\DATAPATH|RESULT_MUX|output[1]~17_combout\ & (\DATAPATH|RESULT_MUX|output[0]~15_combout\ $ (!\U_LED5|output[0]~0_combout\)))) # (!\DATAPATH|RESULT_MUX|output[2]~16_combout\ & 
-- (\DATAPATH|RESULT_MUX|output[0]~15_combout\ & (\U_LED5|output[0]~0_combout\ $ (!\DATAPATH|RESULT_MUX|output[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[0]~15_combout\,
	datab => \DATAPATH|RESULT_MUX|output[2]~16_combout\,
	datac => \U_LED5|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[1]~17_combout\,
	combout => \U_LED5|output[0]~1_combout\);

-- Location: LCCOMB_X67_Y50_N26
\U_LED5|output[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[1]~2_combout\ = (\U_LED5|output[0]~0_combout\ & ((\DATAPATH|RESULT_MUX|output[0]~15_combout\ & ((\DATAPATH|RESULT_MUX|output[1]~17_combout\))) # (!\DATAPATH|RESULT_MUX|output[0]~15_combout\ & (\DATAPATH|RESULT_MUX|output[2]~16_combout\)))) 
-- # (!\U_LED5|output[0]~0_combout\ & (\DATAPATH|RESULT_MUX|output[2]~16_combout\ & (\DATAPATH|RESULT_MUX|output[0]~15_combout\ $ (\DATAPATH|RESULT_MUX|output[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[0]~15_combout\,
	datab => \DATAPATH|RESULT_MUX|output[2]~16_combout\,
	datac => \U_LED5|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[1]~17_combout\,
	combout => \U_LED5|output[1]~2_combout\);

-- Location: LCCOMB_X67_Y50_N22
\U_LED5|output[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[1]~4_combout\ = (\DATAPATH|Y_REG|q\(1) & (!\FSM|result_sel~1_combout\ & !\DATAPATH|Y_REG|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(1),
	datab => \FSM|result_sel~1_combout\,
	datad => \DATAPATH|Y_REG|q\(2),
	combout => \U_LED5|output[1]~4_combout\);

-- Location: LCCOMB_X67_Y50_N0
\U_LED5|output[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[1]~3_combout\ = (\DATAPATH|RESULT_MUX|output[2]~16_combout\ & (\U_LED5|output[0]~0_combout\ & ((\DATAPATH|RESULT_MUX|output[1]~17_combout\) # (!\DATAPATH|RESULT_MUX|output[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[0]~15_combout\,
	datab => \DATAPATH|RESULT_MUX|output[2]~16_combout\,
	datac => \U_LED5|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[1]~17_combout\,
	combout => \U_LED5|output[1]~3_combout\);

-- Location: LCCOMB_X67_Y50_N16
\U_LED5|output[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[2]~5_combout\ = (\U_LED5|output[1]~3_combout\) # ((\U_LED5|output[1]~4_combout\ & (!\U_LED5|output[0]~0_combout\ & !\DATAPATH|Y_REG|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED5|output[1]~4_combout\,
	datab => \U_LED5|output[1]~3_combout\,
	datac => \U_LED5|output[0]~0_combout\,
	datad => \DATAPATH|Y_REG|q\(0),
	combout => \U_LED5|output[2]~5_combout\);

-- Location: LCCOMB_X67_Y50_N10
\U_LED5|output[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[3]~6_combout\ = (\DATAPATH|RESULT_MUX|output[1]~17_combout\ & ((\DATAPATH|RESULT_MUX|output[0]~15_combout\ & (\DATAPATH|RESULT_MUX|output[2]~16_combout\)) # (!\DATAPATH|RESULT_MUX|output[0]~15_combout\ & 
-- (!\DATAPATH|RESULT_MUX|output[2]~16_combout\ & \U_LED5|output[0]~0_combout\)))) # (!\DATAPATH|RESULT_MUX|output[1]~17_combout\ & (!\U_LED5|output[0]~0_combout\ & (\DATAPATH|RESULT_MUX|output[0]~15_combout\ $ (\DATAPATH|RESULT_MUX|output[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[0]~15_combout\,
	datab => \DATAPATH|RESULT_MUX|output[2]~16_combout\,
	datac => \U_LED5|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[1]~17_combout\,
	combout => \U_LED5|output[3]~6_combout\);

-- Location: LCCOMB_X67_Y50_N28
\U_LED5|output[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[4]~7_combout\ = (\DATAPATH|RESULT_MUX|output[1]~17_combout\ & (\DATAPATH|RESULT_MUX|output[0]~15_combout\ & ((!\U_LED5|output[0]~0_combout\)))) # (!\DATAPATH|RESULT_MUX|output[1]~17_combout\ & ((\DATAPATH|RESULT_MUX|output[2]~16_combout\ & 
-- ((!\U_LED5|output[0]~0_combout\))) # (!\DATAPATH|RESULT_MUX|output[2]~16_combout\ & (\DATAPATH|RESULT_MUX|output[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[0]~15_combout\,
	datab => \DATAPATH|RESULT_MUX|output[2]~16_combout\,
	datac => \U_LED5|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[1]~17_combout\,
	combout => \U_LED5|output[4]~7_combout\);

-- Location: LCCOMB_X67_Y50_N30
\U_LED5|output[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[5]~8_combout\ = (\DATAPATH|RESULT_MUX|output[0]~15_combout\ & (\U_LED5|output[0]~0_combout\ $ (((\DATAPATH|RESULT_MUX|output[1]~17_combout\) # (!\DATAPATH|RESULT_MUX|output[2]~16_combout\))))) # (!\DATAPATH|RESULT_MUX|output[0]~15_combout\ 
-- & (!\DATAPATH|RESULT_MUX|output[2]~16_combout\ & (!\U_LED5|output[0]~0_combout\ & \DATAPATH|RESULT_MUX|output[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[0]~15_combout\,
	datab => \DATAPATH|RESULT_MUX|output[2]~16_combout\,
	datac => \U_LED5|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[1]~17_combout\,
	combout => \U_LED5|output[5]~8_combout\);

-- Location: LCCOMB_X67_Y50_N20
\U_LED5|output[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[6]~9_combout\ = (\DATAPATH|RESULT_MUX|output[0]~15_combout\ & (!\U_LED5|output[0]~0_combout\ & (\DATAPATH|RESULT_MUX|output[2]~16_combout\ $ (!\DATAPATH|RESULT_MUX|output[1]~17_combout\)))) # (!\DATAPATH|RESULT_MUX|output[0]~15_combout\ & 
-- (!\DATAPATH|RESULT_MUX|output[1]~17_combout\ & (\DATAPATH|RESULT_MUX|output[2]~16_combout\ $ (!\U_LED5|output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|RESULT_MUX|output[0]~15_combout\,
	datab => \DATAPATH|RESULT_MUX|output[2]~16_combout\,
	datac => \U_LED5|output[0]~0_combout\,
	datad => \DATAPATH|RESULT_MUX|output[1]~17_combout\,
	combout => \U_LED5|output[6]~9_combout\);

-- Location: IOIBUF_X51_Y54_N22
\switch[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\switch[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\switch[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: IOIBUF_X34_Y39_N8
\switch[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

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
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
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
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_led0(0) <= \led0[0]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(6) <= \led0[6]~output_o\;

ww_led0_dp <= \led0_dp~output_o\;

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;

ww_led1(5) <= \led1[5]~output_o\;

ww_led1(6) <= \led1[6]~output_o\;

ww_led1_dp <= \led1_dp~output_o\;

ww_led2(0) <= \led2[0]~output_o\;

ww_led2(1) <= \led2[1]~output_o\;

ww_led2(2) <= \led2[2]~output_o\;

ww_led2(3) <= \led2[3]~output_o\;

ww_led2(4) <= \led2[4]~output_o\;

ww_led2(5) <= \led2[5]~output_o\;

ww_led2(6) <= \led2[6]~output_o\;

ww_led2_dp <= \led2_dp~output_o\;

ww_led3(0) <= \led3[0]~output_o\;

ww_led3(1) <= \led3[1]~output_o\;

ww_led3(2) <= \led3[2]~output_o\;

ww_led3(3) <= \led3[3]~output_o\;

ww_led3(4) <= \led3[4]~output_o\;

ww_led3(5) <= \led3[5]~output_o\;

ww_led3(6) <= \led3[6]~output_o\;

ww_led3_dp <= \led3_dp~output_o\;

ww_led4(0) <= \led4[0]~output_o\;

ww_led4(1) <= \led4[1]~output_o\;

ww_led4(2) <= \led4[2]~output_o\;

ww_led4(3) <= \led4[3]~output_o\;

ww_led4(4) <= \led4[4]~output_o\;

ww_led4(5) <= \led4[5]~output_o\;

ww_led4(6) <= \led4[6]~output_o\;

ww_led4_dp <= \led4_dp~output_o\;

ww_led5(0) <= \led5[0]~output_o\;

ww_led5(1) <= \led5[1]~output_o\;

ww_led5(2) <= \led5[2]~output_o\;

ww_led5(3) <= \led5[3]~output_o\;

ww_led5(4) <= \led5[4]~output_o\;

ww_led5(5) <= \led5[5]~output_o\;

ww_led5(6) <= \led5[6]~output_o\;

ww_led5_dp <= \led5_dp~output_o\;

ww_dbg(0) <= \dbg[0]~output_o\;

ww_dbg(1) <= \dbg[1]~output_o\;

ww_dbg(2) <= \dbg[2]~output_o\;

ww_dbg(3) <= \dbg[3]~output_o\;

ww_dbg(4) <= \dbg[4]~output_o\;

ww_dbg(5) <= \dbg[5]~output_o\;

ww_dbg(6) <= \dbg[6]~output_o\;

ww_dbg(7) <= \dbg[7]~output_o\;

ww_dbg(8) <= \dbg[8]~output_o\;

ww_dbg(9) <= \dbg[9]~output_o\;

ww_dbg(10) <= \dbg[10]~output_o\;

ww_dbg(11) <= \dbg[11]~output_o\;

ww_dbg(12) <= \dbg[12]~output_o\;

ww_dbg(13) <= \dbg[13]~output_o\;

ww_dbg(14) <= \dbg[14]~output_o\;

ww_dbg(15) <= \dbg[15]~output_o\;

ww_dbg(16) <= \dbg[16]~output_o\;

ww_dbg(17) <= \dbg[17]~output_o\;

ww_dbg(18) <= \dbg[18]~output_o\;

ww_dbg(19) <= \dbg[19]~output_o\;

ww_dbg(20) <= \dbg[20]~output_o\;

ww_dbg(21) <= \dbg[21]~output_o\;

ww_dbg(22) <= \dbg[22]~output_o\;

ww_dbg(23) <= \dbg[23]~output_o\;
END structure;


