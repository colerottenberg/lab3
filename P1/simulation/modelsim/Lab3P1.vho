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

-- DATE "02/26/2024 04:04:57"

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
	led0 : BUFFER std_logic_vector(6 DOWNTO 0);
	led0_dp : BUFFER std_logic;
	led1 : BUFFER std_logic_vector(6 DOWNTO 0);
	led1_dp : BUFFER std_logic;
	led2 : BUFFER std_logic_vector(6 DOWNTO 0);
	led2_dp : BUFFER std_logic;
	led3 : BUFFER std_logic_vector(6 DOWNTO 0);
	led3_dp : BUFFER std_logic;
	led4 : BUFFER std_logic_vector(6 DOWNTO 0);
	led4_dp : BUFFER std_logic;
	led5 : BUFFER std_logic_vector(6 DOWNTO 0);
	led5_dp : BUFFER std_logic
	);
END top_level;

-- Design Ports Information
-- switch[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4_dp	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5_dp	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \FSM|Selector2~0_combout\ : std_logic;
SIGNAL \FSM|state.IDLE~feeder_combout\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \FSM|state.IDLE~q\ : std_logic;
SIGNAL \FSM|Selector8~1_combout\ : std_logic;
SIGNAL \FSM|state.LOAD_N~feeder_combout\ : std_logic;
SIGNAL \FSM|state.LOAD_N~q\ : std_logic;
SIGNAL \FSM|next_state.CHECK_LE~combout\ : std_logic;
SIGNAL \FSM|state.CHECK_LE~q\ : std_logic;
SIGNAL \FSM|next_state.COMPUTE_FIB~0_combout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~3_combout\ : std_logic;
SIGNAL \FSM|next_state.COMPUTE_FIB~1_combout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~1_combout\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~5_cout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~7_cout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~9_cout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~11_cout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~13_cout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~14_combout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~17_combout\ : std_logic;
SIGNAL \FSM|next_state.COMPUTE_FIB~2_combout\ : std_logic;
SIGNAL \FSM|state.COMPUTE_FIB~q\ : std_logic;
SIGNAL \FSM|y_en~combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[0]~69_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[1]~23_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[1]~24\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[2]~25_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[2]~26\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[3]~27_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[3]~28\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[4]~29_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[4]~30\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[5]~31_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[5]~32\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[6]~33_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[6]~34\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[7]~35_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[7]~36\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[8]~37_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[8]~38\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[9]~39_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[9]~40\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[10]~41_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[10]~42\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[11]~43_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[11]~44\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[12]~45_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[12]~46\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[13]~47_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[13]~48\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[14]~49_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[14]~50\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[15]~51_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[15]~52\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[16]~53_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[16]~54\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[17]~55_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[17]~56\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[18]~57_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[18]~58\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[19]~59_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[19]~60\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[20]~61_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[20]~62\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[21]~63_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[21]~64\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[22]~65_combout\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[22]~66\ : std_logic;
SIGNAL \DATAPATH|I_REG|q[23]~67_combout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~0_combout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~2_combout\ : std_logic;
SIGNAL \DATAPATH|LE_COMP|LessThan0~16_combout\ : std_logic;
SIGNAL \FSM|next_state.DONE_STATE~0_combout\ : std_logic;
SIGNAL \FSM|next_state.DONE_STATE~1_combout\ : std_logic;
SIGNAL \FSM|state.DONE_STATE~q\ : std_logic;
SIGNAL \FSM|WideOr2~0_combout\ : std_logic;
SIGNAL \FSM|result_sel~combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[21]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[18]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[17]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[15]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[11]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[9]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[7]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[6]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[2]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[1]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[0]~24_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[0]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[0]~25\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[1]~26_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[1]~27\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[2]~28_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[2]~29\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[3]~30_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[3]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[3]~31\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[4]~32_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[4]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[4]~33\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[5]~34_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[5]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[5]~35\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[6]~36_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[6]~37\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[7]~38_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[7]~39\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[8]~40_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[8]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[8]~41\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[9]~42_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[9]~43\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[10]~44_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[10]~45\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[11]~46_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[11]~47\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[12]~48_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[12]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[12]~49\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[13]~50_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[13]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[13]~51\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[14]~52_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[14]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[14]~53\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[15]~54_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[15]~55\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[16]~56_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[16]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[16]~57\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[17]~58_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[17]~59\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[18]~60_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[18]~61\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[19]~62_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[19]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[19]~63\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[20]~64_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[20]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[20]~65\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[21]~66_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[22]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[21]~67\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[22]~68_combout\ : std_logic;
SIGNAL \DATAPATH|X_REG|q[23]~feeder_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[22]~69\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q[23]~70_combout\ : std_logic;
SIGNAL \U_LED0|output[0]~4_combout\ : std_logic;
SIGNAL \U_LED0|output[0]~22_combout\ : std_logic;
SIGNAL \U_LED0|output[1]~7_combout\ : std_logic;
SIGNAL \U_LED0|output[1]~23_combout\ : std_logic;
SIGNAL \U_LED0|output[2]~20_combout\ : std_logic;
SIGNAL \U_LED0|output[2]~21_combout\ : std_logic;
SIGNAL \U_LED0|output[3]~10_combout\ : std_logic;
SIGNAL \U_LED0|output[3]~24_combout\ : std_logic;
SIGNAL \U_LED0|output[4]~13_combout\ : std_logic;
SIGNAL \U_LED0|output[4]~25_combout\ : std_logic;
SIGNAL \U_LED0|output[5]~16_combout\ : std_logic;
SIGNAL \U_LED0|output[5]~26_combout\ : std_logic;
SIGNAL \U_LED0|output[6]~19_combout\ : std_logic;
SIGNAL \U_LED0|output[6]~27_combout\ : std_logic;
SIGNAL \FSM|Selector8~0_combout\ : std_logic;
SIGNAL \FSM|done~combout\ : std_logic;
SIGNAL \U_LED1|output[0]~4_combout\ : std_logic;
SIGNAL \U_LED1|output[0]~22_combout\ : std_logic;
SIGNAL \U_LED1|output[1]~7_combout\ : std_logic;
SIGNAL \U_LED1|output[1]~23_combout\ : std_logic;
SIGNAL \U_LED1|output[2]~20_combout\ : std_logic;
SIGNAL \U_LED1|output[2]~21_combout\ : std_logic;
SIGNAL \U_LED1|output[3]~10_combout\ : std_logic;
SIGNAL \U_LED1|output[3]~24_combout\ : std_logic;
SIGNAL \U_LED1|output[4]~13_combout\ : std_logic;
SIGNAL \U_LED1|output[4]~25_combout\ : std_logic;
SIGNAL \U_LED1|output[5]~16_combout\ : std_logic;
SIGNAL \U_LED1|output[5]~26_combout\ : std_logic;
SIGNAL \U_LED1|output[6]~19_combout\ : std_logic;
SIGNAL \U_LED1|output[6]~27_combout\ : std_logic;
SIGNAL \U_LED2|output[0]~4_combout\ : std_logic;
SIGNAL \U_LED2|output[0]~22_combout\ : std_logic;
SIGNAL \U_LED2|output[1]~7_combout\ : std_logic;
SIGNAL \U_LED2|output[1]~23_combout\ : std_logic;
SIGNAL \U_LED2|output[2]~20_combout\ : std_logic;
SIGNAL \U_LED2|output[2]~21_combout\ : std_logic;
SIGNAL \U_LED2|output[3]~10_combout\ : std_logic;
SIGNAL \U_LED2|output[3]~24_combout\ : std_logic;
SIGNAL \U_LED2|output[4]~13_combout\ : std_logic;
SIGNAL \U_LED2|output[4]~25_combout\ : std_logic;
SIGNAL \U_LED2|output[5]~16_combout\ : std_logic;
SIGNAL \U_LED2|output[5]~26_combout\ : std_logic;
SIGNAL \U_LED2|output[6]~19_combout\ : std_logic;
SIGNAL \U_LED2|output[6]~27_combout\ : std_logic;
SIGNAL \U_LED3|output[0]~4_combout\ : std_logic;
SIGNAL \U_LED3|output[0]~22_combout\ : std_logic;
SIGNAL \U_LED3|output[1]~7_combout\ : std_logic;
SIGNAL \U_LED3|output[1]~23_combout\ : std_logic;
SIGNAL \U_LED3|output[2]~20_combout\ : std_logic;
SIGNAL \U_LED3|output[2]~21_combout\ : std_logic;
SIGNAL \U_LED3|output[3]~10_combout\ : std_logic;
SIGNAL \U_LED3|output[3]~24_combout\ : std_logic;
SIGNAL \U_LED3|output[4]~13_combout\ : std_logic;
SIGNAL \U_LED3|output[4]~25_combout\ : std_logic;
SIGNAL \U_LED3|output[5]~16_combout\ : std_logic;
SIGNAL \U_LED3|output[5]~26_combout\ : std_logic;
SIGNAL \U_LED3|output[6]~19_combout\ : std_logic;
SIGNAL \U_LED3|output[6]~27_combout\ : std_logic;
SIGNAL \U_LED4|output[0]~4_combout\ : std_logic;
SIGNAL \U_LED4|output[0]~22_combout\ : std_logic;
SIGNAL \U_LED4|output[1]~7_combout\ : std_logic;
SIGNAL \U_LED4|output[1]~23_combout\ : std_logic;
SIGNAL \U_LED4|output[2]~20_combout\ : std_logic;
SIGNAL \U_LED4|output[2]~21_combout\ : std_logic;
SIGNAL \U_LED4|output[3]~10_combout\ : std_logic;
SIGNAL \U_LED4|output[3]~24_combout\ : std_logic;
SIGNAL \U_LED4|output[4]~13_combout\ : std_logic;
SIGNAL \U_LED4|output[4]~25_combout\ : std_logic;
SIGNAL \U_LED4|output[5]~16_combout\ : std_logic;
SIGNAL \U_LED4|output[5]~26_combout\ : std_logic;
SIGNAL \U_LED4|output[6]~19_combout\ : std_logic;
SIGNAL \U_LED4|output[6]~27_combout\ : std_logic;
SIGNAL \U_LED5|output[0]~4_combout\ : std_logic;
SIGNAL \U_LED5|output[0]~22_combout\ : std_logic;
SIGNAL \U_LED5|output[1]~7_combout\ : std_logic;
SIGNAL \U_LED5|output[1]~23_combout\ : std_logic;
SIGNAL \U_LED5|output[2]~20_combout\ : std_logic;
SIGNAL \U_LED5|output[2]~21_combout\ : std_logic;
SIGNAL \U_LED5|output[3]~10_combout\ : std_logic;
SIGNAL \U_LED5|output[3]~24_combout\ : std_logic;
SIGNAL \U_LED5|output[4]~13_combout\ : std_logic;
SIGNAL \U_LED5|output[4]~25_combout\ : std_logic;
SIGNAL \U_LED5|output[5]~16_combout\ : std_logic;
SIGNAL \U_LED5|output[5]~26_combout\ : std_logic;
SIGNAL \U_LED5|output[6]~19_combout\ : std_logic;
SIGNAL \U_LED5|output[6]~27_combout\ : std_logic;
SIGNAL \DATAPATH|Y_REG|q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \DATAPATH|I_REG|q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \DATAPATH|N_REG|q\ : std_logic_vector(23 DOWNTO 0);
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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\FSM|ALT_INV_done~combout\ <= NOT \FSM|done~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X78_Y45_N9
\led0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|output[0]~22_combout\,
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
	i => \U_LED0|output[1]~23_combout\,
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
	i => \U_LED0|output[2]~21_combout\,
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
	i => \U_LED0|output[3]~24_combout\,
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
	i => \U_LED0|output[4]~25_combout\,
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
	i => \U_LED0|output[5]~26_combout\,
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
	i => \U_LED0|output[6]~27_combout\,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
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
	i => \U_LED1|output[0]~22_combout\,
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
	i => \U_LED1|output[1]~23_combout\,
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
	i => \U_LED1|output[2]~21_combout\,
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
	i => \U_LED1|output[3]~24_combout\,
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
	i => \U_LED1|output[4]~25_combout\,
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
	i => \U_LED1|output[5]~26_combout\,
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
	i => \U_LED1|output[6]~27_combout\,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
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
	i => \U_LED2|output[0]~22_combout\,
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
	i => \U_LED2|output[1]~23_combout\,
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
	i => \U_LED2|output[2]~21_combout\,
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
	i => \U_LED2|output[3]~24_combout\,
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
	i => \U_LED2|output[4]~25_combout\,
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
	i => \U_LED2|output[5]~26_combout\,
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
	i => \U_LED2|output[6]~27_combout\,
	devoe => ww_devoe,
	o => \led2[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
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
	i => \U_LED3|output[0]~22_combout\,
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
	i => \U_LED3|output[1]~23_combout\,
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
	i => \U_LED3|output[2]~21_combout\,
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
	i => \U_LED3|output[3]~24_combout\,
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
	i => \U_LED3|output[4]~25_combout\,
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
	i => \U_LED3|output[5]~26_combout\,
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
	i => \U_LED3|output[6]~27_combout\,
	devoe => ww_devoe,
	o => \led3[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
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
	i => \U_LED4|output[0]~22_combout\,
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
	i => \U_LED4|output[1]~23_combout\,
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
	i => \U_LED4|output[2]~21_combout\,
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
	i => \U_LED4|output[3]~24_combout\,
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
	i => \U_LED4|output[4]~25_combout\,
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
	i => \U_LED4|output[5]~26_combout\,
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
	i => \U_LED4|output[6]~27_combout\,
	devoe => ww_devoe,
	o => \led4[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
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
	i => \U_LED5|output[0]~22_combout\,
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
	i => \U_LED5|output[1]~23_combout\,
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
	i => \U_LED5|output[2]~21_combout\,
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
	i => \U_LED5|output[3]~24_combout\,
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
	i => \U_LED5|output[4]~25_combout\,
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
	i => \U_LED5|output[5]~26_combout\,
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
	i => \U_LED5|output[6]~27_combout\,
	devoe => ww_devoe,
	o => \led5[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
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

-- Location: LCCOMB_X62_Y47_N20
\FSM|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|Selector2~0_combout\ = (!\FSM|state.DONE_STATE~q\ & ((\FSM|state.IDLE~q\) # (!\button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.DONE_STATE~q\,
	datac => \FSM|state.IDLE~q\,
	datad => \button[1]~input_o\,
	combout => \FSM|Selector2~0_combout\);

-- Location: LCCOMB_X62_Y47_N30
\FSM|state.IDLE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|state.IDLE~feeder_combout\ = \FSM|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|Selector2~0_combout\,
	combout => \FSM|state.IDLE~feeder_combout\);

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

-- Location: FF_X62_Y47_N31
\FSM|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FSM|state.IDLE~feeder_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|state.IDLE~q\);

-- Location: LCCOMB_X62_Y47_N24
\FSM|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|Selector8~1_combout\ = (!\FSM|state.IDLE~q\ & !\button[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.IDLE~q\,
	datac => \button[1]~input_o\,
	combout => \FSM|Selector8~1_combout\);

-- Location: LCCOMB_X62_Y47_N2
\FSM|state.LOAD_N~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|state.LOAD_N~feeder_combout\ = \FSM|Selector8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|Selector8~1_combout\,
	combout => \FSM|state.LOAD_N~feeder_combout\);

-- Location: FF_X62_Y47_N3
\FSM|state.LOAD_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FSM|state.LOAD_N~feeder_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|state.LOAD_N~q\);

-- Location: LCCOMB_X62_Y47_N6
\FSM|next_state.CHECK_LE\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|next_state.CHECK_LE~combout\ = (\FSM|state.COMPUTE_FIB~q\) # (\FSM|state.LOAD_N~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|state.COMPUTE_FIB~q\,
	datad => \FSM|state.LOAD_N~q\,
	combout => \FSM|next_state.CHECK_LE~combout\);

-- Location: FF_X63_Y47_N11
\FSM|state.CHECK_LE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FSM|next_state.CHECK_LE~combout\,
	clrn => \button[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|state.CHECK_LE~q\);

-- Location: LCCOMB_X63_Y47_N10
\FSM|next_state.COMPUTE_FIB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|next_state.COMPUTE_FIB~0_combout\ = (!\DATAPATH|I_REG|q\(15) & (\FSM|state.CHECK_LE~q\ & !\DATAPATH|I_REG|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(15),
	datac => \FSM|state.CHECK_LE~q\,
	datad => \DATAPATH|I_REG|q\(13),
	combout => \FSM|next_state.COMPUTE_FIB~0_combout\);

-- Location: LCCOMB_X63_Y47_N30
\DATAPATH|LE_COMP|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~3_combout\ = (\DATAPATH|I_REG|q\(12)) # ((\DATAPATH|I_REG|q\(9)) # ((\DATAPATH|I_REG|q\(11)) # (\DATAPATH|I_REG|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(12),
	datab => \DATAPATH|I_REG|q\(9),
	datac => \DATAPATH|I_REG|q\(11),
	datad => \DATAPATH|I_REG|q\(10),
	combout => \DATAPATH|LE_COMP|LessThan0~3_combout\);

-- Location: LCCOMB_X63_Y47_N4
\FSM|next_state.COMPUTE_FIB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|next_state.COMPUTE_FIB~1_combout\ = (\FSM|next_state.COMPUTE_FIB~0_combout\ & (!\DATAPATH|I_REG|q\(14) & (!\DATAPATH|LE_COMP|LessThan0~3_combout\ & !\DATAPATH|LE_COMP|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|next_state.COMPUTE_FIB~0_combout\,
	datab => \DATAPATH|I_REG|q\(14),
	datac => \DATAPATH|LE_COMP|LessThan0~3_combout\,
	datad => \DATAPATH|LE_COMP|LessThan0~0_combout\,
	combout => \FSM|next_state.COMPUTE_FIB~1_combout\);

-- Location: LCCOMB_X64_Y46_N30
\DATAPATH|LE_COMP|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~1_combout\ = (\DATAPATH|I_REG|q\(18)) # ((\DATAPATH|I_REG|q\(20)) # ((\DATAPATH|I_REG|q\(19)) # (\DATAPATH|I_REG|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(18),
	datab => \DATAPATH|I_REG|q\(20),
	datac => \DATAPATH|I_REG|q\(19),
	datad => \DATAPATH|I_REG|q\(17),
	combout => \DATAPATH|LE_COMP|LessThan0~1_combout\);

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

-- Location: FF_X63_Y47_N23
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|N_REG|q\(5));

-- Location: IOIBUF_X60_Y54_N22
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

-- Location: FF_X63_Y47_N21
\DATAPATH|N_REG|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \switch[4]~input_o\,
	clrn => \button[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|N_REG|q\(4));

-- Location: IOIBUF_X60_Y54_N15
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

-- Location: FF_X63_Y47_N19
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|N_REG|q\(3));

-- Location: IOIBUF_X66_Y54_N15
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

-- Location: FF_X63_Y47_N17
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|N_REG|q\(2));

-- Location: IOIBUF_X66_Y54_N22
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

-- Location: FF_X63_Y47_N15
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|N_REG|q\(1));

-- Location: IOIBUF_X66_Y54_N8
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

-- Location: FF_X63_Y47_N13
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|N_REG|q\(0));

-- Location: LCCOMB_X63_Y47_N12
\DATAPATH|LE_COMP|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~5_cout\ = CARRY((!\DATAPATH|N_REG|q\(0) & \DATAPATH|I_REG|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|N_REG|q\(0),
	datab => \DATAPATH|I_REG|q\(0),
	datad => VCC,
	cout => \DATAPATH|LE_COMP|LessThan0~5_cout\);

-- Location: LCCOMB_X63_Y47_N14
\DATAPATH|LE_COMP|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~7_cout\ = CARRY((\DATAPATH|N_REG|q\(1) & ((!\DATAPATH|LE_COMP|LessThan0~5_cout\) # (!\DATAPATH|I_REG|q\(1)))) # (!\DATAPATH|N_REG|q\(1) & (!\DATAPATH|I_REG|q\(1) & !\DATAPATH|LE_COMP|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|N_REG|q\(1),
	datab => \DATAPATH|I_REG|q\(1),
	datad => VCC,
	cin => \DATAPATH|LE_COMP|LessThan0~5_cout\,
	cout => \DATAPATH|LE_COMP|LessThan0~7_cout\);

-- Location: LCCOMB_X63_Y47_N16
\DATAPATH|LE_COMP|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~9_cout\ = CARRY((\DATAPATH|I_REG|q\(2) & ((!\DATAPATH|LE_COMP|LessThan0~7_cout\) # (!\DATAPATH|N_REG|q\(2)))) # (!\DATAPATH|I_REG|q\(2) & (!\DATAPATH|N_REG|q\(2) & !\DATAPATH|LE_COMP|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(2),
	datab => \DATAPATH|N_REG|q\(2),
	datad => VCC,
	cin => \DATAPATH|LE_COMP|LessThan0~7_cout\,
	cout => \DATAPATH|LE_COMP|LessThan0~9_cout\);

-- Location: LCCOMB_X63_Y47_N18
\DATAPATH|LE_COMP|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~11_cout\ = CARRY((\DATAPATH|N_REG|q\(3) & ((!\DATAPATH|LE_COMP|LessThan0~9_cout\) # (!\DATAPATH|I_REG|q\(3)))) # (!\DATAPATH|N_REG|q\(3) & (!\DATAPATH|I_REG|q\(3) & !\DATAPATH|LE_COMP|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|N_REG|q\(3),
	datab => \DATAPATH|I_REG|q\(3),
	datad => VCC,
	cin => \DATAPATH|LE_COMP|LessThan0~9_cout\,
	cout => \DATAPATH|LE_COMP|LessThan0~11_cout\);

-- Location: LCCOMB_X63_Y47_N20
\DATAPATH|LE_COMP|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~13_cout\ = CARRY((\DATAPATH|N_REG|q\(4) & (\DATAPATH|I_REG|q\(4) & !\DATAPATH|LE_COMP|LessThan0~11_cout\)) # (!\DATAPATH|N_REG|q\(4) & ((\DATAPATH|I_REG|q\(4)) # (!\DATAPATH|LE_COMP|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|N_REG|q\(4),
	datab => \DATAPATH|I_REG|q\(4),
	datad => VCC,
	cin => \DATAPATH|LE_COMP|LessThan0~11_cout\,
	cout => \DATAPATH|LE_COMP|LessThan0~13_cout\);

-- Location: LCCOMB_X63_Y47_N22
\DATAPATH|LE_COMP|LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~14_combout\ = (\DATAPATH|N_REG|q\(5) & (\DATAPATH|LE_COMP|LessThan0~13_cout\ & \DATAPATH|I_REG|q\(5))) # (!\DATAPATH|N_REG|q\(5) & ((\DATAPATH|LE_COMP|LessThan0~13_cout\) # (\DATAPATH|I_REG|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|N_REG|q\(5),
	datad => \DATAPATH|I_REG|q\(5),
	cin => \DATAPATH|LE_COMP|LessThan0~13_cout\,
	combout => \DATAPATH|LE_COMP|LessThan0~14_combout\);

-- Location: LCCOMB_X62_Y47_N28
\DATAPATH|LE_COMP|LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~17_combout\ = (\DATAPATH|I_REG|q\(6)) # ((\DATAPATH|I_REG|q\(8)) # ((\DATAPATH|I_REG|q\(7)) # (\DATAPATH|LE_COMP|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(6),
	datab => \DATAPATH|I_REG|q\(8),
	datac => \DATAPATH|I_REG|q\(7),
	datad => \DATAPATH|LE_COMP|LessThan0~14_combout\,
	combout => \DATAPATH|LE_COMP|LessThan0~17_combout\);

-- Location: LCCOMB_X62_Y47_N16
\FSM|next_state.COMPUTE_FIB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|next_state.COMPUTE_FIB~2_combout\ = (\FSM|next_state.COMPUTE_FIB~1_combout\ & (!\DATAPATH|I_REG|q\(16) & (!\DATAPATH|LE_COMP|LessThan0~1_combout\ & !\DATAPATH|LE_COMP|LessThan0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|next_state.COMPUTE_FIB~1_combout\,
	datab => \DATAPATH|I_REG|q\(16),
	datac => \DATAPATH|LE_COMP|LessThan0~1_combout\,
	datad => \DATAPATH|LE_COMP|LessThan0~17_combout\,
	combout => \FSM|next_state.COMPUTE_FIB~2_combout\);

-- Location: FF_X62_Y47_N17
\FSM|state.COMPUTE_FIB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|next_state.COMPUTE_FIB~2_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|state.COMPUTE_FIB~q\);

-- Location: LCCOMB_X62_Y47_N26
\FSM|y_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|y_en~combout\ = (\FSM|next_state.CHECK_LE~combout\ & ((\FSM|state.COMPUTE_FIB~q\))) # (!\FSM|next_state.CHECK_LE~combout\ & (\FSM|y_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|y_en~combout\,
	datac => \FSM|state.COMPUTE_FIB~q\,
	datad => \FSM|next_state.CHECK_LE~combout\,
	combout => \FSM|y_en~combout\);

-- Location: LCCOMB_X63_Y47_N24
\DATAPATH|I_REG|q[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[0]~69_combout\ = \DATAPATH|I_REG|q\(0) $ (\FSM|y_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|I_REG|q\(0),
	datad => \FSM|y_en~combout\,
	combout => \DATAPATH|I_REG|q[0]~69_combout\);

-- Location: FF_X63_Y47_N25
\DATAPATH|I_REG|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[0]~69_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(0));

-- Location: LCCOMB_X64_Y47_N10
\DATAPATH|I_REG|q[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[1]~23_combout\ = (\DATAPATH|I_REG|q\(1) & (\DATAPATH|I_REG|q\(0) $ (VCC))) # (!\DATAPATH|I_REG|q\(1) & (\DATAPATH|I_REG|q\(0) & VCC))
-- \DATAPATH|I_REG|q[1]~24\ = CARRY((\DATAPATH|I_REG|q\(1) & \DATAPATH|I_REG|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(1),
	datab => \DATAPATH|I_REG|q\(0),
	datad => VCC,
	combout => \DATAPATH|I_REG|q[1]~23_combout\,
	cout => \DATAPATH|I_REG|q[1]~24\);

-- Location: FF_X64_Y47_N11
\DATAPATH|I_REG|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[1]~23_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(1));

-- Location: LCCOMB_X64_Y47_N12
\DATAPATH|I_REG|q[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[2]~25_combout\ = (\DATAPATH|I_REG|q\(2) & (!\DATAPATH|I_REG|q[1]~24\)) # (!\DATAPATH|I_REG|q\(2) & ((\DATAPATH|I_REG|q[1]~24\) # (GND)))
-- \DATAPATH|I_REG|q[2]~26\ = CARRY((!\DATAPATH|I_REG|q[1]~24\) # (!\DATAPATH|I_REG|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(2),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[1]~24\,
	combout => \DATAPATH|I_REG|q[2]~25_combout\,
	cout => \DATAPATH|I_REG|q[2]~26\);

-- Location: FF_X64_Y47_N13
\DATAPATH|I_REG|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[2]~25_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(2));

-- Location: LCCOMB_X64_Y47_N14
\DATAPATH|I_REG|q[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[3]~27_combout\ = (\DATAPATH|I_REG|q\(3) & (\DATAPATH|I_REG|q[2]~26\ $ (GND))) # (!\DATAPATH|I_REG|q\(3) & (!\DATAPATH|I_REG|q[2]~26\ & VCC))
-- \DATAPATH|I_REG|q[3]~28\ = CARRY((\DATAPATH|I_REG|q\(3) & !\DATAPATH|I_REG|q[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(3),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[2]~26\,
	combout => \DATAPATH|I_REG|q[3]~27_combout\,
	cout => \DATAPATH|I_REG|q[3]~28\);

-- Location: FF_X64_Y47_N15
\DATAPATH|I_REG|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[3]~27_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(3));

-- Location: LCCOMB_X64_Y47_N16
\DATAPATH|I_REG|q[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[4]~29_combout\ = (\DATAPATH|I_REG|q\(4) & (!\DATAPATH|I_REG|q[3]~28\)) # (!\DATAPATH|I_REG|q\(4) & ((\DATAPATH|I_REG|q[3]~28\) # (GND)))
-- \DATAPATH|I_REG|q[4]~30\ = CARRY((!\DATAPATH|I_REG|q[3]~28\) # (!\DATAPATH|I_REG|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(4),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[3]~28\,
	combout => \DATAPATH|I_REG|q[4]~29_combout\,
	cout => \DATAPATH|I_REG|q[4]~30\);

-- Location: FF_X64_Y47_N17
\DATAPATH|I_REG|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[4]~29_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(4));

-- Location: LCCOMB_X64_Y47_N18
\DATAPATH|I_REG|q[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[5]~31_combout\ = (\DATAPATH|I_REG|q\(5) & (\DATAPATH|I_REG|q[4]~30\ $ (GND))) # (!\DATAPATH|I_REG|q\(5) & (!\DATAPATH|I_REG|q[4]~30\ & VCC))
-- \DATAPATH|I_REG|q[5]~32\ = CARRY((\DATAPATH|I_REG|q\(5) & !\DATAPATH|I_REG|q[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(5),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[4]~30\,
	combout => \DATAPATH|I_REG|q[5]~31_combout\,
	cout => \DATAPATH|I_REG|q[5]~32\);

-- Location: FF_X64_Y47_N19
\DATAPATH|I_REG|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[5]~31_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(5));

-- Location: LCCOMB_X64_Y47_N20
\DATAPATH|I_REG|q[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[6]~33_combout\ = (\DATAPATH|I_REG|q\(6) & (!\DATAPATH|I_REG|q[5]~32\)) # (!\DATAPATH|I_REG|q\(6) & ((\DATAPATH|I_REG|q[5]~32\) # (GND)))
-- \DATAPATH|I_REG|q[6]~34\ = CARRY((!\DATAPATH|I_REG|q[5]~32\) # (!\DATAPATH|I_REG|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(6),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[5]~32\,
	combout => \DATAPATH|I_REG|q[6]~33_combout\,
	cout => \DATAPATH|I_REG|q[6]~34\);

-- Location: FF_X64_Y47_N21
\DATAPATH|I_REG|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[6]~33_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(6));

-- Location: LCCOMB_X64_Y47_N22
\DATAPATH|I_REG|q[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[7]~35_combout\ = (\DATAPATH|I_REG|q\(7) & (\DATAPATH|I_REG|q[6]~34\ $ (GND))) # (!\DATAPATH|I_REG|q\(7) & (!\DATAPATH|I_REG|q[6]~34\ & VCC))
-- \DATAPATH|I_REG|q[7]~36\ = CARRY((\DATAPATH|I_REG|q\(7) & !\DATAPATH|I_REG|q[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(7),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[6]~34\,
	combout => \DATAPATH|I_REG|q[7]~35_combout\,
	cout => \DATAPATH|I_REG|q[7]~36\);

-- Location: FF_X64_Y47_N23
\DATAPATH|I_REG|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[7]~35_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(7));

-- Location: LCCOMB_X64_Y47_N24
\DATAPATH|I_REG|q[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[8]~37_combout\ = (\DATAPATH|I_REG|q\(8) & (!\DATAPATH|I_REG|q[7]~36\)) # (!\DATAPATH|I_REG|q\(8) & ((\DATAPATH|I_REG|q[7]~36\) # (GND)))
-- \DATAPATH|I_REG|q[8]~38\ = CARRY((!\DATAPATH|I_REG|q[7]~36\) # (!\DATAPATH|I_REG|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(8),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[7]~36\,
	combout => \DATAPATH|I_REG|q[8]~37_combout\,
	cout => \DATAPATH|I_REG|q[8]~38\);

-- Location: FF_X64_Y47_N25
\DATAPATH|I_REG|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[8]~37_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(8));

-- Location: LCCOMB_X64_Y47_N26
\DATAPATH|I_REG|q[9]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[9]~39_combout\ = (\DATAPATH|I_REG|q\(9) & (\DATAPATH|I_REG|q[8]~38\ $ (GND))) # (!\DATAPATH|I_REG|q\(9) & (!\DATAPATH|I_REG|q[8]~38\ & VCC))
-- \DATAPATH|I_REG|q[9]~40\ = CARRY((\DATAPATH|I_REG|q\(9) & !\DATAPATH|I_REG|q[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(9),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[8]~38\,
	combout => \DATAPATH|I_REG|q[9]~39_combout\,
	cout => \DATAPATH|I_REG|q[9]~40\);

-- Location: FF_X64_Y47_N27
\DATAPATH|I_REG|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[9]~39_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(9));

-- Location: LCCOMB_X64_Y47_N28
\DATAPATH|I_REG|q[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[10]~41_combout\ = (\DATAPATH|I_REG|q\(10) & (!\DATAPATH|I_REG|q[9]~40\)) # (!\DATAPATH|I_REG|q\(10) & ((\DATAPATH|I_REG|q[9]~40\) # (GND)))
-- \DATAPATH|I_REG|q[10]~42\ = CARRY((!\DATAPATH|I_REG|q[9]~40\) # (!\DATAPATH|I_REG|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(10),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[9]~40\,
	combout => \DATAPATH|I_REG|q[10]~41_combout\,
	cout => \DATAPATH|I_REG|q[10]~42\);

-- Location: FF_X64_Y47_N29
\DATAPATH|I_REG|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[10]~41_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(10));

-- Location: LCCOMB_X64_Y47_N30
\DATAPATH|I_REG|q[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[11]~43_combout\ = (\DATAPATH|I_REG|q\(11) & (\DATAPATH|I_REG|q[10]~42\ $ (GND))) # (!\DATAPATH|I_REG|q\(11) & (!\DATAPATH|I_REG|q[10]~42\ & VCC))
-- \DATAPATH|I_REG|q[11]~44\ = CARRY((\DATAPATH|I_REG|q\(11) & !\DATAPATH|I_REG|q[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(11),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[10]~42\,
	combout => \DATAPATH|I_REG|q[11]~43_combout\,
	cout => \DATAPATH|I_REG|q[11]~44\);

-- Location: FF_X64_Y47_N31
\DATAPATH|I_REG|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[11]~43_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(11));

-- Location: LCCOMB_X64_Y46_N0
\DATAPATH|I_REG|q[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[12]~45_combout\ = (\DATAPATH|I_REG|q\(12) & (!\DATAPATH|I_REG|q[11]~44\)) # (!\DATAPATH|I_REG|q\(12) & ((\DATAPATH|I_REG|q[11]~44\) # (GND)))
-- \DATAPATH|I_REG|q[12]~46\ = CARRY((!\DATAPATH|I_REG|q[11]~44\) # (!\DATAPATH|I_REG|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(12),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[11]~44\,
	combout => \DATAPATH|I_REG|q[12]~45_combout\,
	cout => \DATAPATH|I_REG|q[12]~46\);

-- Location: FF_X64_Y46_N1
\DATAPATH|I_REG|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[12]~45_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(12));

-- Location: LCCOMB_X64_Y46_N2
\DATAPATH|I_REG|q[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[13]~47_combout\ = (\DATAPATH|I_REG|q\(13) & (\DATAPATH|I_REG|q[12]~46\ $ (GND))) # (!\DATAPATH|I_REG|q\(13) & (!\DATAPATH|I_REG|q[12]~46\ & VCC))
-- \DATAPATH|I_REG|q[13]~48\ = CARRY((\DATAPATH|I_REG|q\(13) & !\DATAPATH|I_REG|q[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(13),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[12]~46\,
	combout => \DATAPATH|I_REG|q[13]~47_combout\,
	cout => \DATAPATH|I_REG|q[13]~48\);

-- Location: FF_X64_Y46_N3
\DATAPATH|I_REG|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[13]~47_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(13));

-- Location: LCCOMB_X64_Y46_N4
\DATAPATH|I_REG|q[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[14]~49_combout\ = (\DATAPATH|I_REG|q\(14) & (!\DATAPATH|I_REG|q[13]~48\)) # (!\DATAPATH|I_REG|q\(14) & ((\DATAPATH|I_REG|q[13]~48\) # (GND)))
-- \DATAPATH|I_REG|q[14]~50\ = CARRY((!\DATAPATH|I_REG|q[13]~48\) # (!\DATAPATH|I_REG|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(14),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[13]~48\,
	combout => \DATAPATH|I_REG|q[14]~49_combout\,
	cout => \DATAPATH|I_REG|q[14]~50\);

-- Location: FF_X64_Y46_N5
\DATAPATH|I_REG|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[14]~49_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(14));

-- Location: LCCOMB_X64_Y46_N6
\DATAPATH|I_REG|q[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[15]~51_combout\ = (\DATAPATH|I_REG|q\(15) & (\DATAPATH|I_REG|q[14]~50\ $ (GND))) # (!\DATAPATH|I_REG|q\(15) & (!\DATAPATH|I_REG|q[14]~50\ & VCC))
-- \DATAPATH|I_REG|q[15]~52\ = CARRY((\DATAPATH|I_REG|q\(15) & !\DATAPATH|I_REG|q[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(15),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[14]~50\,
	combout => \DATAPATH|I_REG|q[15]~51_combout\,
	cout => \DATAPATH|I_REG|q[15]~52\);

-- Location: FF_X64_Y46_N7
\DATAPATH|I_REG|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[15]~51_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(15));

-- Location: LCCOMB_X64_Y46_N8
\DATAPATH|I_REG|q[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[16]~53_combout\ = (\DATAPATH|I_REG|q\(16) & (!\DATAPATH|I_REG|q[15]~52\)) # (!\DATAPATH|I_REG|q\(16) & ((\DATAPATH|I_REG|q[15]~52\) # (GND)))
-- \DATAPATH|I_REG|q[16]~54\ = CARRY((!\DATAPATH|I_REG|q[15]~52\) # (!\DATAPATH|I_REG|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(16),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[15]~52\,
	combout => \DATAPATH|I_REG|q[16]~53_combout\,
	cout => \DATAPATH|I_REG|q[16]~54\);

-- Location: FF_X64_Y46_N9
\DATAPATH|I_REG|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[16]~53_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(16));

-- Location: LCCOMB_X64_Y46_N10
\DATAPATH|I_REG|q[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[17]~55_combout\ = (\DATAPATH|I_REG|q\(17) & (\DATAPATH|I_REG|q[16]~54\ $ (GND))) # (!\DATAPATH|I_REG|q\(17) & (!\DATAPATH|I_REG|q[16]~54\ & VCC))
-- \DATAPATH|I_REG|q[17]~56\ = CARRY((\DATAPATH|I_REG|q\(17) & !\DATAPATH|I_REG|q[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(17),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[16]~54\,
	combout => \DATAPATH|I_REG|q[17]~55_combout\,
	cout => \DATAPATH|I_REG|q[17]~56\);

-- Location: FF_X64_Y46_N11
\DATAPATH|I_REG|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[17]~55_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(17));

-- Location: LCCOMB_X64_Y46_N12
\DATAPATH|I_REG|q[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[18]~57_combout\ = (\DATAPATH|I_REG|q\(18) & (!\DATAPATH|I_REG|q[17]~56\)) # (!\DATAPATH|I_REG|q\(18) & ((\DATAPATH|I_REG|q[17]~56\) # (GND)))
-- \DATAPATH|I_REG|q[18]~58\ = CARRY((!\DATAPATH|I_REG|q[17]~56\) # (!\DATAPATH|I_REG|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(18),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[17]~56\,
	combout => \DATAPATH|I_REG|q[18]~57_combout\,
	cout => \DATAPATH|I_REG|q[18]~58\);

-- Location: FF_X64_Y46_N13
\DATAPATH|I_REG|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[18]~57_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(18));

-- Location: LCCOMB_X64_Y46_N14
\DATAPATH|I_REG|q[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[19]~59_combout\ = (\DATAPATH|I_REG|q\(19) & (\DATAPATH|I_REG|q[18]~58\ $ (GND))) # (!\DATAPATH|I_REG|q\(19) & (!\DATAPATH|I_REG|q[18]~58\ & VCC))
-- \DATAPATH|I_REG|q[19]~60\ = CARRY((\DATAPATH|I_REG|q\(19) & !\DATAPATH|I_REG|q[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(19),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[18]~58\,
	combout => \DATAPATH|I_REG|q[19]~59_combout\,
	cout => \DATAPATH|I_REG|q[19]~60\);

-- Location: FF_X64_Y46_N15
\DATAPATH|I_REG|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[19]~59_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(19));

-- Location: LCCOMB_X64_Y46_N16
\DATAPATH|I_REG|q[20]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[20]~61_combout\ = (\DATAPATH|I_REG|q\(20) & (!\DATAPATH|I_REG|q[19]~60\)) # (!\DATAPATH|I_REG|q\(20) & ((\DATAPATH|I_REG|q[19]~60\) # (GND)))
-- \DATAPATH|I_REG|q[20]~62\ = CARRY((!\DATAPATH|I_REG|q[19]~60\) # (!\DATAPATH|I_REG|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(20),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[19]~60\,
	combout => \DATAPATH|I_REG|q[20]~61_combout\,
	cout => \DATAPATH|I_REG|q[20]~62\);

-- Location: FF_X64_Y46_N17
\DATAPATH|I_REG|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[20]~61_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(20));

-- Location: LCCOMB_X64_Y46_N18
\DATAPATH|I_REG|q[21]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[21]~63_combout\ = (\DATAPATH|I_REG|q\(21) & (\DATAPATH|I_REG|q[20]~62\ $ (GND))) # (!\DATAPATH|I_REG|q\(21) & (!\DATAPATH|I_REG|q[20]~62\ & VCC))
-- \DATAPATH|I_REG|q[21]~64\ = CARRY((\DATAPATH|I_REG|q\(21) & !\DATAPATH|I_REG|q[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(21),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[20]~62\,
	combout => \DATAPATH|I_REG|q[21]~63_combout\,
	cout => \DATAPATH|I_REG|q[21]~64\);

-- Location: FF_X64_Y46_N19
\DATAPATH|I_REG|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[21]~63_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(21));

-- Location: LCCOMB_X64_Y46_N20
\DATAPATH|I_REG|q[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[22]~65_combout\ = (\DATAPATH|I_REG|q\(22) & (!\DATAPATH|I_REG|q[21]~64\)) # (!\DATAPATH|I_REG|q\(22) & ((\DATAPATH|I_REG|q[21]~64\) # (GND)))
-- \DATAPATH|I_REG|q[22]~66\ = CARRY((!\DATAPATH|I_REG|q[21]~64\) # (!\DATAPATH|I_REG|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(22),
	datad => VCC,
	cin => \DATAPATH|I_REG|q[21]~64\,
	combout => \DATAPATH|I_REG|q[22]~65_combout\,
	cout => \DATAPATH|I_REG|q[22]~66\);

-- Location: FF_X64_Y46_N21
\DATAPATH|I_REG|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[22]~65_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(22));

-- Location: LCCOMB_X64_Y46_N22
\DATAPATH|I_REG|q[23]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|I_REG|q[23]~67_combout\ = \DATAPATH|I_REG|q\(23) $ (!\DATAPATH|I_REG|q[22]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(23),
	cin => \DATAPATH|I_REG|q[22]~66\,
	combout => \DATAPATH|I_REG|q[23]~67_combout\);

-- Location: FF_X64_Y46_N23
\DATAPATH|I_REG|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|I_REG|q[23]~67_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|I_REG|q\(23));

-- Location: LCCOMB_X64_Y46_N28
\DATAPATH|LE_COMP|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~0_combout\ = (\DATAPATH|I_REG|q\(21)) # ((\DATAPATH|I_REG|q\(23)) # (\DATAPATH|I_REG|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|I_REG|q\(21),
	datac => \DATAPATH|I_REG|q\(23),
	datad => \DATAPATH|I_REG|q\(22),
	combout => \DATAPATH|LE_COMP|LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y47_N6
\DATAPATH|LE_COMP|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~2_combout\ = (\DATAPATH|I_REG|q\(16)) # ((\DATAPATH|I_REG|q\(15)) # ((\DATAPATH|I_REG|q\(14)) # (\DATAPATH|LE_COMP|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(16),
	datab => \DATAPATH|I_REG|q\(15),
	datac => \DATAPATH|I_REG|q\(14),
	datad => \DATAPATH|LE_COMP|LessThan0~1_combout\,
	combout => \DATAPATH|LE_COMP|LessThan0~2_combout\);

-- Location: LCCOMB_X63_Y47_N0
\DATAPATH|LE_COMP|LessThan0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|LE_COMP|LessThan0~16_combout\ = (\DATAPATH|I_REG|q\(6)) # ((\DATAPATH|I_REG|q\(8)) # ((\DATAPATH|I_REG|q\(7)) # (\DATAPATH|I_REG|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|I_REG|q\(6),
	datab => \DATAPATH|I_REG|q\(8),
	datac => \DATAPATH|I_REG|q\(7),
	datad => \DATAPATH|I_REG|q\(13),
	combout => \DATAPATH|LE_COMP|LessThan0~16_combout\);

-- Location: LCCOMB_X63_Y47_N28
\FSM|next_state.DONE_STATE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|next_state.DONE_STATE~0_combout\ = (\DATAPATH|LE_COMP|LessThan0~3_combout\) # ((\DATAPATH|LE_COMP|LessThan0~14_combout\) # (\DATAPATH|LE_COMP|LessThan0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|LE_COMP|LessThan0~3_combout\,
	datac => \DATAPATH|LE_COMP|LessThan0~14_combout\,
	datad => \DATAPATH|LE_COMP|LessThan0~16_combout\,
	combout => \FSM|next_state.DONE_STATE~0_combout\);

-- Location: LCCOMB_X63_Y47_N26
\FSM|next_state.DONE_STATE~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|next_state.DONE_STATE~1_combout\ = (\FSM|state.CHECK_LE~q\ & ((\DATAPATH|LE_COMP|LessThan0~0_combout\) # ((\DATAPATH|LE_COMP|LessThan0~2_combout\) # (\FSM|next_state.DONE_STATE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|LE_COMP|LessThan0~0_combout\,
	datab => \FSM|state.CHECK_LE~q\,
	datac => \DATAPATH|LE_COMP|LessThan0~2_combout\,
	datad => \FSM|next_state.DONE_STATE~0_combout\,
	combout => \FSM|next_state.DONE_STATE~1_combout\);

-- Location: FF_X63_Y47_N27
\FSM|state.DONE_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FSM|next_state.DONE_STATE~1_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|state.DONE_STATE~q\);

-- Location: LCCOMB_X63_Y47_N8
\FSM|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|WideOr2~0_combout\ = (\FSM|state.DONE_STATE~q\) # (\FSM|state.LOAD_N~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|state.DONE_STATE~q\,
	datad => \FSM|state.LOAD_N~q\,
	combout => \FSM|WideOr2~0_combout\);

-- Location: LCCOMB_X63_Y47_N2
\FSM|result_sel\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|result_sel~combout\ = (\FSM|WideOr2~0_combout\ & (\FSM|state.DONE_STATE~q\)) # (!\FSM|WideOr2~0_combout\ & ((\FSM|result_sel~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|state.DONE_STATE~q\,
	datac => \FSM|WideOr2~0_combout\,
	datad => \FSM|result_sel~combout\,
	combout => \FSM|result_sel~combout\);

-- Location: LCCOMB_X71_Y46_N6
\DATAPATH|X_REG|q[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[21]~feeder_combout\ = \DATAPATH|Y_REG|q\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(21),
	combout => \DATAPATH|X_REG|q[21]~feeder_combout\);

-- Location: FF_X71_Y46_N7
\DATAPATH|X_REG|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[21]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(21));

-- Location: LCCOMB_X71_Y46_N22
\DATAPATH|X_REG|q[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[18]~feeder_combout\ = \DATAPATH|Y_REG|q\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(18),
	combout => \DATAPATH|X_REG|q[18]~feeder_combout\);

-- Location: FF_X71_Y46_N23
\DATAPATH|X_REG|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[18]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(18));

-- Location: LCCOMB_X71_Y46_N0
\DATAPATH|X_REG|q[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[17]~feeder_combout\ = \DATAPATH|Y_REG|q\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(17),
	combout => \DATAPATH|X_REG|q[17]~feeder_combout\);

-- Location: FF_X71_Y46_N1
\DATAPATH|X_REG|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[17]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(17));

-- Location: LCCOMB_X71_Y46_N12
\DATAPATH|X_REG|q[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[15]~feeder_combout\ = \DATAPATH|Y_REG|q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(15),
	combout => \DATAPATH|X_REG|q[15]~feeder_combout\);

-- Location: FF_X71_Y46_N13
\DATAPATH|X_REG|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[15]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(15));

-- Location: LCCOMB_X71_Y47_N10
\DATAPATH|X_REG|q[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[11]~feeder_combout\ = \DATAPATH|Y_REG|q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(11),
	combout => \DATAPATH|X_REG|q[11]~feeder_combout\);

-- Location: FF_X71_Y47_N11
\DATAPATH|X_REG|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[11]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(11));

-- Location: LCCOMB_X71_Y47_N22
\DATAPATH|X_REG|q[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[9]~feeder_combout\ = \DATAPATH|Y_REG|q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(9),
	combout => \DATAPATH|X_REG|q[9]~feeder_combout\);

-- Location: FF_X71_Y47_N23
\DATAPATH|X_REG|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[9]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(9));

-- Location: LCCOMB_X69_Y47_N6
\DATAPATH|X_REG|q[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[7]~feeder_combout\ = \DATAPATH|Y_REG|q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(7),
	combout => \DATAPATH|X_REG|q[7]~feeder_combout\);

-- Location: FF_X69_Y47_N7
\DATAPATH|X_REG|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[7]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(7));

-- Location: LCCOMB_X70_Y47_N4
\DATAPATH|X_REG|q[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[6]~feeder_combout\ = \DATAPATH|Y_REG|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(6),
	combout => \DATAPATH|X_REG|q[6]~feeder_combout\);

-- Location: FF_X70_Y47_N5
\DATAPATH|X_REG|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[6]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(6));

-- Location: LCCOMB_X70_Y47_N2
\DATAPATH|X_REG|q[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[2]~feeder_combout\ = \DATAPATH|Y_REG|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(2),
	combout => \DATAPATH|X_REG|q[2]~feeder_combout\);

-- Location: FF_X70_Y47_N3
\DATAPATH|X_REG|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[2]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(2));

-- Location: LCCOMB_X70_Y47_N0
\DATAPATH|X_REG|q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[1]~feeder_combout\ = \DATAPATH|Y_REG|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(1),
	combout => \DATAPATH|X_REG|q[1]~feeder_combout\);

-- Location: FF_X70_Y47_N1
\DATAPATH|X_REG|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[1]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(1));

-- Location: LCCOMB_X70_Y47_N8
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

-- Location: FF_X70_Y47_N9
\DATAPATH|Y_REG|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[0]~24_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(0));

-- Location: LCCOMB_X70_Y47_N6
\DATAPATH|X_REG|q[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[0]~feeder_combout\ = \DATAPATH|Y_REG|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(0),
	combout => \DATAPATH|X_REG|q[0]~feeder_combout\);

-- Location: FF_X70_Y47_N7
\DATAPATH|X_REG|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[0]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(0));

-- Location: LCCOMB_X70_Y47_N10
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

-- Location: FF_X70_Y47_N11
\DATAPATH|Y_REG|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[1]~26_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(1));

-- Location: LCCOMB_X70_Y47_N12
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

-- Location: FF_X70_Y47_N13
\DATAPATH|Y_REG|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[2]~28_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(2));

-- Location: LCCOMB_X70_Y47_N14
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

-- Location: FF_X70_Y47_N15
\DATAPATH|Y_REG|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[3]~30_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(3));

-- Location: LCCOMB_X71_Y47_N30
\DATAPATH|X_REG|q[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[3]~feeder_combout\ = \DATAPATH|Y_REG|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(3),
	combout => \DATAPATH|X_REG|q[3]~feeder_combout\);

-- Location: FF_X71_Y47_N31
\DATAPATH|X_REG|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[3]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(3));

-- Location: LCCOMB_X70_Y47_N16
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

-- Location: FF_X70_Y47_N17
\DATAPATH|Y_REG|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[4]~32_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(4));

-- Location: LCCOMB_X69_Y47_N14
\DATAPATH|X_REG|q[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[4]~feeder_combout\ = \DATAPATH|Y_REG|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(4),
	combout => \DATAPATH|X_REG|q[4]~feeder_combout\);

-- Location: FF_X69_Y47_N15
\DATAPATH|X_REG|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[4]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(4));

-- Location: LCCOMB_X70_Y47_N18
\DATAPATH|Y_REG|q[5]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[5]~34_combout\ = (\DATAPATH|X_REG|q\(5) & ((\DATAPATH|Y_REG|q\(5) & (\DATAPATH|Y_REG|q[4]~33\ & VCC)) # (!\DATAPATH|Y_REG|q\(5) & (!\DATAPATH|Y_REG|q[4]~33\)))) # (!\DATAPATH|X_REG|q\(5) & ((\DATAPATH|Y_REG|q\(5) & 
-- (!\DATAPATH|Y_REG|q[4]~33\)) # (!\DATAPATH|Y_REG|q\(5) & ((\DATAPATH|Y_REG|q[4]~33\) # (GND)))))
-- \DATAPATH|Y_REG|q[5]~35\ = CARRY((\DATAPATH|X_REG|q\(5) & (!\DATAPATH|Y_REG|q\(5) & !\DATAPATH|Y_REG|q[4]~33\)) # (!\DATAPATH|X_REG|q\(5) & ((!\DATAPATH|Y_REG|q[4]~33\) # (!\DATAPATH|Y_REG|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|X_REG|q\(5),
	datab => \DATAPATH|Y_REG|q\(5),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[4]~33\,
	combout => \DATAPATH|Y_REG|q[5]~34_combout\,
	cout => \DATAPATH|Y_REG|q[5]~35\);

-- Location: FF_X70_Y47_N19
\DATAPATH|Y_REG|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[5]~34_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(5));

-- Location: LCCOMB_X69_Y47_N0
\DATAPATH|X_REG|q[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[5]~feeder_combout\ = \DATAPATH|Y_REG|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(5),
	combout => \DATAPATH|X_REG|q[5]~feeder_combout\);

-- Location: FF_X69_Y47_N1
\DATAPATH|X_REG|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[5]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(5));

-- Location: LCCOMB_X70_Y47_N20
\DATAPATH|Y_REG|q[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[6]~36_combout\ = ((\DATAPATH|Y_REG|q\(6) $ (\DATAPATH|X_REG|q\(6) $ (!\DATAPATH|Y_REG|q[5]~35\)))) # (GND)
-- \DATAPATH|Y_REG|q[6]~37\ = CARRY((\DATAPATH|Y_REG|q\(6) & ((\DATAPATH|X_REG|q\(6)) # (!\DATAPATH|Y_REG|q[5]~35\))) # (!\DATAPATH|Y_REG|q\(6) & (\DATAPATH|X_REG|q\(6) & !\DATAPATH|Y_REG|q[5]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(6),
	datab => \DATAPATH|X_REG|q\(6),
	datad => VCC,
	cin => \DATAPATH|Y_REG|q[5]~35\,
	combout => \DATAPATH|Y_REG|q[6]~36_combout\,
	cout => \DATAPATH|Y_REG|q[6]~37\);

-- Location: FF_X70_Y47_N21
\DATAPATH|Y_REG|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[6]~36_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(6));

-- Location: LCCOMB_X70_Y47_N22
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

-- Location: FF_X70_Y47_N23
\DATAPATH|Y_REG|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[7]~38_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(7));

-- Location: LCCOMB_X70_Y47_N24
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

-- Location: FF_X70_Y47_N25
\DATAPATH|Y_REG|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[8]~40_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(8));

-- Location: LCCOMB_X71_Y47_N20
\DATAPATH|X_REG|q[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[8]~feeder_combout\ = \DATAPATH|Y_REG|q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(8),
	combout => \DATAPATH|X_REG|q[8]~feeder_combout\);

-- Location: FF_X71_Y47_N21
\DATAPATH|X_REG|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[8]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(8));

-- Location: LCCOMB_X70_Y47_N26
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

-- Location: FF_X70_Y47_N27
\DATAPATH|Y_REG|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[9]~42_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(9));

-- Location: LCCOMB_X70_Y47_N28
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

-- Location: FF_X70_Y47_N29
\DATAPATH|Y_REG|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[10]~44_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(10));

-- Location: FF_X71_Y47_N5
\DATAPATH|X_REG|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DATAPATH|Y_REG|q\(10),
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(10));

-- Location: LCCOMB_X70_Y47_N30
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

-- Location: FF_X70_Y47_N31
\DATAPATH|Y_REG|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[11]~46_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(11));

-- Location: LCCOMB_X70_Y46_N0
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

-- Location: FF_X70_Y46_N1
\DATAPATH|Y_REG|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[12]~48_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(12));

-- Location: LCCOMB_X70_Y46_N30
\DATAPATH|X_REG|q[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[12]~feeder_combout\ = \DATAPATH|Y_REG|q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(12),
	combout => \DATAPATH|X_REG|q[12]~feeder_combout\);

-- Location: FF_X70_Y46_N31
\DATAPATH|X_REG|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[12]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(12));

-- Location: LCCOMB_X70_Y46_N2
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

-- Location: FF_X70_Y46_N3
\DATAPATH|Y_REG|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[13]~50_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(13));

-- Location: LCCOMB_X70_Y46_N28
\DATAPATH|X_REG|q[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[13]~feeder_combout\ = \DATAPATH|Y_REG|q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(13),
	combout => \DATAPATH|X_REG|q[13]~feeder_combout\);

-- Location: FF_X70_Y46_N29
\DATAPATH|X_REG|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[13]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(13));

-- Location: LCCOMB_X70_Y46_N4
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

-- Location: FF_X70_Y46_N5
\DATAPATH|Y_REG|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[14]~52_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(14));

-- Location: LCCOMB_X70_Y46_N26
\DATAPATH|X_REG|q[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[14]~feeder_combout\ = \DATAPATH|Y_REG|q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(14),
	combout => \DATAPATH|X_REG|q[14]~feeder_combout\);

-- Location: FF_X70_Y46_N27
\DATAPATH|X_REG|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[14]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(14));

-- Location: LCCOMB_X70_Y46_N6
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

-- Location: FF_X70_Y46_N7
\DATAPATH|Y_REG|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[15]~54_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(15));

-- Location: LCCOMB_X70_Y46_N8
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

-- Location: FF_X70_Y46_N9
\DATAPATH|Y_REG|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[16]~56_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(16));

-- Location: LCCOMB_X71_Y46_N2
\DATAPATH|X_REG|q[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[16]~feeder_combout\ = \DATAPATH|Y_REG|q\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(16),
	combout => \DATAPATH|X_REG|q[16]~feeder_combout\);

-- Location: FF_X71_Y46_N3
\DATAPATH|X_REG|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[16]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(16));

-- Location: LCCOMB_X70_Y46_N10
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

-- Location: FF_X70_Y46_N11
\DATAPATH|Y_REG|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[17]~58_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(17));

-- Location: LCCOMB_X70_Y46_N12
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

-- Location: FF_X70_Y46_N13
\DATAPATH|Y_REG|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[18]~60_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(18));

-- Location: LCCOMB_X70_Y46_N14
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

-- Location: FF_X70_Y46_N15
\DATAPATH|Y_REG|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[19]~62_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(19));

-- Location: LCCOMB_X70_Y46_N24
\DATAPATH|X_REG|q[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[19]~feeder_combout\ = \DATAPATH|Y_REG|q\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(19),
	combout => \DATAPATH|X_REG|q[19]~feeder_combout\);

-- Location: FF_X70_Y46_N25
\DATAPATH|X_REG|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[19]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(19));

-- Location: LCCOMB_X70_Y46_N16
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

-- Location: FF_X70_Y46_N17
\DATAPATH|Y_REG|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[20]~64_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(20));

-- Location: LCCOMB_X71_Y46_N4
\DATAPATH|X_REG|q[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[20]~feeder_combout\ = \DATAPATH|Y_REG|q\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH|Y_REG|q\(20),
	combout => \DATAPATH|X_REG|q[20]~feeder_combout\);

-- Location: FF_X71_Y46_N5
\DATAPATH|X_REG|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[20]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(20));

-- Location: LCCOMB_X70_Y46_N18
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

-- Location: FF_X70_Y46_N19
\DATAPATH|Y_REG|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[21]~66_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(21));

-- Location: LCCOMB_X71_Y46_N20
\DATAPATH|X_REG|q[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[22]~feeder_combout\ = \DATAPATH|Y_REG|q\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(22),
	combout => \DATAPATH|X_REG|q[22]~feeder_combout\);

-- Location: FF_X71_Y46_N21
\DATAPATH|X_REG|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[22]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(22));

-- Location: LCCOMB_X70_Y46_N20
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

-- Location: FF_X70_Y46_N21
\DATAPATH|Y_REG|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[22]~68_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(22));

-- Location: LCCOMB_X71_Y46_N26
\DATAPATH|X_REG|q[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|X_REG|q[23]~feeder_combout\ = \DATAPATH|Y_REG|q\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH|Y_REG|q\(23),
	combout => \DATAPATH|X_REG|q[23]~feeder_combout\);

-- Location: FF_X71_Y46_N27
\DATAPATH|X_REG|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|X_REG|q[23]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|X_REG|q\(23));

-- Location: LCCOMB_X70_Y46_N22
\DATAPATH|Y_REG|q[23]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DATAPATH|Y_REG|q[23]~70_combout\ = \DATAPATH|Y_REG|q\(23) $ (\DATAPATH|Y_REG|q[22]~69\ $ (\DATAPATH|X_REG|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(23),
	datad => \DATAPATH|X_REG|q\(23),
	cin => \DATAPATH|Y_REG|q[22]~69\,
	combout => \DATAPATH|Y_REG|q[23]~70_combout\);

-- Location: FF_X70_Y46_N23
\DATAPATH|Y_REG|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DATAPATH|Y_REG|q[23]~70_combout\,
	clrn => \button[0]~input_o\,
	ena => \FSM|y_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH|Y_REG|q\(23));

-- Location: LCCOMB_X74_Y42_N20
\U_LED0|output[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[0]~4_combout\ = (\DATAPATH|Y_REG|q\(22) & (!\DATAPATH|Y_REG|q\(21) & (\DATAPATH|Y_REG|q\(20) $ (!\DATAPATH|Y_REG|q\(23))))) # (!\DATAPATH|Y_REG|q\(22) & (\DATAPATH|Y_REG|q\(20) & (\DATAPATH|Y_REG|q\(21) $ (!\DATAPATH|Y_REG|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(21),
	datab => \DATAPATH|Y_REG|q\(20),
	datac => \DATAPATH|Y_REG|q\(22),
	datad => \DATAPATH|Y_REG|q\(23),
	combout => \U_LED0|output[0]~4_combout\);

-- Location: LCCOMB_X74_Y42_N30
\U_LED0|output[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[0]~22_combout\ = (!\FSM|result_sel~combout\ & \U_LED0|output[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED0|output[0]~4_combout\,
	combout => \U_LED0|output[0]~22_combout\);

-- Location: LCCOMB_X74_Y42_N28
\U_LED0|output[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[1]~7_combout\ = (\DATAPATH|Y_REG|q\(21) & ((\DATAPATH|Y_REG|q\(20) & ((\DATAPATH|Y_REG|q\(23)))) # (!\DATAPATH|Y_REG|q\(20) & (\DATAPATH|Y_REG|q\(22))))) # (!\DATAPATH|Y_REG|q\(21) & (\DATAPATH|Y_REG|q\(22) & (\DATAPATH|Y_REG|q\(20) $ 
-- (\DATAPATH|Y_REG|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(21),
	datab => \DATAPATH|Y_REG|q\(20),
	datac => \DATAPATH|Y_REG|q\(22),
	datad => \DATAPATH|Y_REG|q\(23),
	combout => \U_LED0|output[1]~7_combout\);

-- Location: LCCOMB_X74_Y42_N6
\U_LED0|output[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[1]~23_combout\ = (!\FSM|result_sel~combout\ & \U_LED0|output[1]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED0|output[1]~7_combout\,
	combout => \U_LED0|output[1]~23_combout\);

-- Location: LCCOMB_X74_Y42_N12
\U_LED0|output[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[2]~20_combout\ = (\DATAPATH|Y_REG|q\(20) & (\DATAPATH|Y_REG|q\(22) & !\DATAPATH|Y_REG|q\(21))) # (!\DATAPATH|Y_REG|q\(20) & (!\DATAPATH|Y_REG|q\(22) & \DATAPATH|Y_REG|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH|Y_REG|q\(20),
	datac => \DATAPATH|Y_REG|q\(22),
	datad => \DATAPATH|Y_REG|q\(21),
	combout => \U_LED0|output[2]~20_combout\);

-- Location: LCCOMB_X74_Y42_N22
\U_LED0|output[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[2]~21_combout\ = (!\FSM|result_sel~combout\ & ((\DATAPATH|Y_REG|q\(23) & (\DATAPATH|Y_REG|q\(22) & !\U_LED0|output[2]~20_combout\)) # (!\DATAPATH|Y_REG|q\(23) & (!\DATAPATH|Y_REG|q\(22) & \U_LED0|output[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datab => \DATAPATH|Y_REG|q\(23),
	datac => \DATAPATH|Y_REG|q\(22),
	datad => \U_LED0|output[2]~20_combout\,
	combout => \U_LED0|output[2]~21_combout\);

-- Location: LCCOMB_X74_Y42_N4
\U_LED0|output[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[3]~10_combout\ = (\DATAPATH|Y_REG|q\(21) & ((\DATAPATH|Y_REG|q\(20) & (\DATAPATH|Y_REG|q\(22))) # (!\DATAPATH|Y_REG|q\(20) & (!\DATAPATH|Y_REG|q\(22) & \DATAPATH|Y_REG|q\(23))))) # (!\DATAPATH|Y_REG|q\(21) & (!\DATAPATH|Y_REG|q\(23) & 
-- (\DATAPATH|Y_REG|q\(20) $ (\DATAPATH|Y_REG|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(21),
	datab => \DATAPATH|Y_REG|q\(20),
	datac => \DATAPATH|Y_REG|q\(22),
	datad => \DATAPATH|Y_REG|q\(23),
	combout => \U_LED0|output[3]~10_combout\);

-- Location: LCCOMB_X74_Y42_N2
\U_LED0|output[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[3]~24_combout\ = (\U_LED0|output[3]~10_combout\ & !\FSM|result_sel~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_LED0|output[3]~10_combout\,
	datac => \FSM|result_sel~combout\,
	combout => \U_LED0|output[3]~24_combout\);

-- Location: LCCOMB_X74_Y42_N8
\U_LED0|output[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[4]~13_combout\ = (\DATAPATH|Y_REG|q\(21) & (\DATAPATH|Y_REG|q\(20) & ((!\DATAPATH|Y_REG|q\(23))))) # (!\DATAPATH|Y_REG|q\(21) & ((\DATAPATH|Y_REG|q\(22) & ((!\DATAPATH|Y_REG|q\(23)))) # (!\DATAPATH|Y_REG|q\(22) & (\DATAPATH|Y_REG|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(21),
	datab => \DATAPATH|Y_REG|q\(20),
	datac => \DATAPATH|Y_REG|q\(22),
	datad => \DATAPATH|Y_REG|q\(23),
	combout => \U_LED0|output[4]~13_combout\);

-- Location: LCCOMB_X74_Y42_N10
\U_LED0|output[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[4]~25_combout\ = (\U_LED0|output[4]~13_combout\ & !\FSM|result_sel~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_LED0|output[4]~13_combout\,
	datac => \FSM|result_sel~combout\,
	combout => \U_LED0|output[4]~25_combout\);

-- Location: LCCOMB_X74_Y42_N16
\U_LED0|output[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[5]~16_combout\ = (\DATAPATH|Y_REG|q\(21) & (!\DATAPATH|Y_REG|q\(23) & ((\DATAPATH|Y_REG|q\(20)) # (!\DATAPATH|Y_REG|q\(22))))) # (!\DATAPATH|Y_REG|q\(21) & (\DATAPATH|Y_REG|q\(20) & (\DATAPATH|Y_REG|q\(22) $ (!\DATAPATH|Y_REG|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(21),
	datab => \DATAPATH|Y_REG|q\(20),
	datac => \DATAPATH|Y_REG|q\(22),
	datad => \DATAPATH|Y_REG|q\(23),
	combout => \U_LED0|output[5]~16_combout\);

-- Location: LCCOMB_X74_Y42_N18
\U_LED0|output[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[5]~26_combout\ = (!\FSM|result_sel~combout\ & \U_LED0|output[5]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED0|output[5]~16_combout\,
	combout => \U_LED0|output[5]~26_combout\);

-- Location: LCCOMB_X74_Y42_N24
\U_LED0|output[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[6]~19_combout\ = (\DATAPATH|Y_REG|q\(20) & (!\DATAPATH|Y_REG|q\(23) & (\DATAPATH|Y_REG|q\(21) $ (!\DATAPATH|Y_REG|q\(22))))) # (!\DATAPATH|Y_REG|q\(20) & (!\DATAPATH|Y_REG|q\(21) & (\DATAPATH|Y_REG|q\(22) $ (!\DATAPATH|Y_REG|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(21),
	datab => \DATAPATH|Y_REG|q\(20),
	datac => \DATAPATH|Y_REG|q\(22),
	datad => \DATAPATH|Y_REG|q\(23),
	combout => \U_LED0|output[6]~19_combout\);

-- Location: LCCOMB_X74_Y42_N14
\U_LED0|output[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|output[6]~27_combout\ = (\FSM|result_sel~combout\) # (\U_LED0|output[6]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED0|output[6]~19_combout\,
	combout => \U_LED0|output[6]~27_combout\);

-- Location: LCCOMB_X62_Y47_N18
\FSM|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|Selector8~0_combout\ = (\FSM|state.DONE_STATE~q\) # ((!\button[1]~input_o\ & !\FSM|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datac => \FSM|state.IDLE~q\,
	datad => \FSM|state.DONE_STATE~q\,
	combout => \FSM|Selector8~0_combout\);

-- Location: LCCOMB_X62_Y47_N22
\FSM|done\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM|done~combout\ = (\FSM|Selector8~0_combout\ & (\FSM|state.DONE_STATE~q\)) # (!\FSM|Selector8~0_combout\ & ((\FSM|done~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|state.DONE_STATE~q\,
	datac => \FSM|done~combout\,
	datad => \FSM|Selector8~0_combout\,
	combout => \FSM|done~combout\);

-- Location: LCCOMB_X77_Y42_N28
\U_LED1|output[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[0]~4_combout\ = (\DATAPATH|Y_REG|q\(18) & (!\DATAPATH|Y_REG|q\(17) & (\DATAPATH|Y_REG|q\(19) $ (!\DATAPATH|Y_REG|q\(16))))) # (!\DATAPATH|Y_REG|q\(18) & (\DATAPATH|Y_REG|q\(16) & (\DATAPATH|Y_REG|q\(19) $ (!\DATAPATH|Y_REG|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(18),
	datab => \DATAPATH|Y_REG|q\(19),
	datac => \DATAPATH|Y_REG|q\(17),
	datad => \DATAPATH|Y_REG|q\(16),
	combout => \U_LED1|output[0]~4_combout\);

-- Location: LCCOMB_X77_Y42_N26
\U_LED1|output[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[0]~22_combout\ = (!\FSM|result_sel~combout\ & \U_LED1|output[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED1|output[0]~4_combout\,
	combout => \U_LED1|output[0]~22_combout\);

-- Location: LCCOMB_X77_Y42_N0
\U_LED1|output[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[1]~7_combout\ = (\DATAPATH|Y_REG|q\(19) & ((\DATAPATH|Y_REG|q\(16) & ((\DATAPATH|Y_REG|q\(17)))) # (!\DATAPATH|Y_REG|q\(16) & (\DATAPATH|Y_REG|q\(18))))) # (!\DATAPATH|Y_REG|q\(19) & (\DATAPATH|Y_REG|q\(18) & (\DATAPATH|Y_REG|q\(17) $ 
-- (\DATAPATH|Y_REG|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(18),
	datab => \DATAPATH|Y_REG|q\(19),
	datac => \DATAPATH|Y_REG|q\(17),
	datad => \DATAPATH|Y_REG|q\(16),
	combout => \U_LED1|output[1]~7_combout\);

-- Location: LCCOMB_X77_Y42_N30
\U_LED1|output[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[1]~23_combout\ = (!\FSM|result_sel~combout\ & \U_LED1|output[1]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED1|output[1]~7_combout\,
	combout => \U_LED1|output[1]~23_combout\);

-- Location: LCCOMB_X77_Y42_N20
\U_LED1|output[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[2]~20_combout\ = (\DATAPATH|Y_REG|q\(18) & (((!\DATAPATH|Y_REG|q\(17) & \DATAPATH|Y_REG|q\(16))))) # (!\DATAPATH|Y_REG|q\(18) & (!\DATAPATH|Y_REG|q\(19) & (\DATAPATH|Y_REG|q\(17) & !\DATAPATH|Y_REG|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(18),
	datab => \DATAPATH|Y_REG|q\(19),
	datac => \DATAPATH|Y_REG|q\(17),
	datad => \DATAPATH|Y_REG|q\(16),
	combout => \U_LED1|output[2]~20_combout\);

-- Location: LCCOMB_X77_Y42_N6
\U_LED1|output[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[2]~21_combout\ = (!\FSM|result_sel~combout\ & ((\DATAPATH|Y_REG|q\(18) & (\DATAPATH|Y_REG|q\(19) & !\U_LED1|output[2]~20_combout\)) # (!\DATAPATH|Y_REG|q\(18) & ((\U_LED1|output[2]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(18),
	datab => \DATAPATH|Y_REG|q\(19),
	datac => \FSM|result_sel~combout\,
	datad => \U_LED1|output[2]~20_combout\,
	combout => \U_LED1|output[2]~21_combout\);

-- Location: LCCOMB_X77_Y42_N4
\U_LED1|output[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[3]~10_combout\ = (\DATAPATH|Y_REG|q\(17) & ((\DATAPATH|Y_REG|q\(18) & ((\DATAPATH|Y_REG|q\(16)))) # (!\DATAPATH|Y_REG|q\(18) & (\DATAPATH|Y_REG|q\(19) & !\DATAPATH|Y_REG|q\(16))))) # (!\DATAPATH|Y_REG|q\(17) & (!\DATAPATH|Y_REG|q\(19) & 
-- (\DATAPATH|Y_REG|q\(18) $ (\DATAPATH|Y_REG|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(18),
	datab => \DATAPATH|Y_REG|q\(19),
	datac => \DATAPATH|Y_REG|q\(17),
	datad => \DATAPATH|Y_REG|q\(16),
	combout => \U_LED1|output[3]~10_combout\);

-- Location: LCCOMB_X77_Y42_N14
\U_LED1|output[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[3]~24_combout\ = (\U_LED1|output[3]~10_combout\ & !\FSM|result_sel~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_LED1|output[3]~10_combout\,
	datac => \FSM|result_sel~combout\,
	combout => \U_LED1|output[3]~24_combout\);

-- Location: LCCOMB_X77_Y42_N16
\U_LED1|output[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[4]~13_combout\ = (\DATAPATH|Y_REG|q\(17) & (((!\DATAPATH|Y_REG|q\(19) & \DATAPATH|Y_REG|q\(16))))) # (!\DATAPATH|Y_REG|q\(17) & ((\DATAPATH|Y_REG|q\(18) & (!\DATAPATH|Y_REG|q\(19))) # (!\DATAPATH|Y_REG|q\(18) & ((\DATAPATH|Y_REG|q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(18),
	datab => \DATAPATH|Y_REG|q\(19),
	datac => \DATAPATH|Y_REG|q\(17),
	datad => \DATAPATH|Y_REG|q\(16),
	combout => \U_LED1|output[4]~13_combout\);

-- Location: LCCOMB_X77_Y42_N2
\U_LED1|output[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[4]~25_combout\ = (!\FSM|result_sel~combout\ & \U_LED1|output[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED1|output[4]~13_combout\,
	combout => \U_LED1|output[4]~25_combout\);

-- Location: LCCOMB_X77_Y42_N12
\U_LED1|output[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[5]~16_combout\ = (\DATAPATH|Y_REG|q\(18) & (\DATAPATH|Y_REG|q\(16) & (\DATAPATH|Y_REG|q\(19) $ (\DATAPATH|Y_REG|q\(17))))) # (!\DATAPATH|Y_REG|q\(18) & (!\DATAPATH|Y_REG|q\(19) & ((\DATAPATH|Y_REG|q\(17)) # (\DATAPATH|Y_REG|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(18),
	datab => \DATAPATH|Y_REG|q\(19),
	datac => \DATAPATH|Y_REG|q\(17),
	datad => \DATAPATH|Y_REG|q\(16),
	combout => \U_LED1|output[5]~16_combout\);

-- Location: LCCOMB_X77_Y42_N22
\U_LED1|output[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[5]~26_combout\ = (!\FSM|result_sel~combout\ & \U_LED1|output[5]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED1|output[5]~16_combout\,
	combout => \U_LED1|output[5]~26_combout\);

-- Location: LCCOMB_X77_Y42_N24
\U_LED1|output[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[6]~19_combout\ = (\DATAPATH|Y_REG|q\(16) & (!\DATAPATH|Y_REG|q\(19) & (\DATAPATH|Y_REG|q\(18) $ (!\DATAPATH|Y_REG|q\(17))))) # (!\DATAPATH|Y_REG|q\(16) & (!\DATAPATH|Y_REG|q\(17) & (\DATAPATH|Y_REG|q\(18) $ (!\DATAPATH|Y_REG|q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(18),
	datab => \DATAPATH|Y_REG|q\(19),
	datac => \DATAPATH|Y_REG|q\(17),
	datad => \DATAPATH|Y_REG|q\(16),
	combout => \U_LED1|output[6]~19_combout\);

-- Location: LCCOMB_X77_Y42_N10
\U_LED1|output[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED1|output[6]~27_combout\ = (\FSM|result_sel~combout\) # (\U_LED1|output[6]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED1|output[6]~19_combout\,
	combout => \U_LED1|output[6]~27_combout\);

-- Location: LCCOMB_X71_Y43_N8
\U_LED2|output[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[0]~4_combout\ = (\DATAPATH|Y_REG|q\(15) & (\DATAPATH|Y_REG|q\(12) & (\DATAPATH|Y_REG|q\(13) $ (\DATAPATH|Y_REG|q\(14))))) # (!\DATAPATH|Y_REG|q\(15) & (!\DATAPATH|Y_REG|q\(13) & (\DATAPATH|Y_REG|q\(12) $ (\DATAPATH|Y_REG|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(12),
	datab => \DATAPATH|Y_REG|q\(13),
	datac => \DATAPATH|Y_REG|q\(15),
	datad => \DATAPATH|Y_REG|q\(14),
	combout => \U_LED2|output[0]~4_combout\);

-- Location: LCCOMB_X71_Y43_N18
\U_LED2|output[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[0]~22_combout\ = (\U_LED2|output[0]~4_combout\ & !\FSM|result_sel~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_LED2|output[0]~4_combout\,
	datad => \FSM|result_sel~combout\,
	combout => \U_LED2|output[0]~22_combout\);

-- Location: LCCOMB_X71_Y43_N24
\U_LED2|output[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[1]~7_combout\ = (\DATAPATH|Y_REG|q\(13) & ((\DATAPATH|Y_REG|q\(12) & (\DATAPATH|Y_REG|q\(15))) # (!\DATAPATH|Y_REG|q\(12) & ((\DATAPATH|Y_REG|q\(14)))))) # (!\DATAPATH|Y_REG|q\(13) & (\DATAPATH|Y_REG|q\(14) & (\DATAPATH|Y_REG|q\(12) $ 
-- (\DATAPATH|Y_REG|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(12),
	datab => \DATAPATH|Y_REG|q\(13),
	datac => \DATAPATH|Y_REG|q\(15),
	datad => \DATAPATH|Y_REG|q\(14),
	combout => \U_LED2|output[1]~7_combout\);

-- Location: LCCOMB_X71_Y43_N30
\U_LED2|output[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[1]~23_combout\ = (!\FSM|result_sel~combout\ & \U_LED2|output[1]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM|result_sel~combout\,
	datad => \U_LED2|output[1]~7_combout\,
	combout => \U_LED2|output[1]~23_combout\);

-- Location: LCCOMB_X71_Y43_N12
\U_LED2|output[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[2]~20_combout\ = (\DATAPATH|Y_REG|q\(12) & (!\DATAPATH|Y_REG|q\(13) & \DATAPATH|Y_REG|q\(14))) # (!\DATAPATH|Y_REG|q\(12) & (\DATAPATH|Y_REG|q\(13) & !\DATAPATH|Y_REG|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(12),
	datac => \DATAPATH|Y_REG|q\(13),
	datad => \DATAPATH|Y_REG|q\(14),
	combout => \U_LED2|output[2]~20_combout\);

-- Location: LCCOMB_X71_Y43_N10
\U_LED2|output[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[2]~21_combout\ = (!\FSM|result_sel~combout\ & ((\DATAPATH|Y_REG|q\(14) & (\DATAPATH|Y_REG|q\(15) & !\U_LED2|output[2]~20_combout\)) # (!\DATAPATH|Y_REG|q\(14) & (!\DATAPATH|Y_REG|q\(15) & \U_LED2|output[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(14),
	datab => \FSM|result_sel~combout\,
	datac => \DATAPATH|Y_REG|q\(15),
	datad => \U_LED2|output[2]~20_combout\,
	combout => \U_LED2|output[2]~21_combout\);

-- Location: LCCOMB_X71_Y43_N4
\U_LED2|output[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[3]~10_combout\ = (\DATAPATH|Y_REG|q\(13) & ((\DATAPATH|Y_REG|q\(12) & ((\DATAPATH|Y_REG|q\(14)))) # (!\DATAPATH|Y_REG|q\(12) & (\DATAPATH|Y_REG|q\(15) & !\DATAPATH|Y_REG|q\(14))))) # (!\DATAPATH|Y_REG|q\(13) & (!\DATAPATH|Y_REG|q\(15) & 
-- (\DATAPATH|Y_REG|q\(12) $ (\DATAPATH|Y_REG|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(12),
	datab => \DATAPATH|Y_REG|q\(13),
	datac => \DATAPATH|Y_REG|q\(15),
	datad => \DATAPATH|Y_REG|q\(14),
	combout => \U_LED2|output[3]~10_combout\);

-- Location: LCCOMB_X71_Y50_N8
\U_LED2|output[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[3]~24_combout\ = (!\FSM|result_sel~combout\ & \U_LED2|output[3]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datad => \U_LED2|output[3]~10_combout\,
	combout => \U_LED2|output[3]~24_combout\);

-- Location: LCCOMB_X71_Y43_N22
\U_LED2|output[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[4]~13_combout\ = (\DATAPATH|Y_REG|q\(13) & (\DATAPATH|Y_REG|q\(12) & (!\DATAPATH|Y_REG|q\(15)))) # (!\DATAPATH|Y_REG|q\(13) & ((\DATAPATH|Y_REG|q\(14) & ((!\DATAPATH|Y_REG|q\(15)))) # (!\DATAPATH|Y_REG|q\(14) & (\DATAPATH|Y_REG|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(12),
	datab => \DATAPATH|Y_REG|q\(13),
	datac => \DATAPATH|Y_REG|q\(15),
	datad => \DATAPATH|Y_REG|q\(14),
	combout => \U_LED2|output[4]~13_combout\);

-- Location: LCCOMB_X71_Y43_N16
\U_LED2|output[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[4]~25_combout\ = (\U_LED2|output[4]~13_combout\ & !\FSM|result_sel~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED2|output[4]~13_combout\,
	datad => \FSM|result_sel~combout\,
	combout => \U_LED2|output[4]~25_combout\);

-- Location: LCCOMB_X71_Y43_N14
\U_LED2|output[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[5]~16_combout\ = (\DATAPATH|Y_REG|q\(12) & (\DATAPATH|Y_REG|q\(15) $ (((\DATAPATH|Y_REG|q\(13)) # (!\DATAPATH|Y_REG|q\(14)))))) # (!\DATAPATH|Y_REG|q\(12) & (\DATAPATH|Y_REG|q\(13) & (!\DATAPATH|Y_REG|q\(15) & !\DATAPATH|Y_REG|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(12),
	datab => \DATAPATH|Y_REG|q\(13),
	datac => \DATAPATH|Y_REG|q\(15),
	datad => \DATAPATH|Y_REG|q\(14),
	combout => \U_LED2|output[5]~16_combout\);

-- Location: LCCOMB_X71_Y43_N20
\U_LED2|output[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[5]~26_combout\ = (\U_LED2|output[5]~16_combout\ & !\FSM|result_sel~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_LED2|output[5]~16_combout\,
	datad => \FSM|result_sel~combout\,
	combout => \U_LED2|output[5]~26_combout\);

-- Location: LCCOMB_X71_Y43_N26
\U_LED2|output[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[6]~19_combout\ = (\DATAPATH|Y_REG|q\(12) & (!\DATAPATH|Y_REG|q\(15) & (\DATAPATH|Y_REG|q\(13) $ (!\DATAPATH|Y_REG|q\(14))))) # (!\DATAPATH|Y_REG|q\(12) & (!\DATAPATH|Y_REG|q\(13) & (\DATAPATH|Y_REG|q\(15) $ (!\DATAPATH|Y_REG|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(12),
	datab => \DATAPATH|Y_REG|q\(13),
	datac => \DATAPATH|Y_REG|q\(15),
	datad => \DATAPATH|Y_REG|q\(14),
	combout => \U_LED2|output[6]~19_combout\);

-- Location: LCCOMB_X71_Y43_N28
\U_LED2|output[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED2|output[6]~27_combout\ = (\U_LED2|output[6]~19_combout\) # (\FSM|result_sel~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_LED2|output[6]~19_combout\,
	datad => \FSM|result_sel~combout\,
	combout => \U_LED2|output[6]~27_combout\);

-- Location: LCCOMB_X71_Y47_N14
\U_LED3|output[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[0]~4_combout\ = (\DATAPATH|Y_REG|q\(10) & (!\DATAPATH|Y_REG|q\(9) & (\DATAPATH|Y_REG|q\(8) $ (!\DATAPATH|Y_REG|q\(11))))) # (!\DATAPATH|Y_REG|q\(10) & (\DATAPATH|Y_REG|q\(8) & (\DATAPATH|Y_REG|q\(9) $ (!\DATAPATH|Y_REG|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(9),
	datab => \DATAPATH|Y_REG|q\(8),
	datac => \DATAPATH|Y_REG|q\(10),
	datad => \DATAPATH|Y_REG|q\(11),
	combout => \U_LED3|output[0]~4_combout\);

-- Location: LCCOMB_X72_Y47_N8
\U_LED3|output[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[0]~22_combout\ = (!\FSM|result_sel~combout\ & \U_LED3|output[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datad => \U_LED3|output[0]~4_combout\,
	combout => \U_LED3|output[0]~22_combout\);

-- Location: LCCOMB_X71_Y47_N16
\U_LED3|output[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[1]~7_combout\ = (\DATAPATH|Y_REG|q\(9) & ((\DATAPATH|Y_REG|q\(8) & ((\DATAPATH|Y_REG|q\(11)))) # (!\DATAPATH|Y_REG|q\(8) & (\DATAPATH|Y_REG|q\(10))))) # (!\DATAPATH|Y_REG|q\(9) & (\DATAPATH|Y_REG|q\(10) & (\DATAPATH|Y_REG|q\(8) $ 
-- (\DATAPATH|Y_REG|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(9),
	datab => \DATAPATH|Y_REG|q\(8),
	datac => \DATAPATH|Y_REG|q\(10),
	datad => \DATAPATH|Y_REG|q\(11),
	combout => \U_LED3|output[1]~7_combout\);

-- Location: LCCOMB_X71_Y50_N14
\U_LED3|output[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[1]~23_combout\ = (!\FSM|result_sel~combout\ & \U_LED3|output[1]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datad => \U_LED3|output[1]~7_combout\,
	combout => \U_LED3|output[1]~23_combout\);

-- Location: LCCOMB_X71_Y47_N0
\U_LED3|output[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[2]~20_combout\ = (\DATAPATH|Y_REG|q\(9) & (!\DATAPATH|Y_REG|q\(8) & (!\DATAPATH|Y_REG|q\(10) & !\DATAPATH|Y_REG|q\(11)))) # (!\DATAPATH|Y_REG|q\(9) & (\DATAPATH|Y_REG|q\(8) & (\DATAPATH|Y_REG|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(9),
	datab => \DATAPATH|Y_REG|q\(8),
	datac => \DATAPATH|Y_REG|q\(10),
	datad => \DATAPATH|Y_REG|q\(11),
	combout => \U_LED3|output[2]~20_combout\);

-- Location: LCCOMB_X71_Y47_N28
\U_LED3|output[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[2]~21_combout\ = (!\FSM|result_sel~combout\ & ((\DATAPATH|Y_REG|q\(10) & (\DATAPATH|Y_REG|q\(11) & !\U_LED3|output[2]~20_combout\)) # (!\DATAPATH|Y_REG|q\(10) & ((\U_LED3|output[2]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datab => \DATAPATH|Y_REG|q\(11),
	datac => \DATAPATH|Y_REG|q\(10),
	datad => \U_LED3|output[2]~20_combout\,
	combout => \U_LED3|output[2]~21_combout\);

-- Location: LCCOMB_X71_Y47_N2
\U_LED3|output[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[3]~10_combout\ = (\DATAPATH|Y_REG|q\(9) & ((\DATAPATH|Y_REG|q\(8) & (\DATAPATH|Y_REG|q\(10))) # (!\DATAPATH|Y_REG|q\(8) & (!\DATAPATH|Y_REG|q\(10) & \DATAPATH|Y_REG|q\(11))))) # (!\DATAPATH|Y_REG|q\(9) & (!\DATAPATH|Y_REG|q\(11) & 
-- (\DATAPATH|Y_REG|q\(8) $ (\DATAPATH|Y_REG|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(9),
	datab => \DATAPATH|Y_REG|q\(8),
	datac => \DATAPATH|Y_REG|q\(10),
	datad => \DATAPATH|Y_REG|q\(11),
	combout => \U_LED3|output[3]~10_combout\);

-- Location: LCCOMB_X71_Y47_N8
\U_LED3|output[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[3]~24_combout\ = (!\FSM|result_sel~combout\ & \U_LED3|output[3]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datad => \U_LED3|output[3]~10_combout\,
	combout => \U_LED3|output[3]~24_combout\);

-- Location: LCCOMB_X71_Y47_N4
\U_LED3|output[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[4]~13_combout\ = (\DATAPATH|Y_REG|q\(9) & (\DATAPATH|Y_REG|q\(8) & ((!\DATAPATH|Y_REG|q\(11))))) # (!\DATAPATH|Y_REG|q\(9) & ((\DATAPATH|Y_REG|q\(10) & ((!\DATAPATH|Y_REG|q\(11)))) # (!\DATAPATH|Y_REG|q\(10) & (\DATAPATH|Y_REG|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(9),
	datab => \DATAPATH|Y_REG|q\(8),
	datac => \DATAPATH|Y_REG|q\(10),
	datad => \DATAPATH|Y_REG|q\(11),
	combout => \U_LED3|output[4]~13_combout\);

-- Location: LCCOMB_X71_Y47_N6
\U_LED3|output[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[4]~25_combout\ = (\U_LED3|output[4]~13_combout\ & !\FSM|result_sel~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_LED3|output[4]~13_combout\,
	datad => \FSM|result_sel~combout\,
	combout => \U_LED3|output[4]~25_combout\);

-- Location: LCCOMB_X71_Y47_N24
\U_LED3|output[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[5]~16_combout\ = (\DATAPATH|Y_REG|q\(9) & (!\DATAPATH|Y_REG|q\(11) & ((\DATAPATH|Y_REG|q\(8)) # (!\DATAPATH|Y_REG|q\(10))))) # (!\DATAPATH|Y_REG|q\(9) & (\DATAPATH|Y_REG|q\(8) & (\DATAPATH|Y_REG|q\(10) $ (!\DATAPATH|Y_REG|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(9),
	datab => \DATAPATH|Y_REG|q\(8),
	datac => \DATAPATH|Y_REG|q\(10),
	datad => \DATAPATH|Y_REG|q\(11),
	combout => \U_LED3|output[5]~16_combout\);

-- Location: LCCOMB_X71_Y47_N18
\U_LED3|output[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[5]~26_combout\ = (!\FSM|result_sel~combout\ & \U_LED3|output[5]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datad => \U_LED3|output[5]~16_combout\,
	combout => \U_LED3|output[5]~26_combout\);

-- Location: LCCOMB_X71_Y47_N12
\U_LED3|output[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[6]~19_combout\ = (\DATAPATH|Y_REG|q\(8) & (!\DATAPATH|Y_REG|q\(11) & (\DATAPATH|Y_REG|q\(9) $ (!\DATAPATH|Y_REG|q\(10))))) # (!\DATAPATH|Y_REG|q\(8) & (!\DATAPATH|Y_REG|q\(9) & (\DATAPATH|Y_REG|q\(10) $ (!\DATAPATH|Y_REG|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(9),
	datab => \DATAPATH|Y_REG|q\(8),
	datac => \DATAPATH|Y_REG|q\(10),
	datad => \DATAPATH|Y_REG|q\(11),
	combout => \U_LED3|output[6]~19_combout\);

-- Location: LCCOMB_X71_Y47_N26
\U_LED3|output[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED3|output[6]~27_combout\ = (\FSM|result_sel~combout\) # (\U_LED3|output[6]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datad => \U_LED3|output[6]~19_combout\,
	combout => \U_LED3|output[6]~27_combout\);

-- Location: LCCOMB_X69_Y47_N2
\U_LED4|output[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[0]~4_combout\ = (\DATAPATH|Y_REG|q\(7) & (\DATAPATH|Y_REG|q\(4) & (\DATAPATH|Y_REG|q\(6) $ (\DATAPATH|Y_REG|q\(5))))) # (!\DATAPATH|Y_REG|q\(7) & (!\DATAPATH|Y_REG|q\(5) & (\DATAPATH|Y_REG|q\(4) $ (\DATAPATH|Y_REG|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(7),
	datab => \DATAPATH|Y_REG|q\(4),
	datac => \DATAPATH|Y_REG|q\(6),
	datad => \DATAPATH|Y_REG|q\(5),
	combout => \U_LED4|output[0]~4_combout\);

-- Location: LCCOMB_X69_Y50_N12
\U_LED4|output[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[0]~22_combout\ = (!\FSM|result_sel~combout\ & \U_LED4|output[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED4|output[0]~4_combout\,
	combout => \U_LED4|output[0]~22_combout\);

-- Location: LCCOMB_X69_Y47_N28
\U_LED4|output[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[1]~7_combout\ = (\DATAPATH|Y_REG|q\(7) & ((\DATAPATH|Y_REG|q\(4) & ((\DATAPATH|Y_REG|q\(5)))) # (!\DATAPATH|Y_REG|q\(4) & (\DATAPATH|Y_REG|q\(6))))) # (!\DATAPATH|Y_REG|q\(7) & (\DATAPATH|Y_REG|q\(6) & (\DATAPATH|Y_REG|q\(4) $ 
-- (\DATAPATH|Y_REG|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(7),
	datab => \DATAPATH|Y_REG|q\(4),
	datac => \DATAPATH|Y_REG|q\(6),
	datad => \DATAPATH|Y_REG|q\(5),
	combout => \U_LED4|output[1]~7_combout\);

-- Location: LCCOMB_X69_Y47_N26
\U_LED4|output[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[1]~23_combout\ = (!\FSM|result_sel~combout\ & \U_LED4|output[1]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED4|output[1]~7_combout\,
	combout => \U_LED4|output[1]~23_combout\);

-- Location: LCCOMB_X69_Y47_N12
\U_LED4|output[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[2]~20_combout\ = (\DATAPATH|Y_REG|q\(4) & (((\DATAPATH|Y_REG|q\(6) & !\DATAPATH|Y_REG|q\(5))))) # (!\DATAPATH|Y_REG|q\(4) & (!\DATAPATH|Y_REG|q\(7) & (!\DATAPATH|Y_REG|q\(6) & \DATAPATH|Y_REG|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(7),
	datab => \DATAPATH|Y_REG|q\(4),
	datac => \DATAPATH|Y_REG|q\(6),
	datad => \DATAPATH|Y_REG|q\(5),
	combout => \U_LED4|output[2]~20_combout\);

-- Location: LCCOMB_X69_Y47_N16
\U_LED4|output[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[2]~21_combout\ = (!\FSM|result_sel~combout\ & ((\DATAPATH|Y_REG|q\(6) & (\DATAPATH|Y_REG|q\(7) & !\U_LED4|output[2]~20_combout\)) # (!\DATAPATH|Y_REG|q\(6) & ((\U_LED4|output[2]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(6),
	datab => \DATAPATH|Y_REG|q\(7),
	datac => \FSM|result_sel~combout\,
	datad => \U_LED4|output[2]~20_combout\,
	combout => \U_LED4|output[2]~21_combout\);

-- Location: LCCOMB_X69_Y47_N8
\U_LED4|output[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[3]~10_combout\ = (\DATAPATH|Y_REG|q\(5) & ((\DATAPATH|Y_REG|q\(4) & ((\DATAPATH|Y_REG|q\(6)))) # (!\DATAPATH|Y_REG|q\(4) & (\DATAPATH|Y_REG|q\(7) & !\DATAPATH|Y_REG|q\(6))))) # (!\DATAPATH|Y_REG|q\(5) & (!\DATAPATH|Y_REG|q\(7) & 
-- (\DATAPATH|Y_REG|q\(4) $ (\DATAPATH|Y_REG|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(7),
	datab => \DATAPATH|Y_REG|q\(4),
	datac => \DATAPATH|Y_REG|q\(6),
	datad => \DATAPATH|Y_REG|q\(5),
	combout => \U_LED4|output[3]~10_combout\);

-- Location: LCCOMB_X69_Y47_N22
\U_LED4|output[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[3]~24_combout\ = (\U_LED4|output[3]~10_combout\ & !\FSM|result_sel~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_LED4|output[3]~10_combout\,
	datac => \FSM|result_sel~combout\,
	combout => \U_LED4|output[3]~24_combout\);

-- Location: LCCOMB_X69_Y47_N20
\U_LED4|output[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[4]~13_combout\ = (\DATAPATH|Y_REG|q\(5) & (!\DATAPATH|Y_REG|q\(7) & (\DATAPATH|Y_REG|q\(4)))) # (!\DATAPATH|Y_REG|q\(5) & ((\DATAPATH|Y_REG|q\(6) & (!\DATAPATH|Y_REG|q\(7))) # (!\DATAPATH|Y_REG|q\(6) & ((\DATAPATH|Y_REG|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(7),
	datab => \DATAPATH|Y_REG|q\(4),
	datac => \DATAPATH|Y_REG|q\(6),
	datad => \DATAPATH|Y_REG|q\(5),
	combout => \U_LED4|output[4]~13_combout\);

-- Location: LCCOMB_X69_Y50_N26
\U_LED4|output[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[4]~25_combout\ = (!\FSM|result_sel~combout\ & \U_LED4|output[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED4|output[4]~13_combout\,
	combout => \U_LED4|output[4]~25_combout\);

-- Location: LCCOMB_X69_Y47_N18
\U_LED4|output[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[5]~16_combout\ = (\DATAPATH|Y_REG|q\(4) & (\DATAPATH|Y_REG|q\(7) $ (((\DATAPATH|Y_REG|q\(5)) # (!\DATAPATH|Y_REG|q\(6)))))) # (!\DATAPATH|Y_REG|q\(4) & (!\DATAPATH|Y_REG|q\(7) & (!\DATAPATH|Y_REG|q\(6) & \DATAPATH|Y_REG|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(7),
	datab => \DATAPATH|Y_REG|q\(4),
	datac => \DATAPATH|Y_REG|q\(6),
	datad => \DATAPATH|Y_REG|q\(5),
	combout => \U_LED4|output[5]~16_combout\);

-- Location: LCCOMB_X69_Y47_N24
\U_LED4|output[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[5]~26_combout\ = (!\FSM|result_sel~combout\ & \U_LED4|output[5]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED4|output[5]~16_combout\,
	combout => \U_LED4|output[5]~26_combout\);

-- Location: LCCOMB_X69_Y47_N10
\U_LED4|output[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[6]~19_combout\ = (\DATAPATH|Y_REG|q\(4) & (!\DATAPATH|Y_REG|q\(7) & (\DATAPATH|Y_REG|q\(6) $ (!\DATAPATH|Y_REG|q\(5))))) # (!\DATAPATH|Y_REG|q\(4) & (!\DATAPATH|Y_REG|q\(5) & (\DATAPATH|Y_REG|q\(7) $ (!\DATAPATH|Y_REG|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(7),
	datab => \DATAPATH|Y_REG|q\(4),
	datac => \DATAPATH|Y_REG|q\(6),
	datad => \DATAPATH|Y_REG|q\(5),
	combout => \U_LED4|output[6]~19_combout\);

-- Location: LCCOMB_X69_Y47_N4
\U_LED4|output[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|output[6]~27_combout\ = (\FSM|result_sel~combout\) # (\U_LED4|output[6]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM|result_sel~combout\,
	datad => \U_LED4|output[6]~19_combout\,
	combout => \U_LED4|output[6]~27_combout\);

-- Location: LCCOMB_X71_Y50_N20
\U_LED5|output[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[0]~4_combout\ = (\DATAPATH|Y_REG|q\(3) & (\DATAPATH|Y_REG|q\(0) & (\DATAPATH|Y_REG|q\(2) $ (\DATAPATH|Y_REG|q\(1))))) # (!\DATAPATH|Y_REG|q\(3) & (!\DATAPATH|Y_REG|q\(1) & (\DATAPATH|Y_REG|q\(2) $ (\DATAPATH|Y_REG|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(3),
	datab => \DATAPATH|Y_REG|q\(2),
	datac => \DATAPATH|Y_REG|q\(1),
	datad => \DATAPATH|Y_REG|q\(0),
	combout => \U_LED5|output[0]~4_combout\);

-- Location: LCCOMB_X71_Y50_N18
\U_LED5|output[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[0]~22_combout\ = (!\FSM|result_sel~combout\ & \U_LED5|output[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datad => \U_LED5|output[0]~4_combout\,
	combout => \U_LED5|output[0]~22_combout\);

-- Location: LCCOMB_X71_Y50_N28
\U_LED5|output[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[1]~7_combout\ = (\DATAPATH|Y_REG|q\(3) & ((\DATAPATH|Y_REG|q\(0) & ((\DATAPATH|Y_REG|q\(1)))) # (!\DATAPATH|Y_REG|q\(0) & (\DATAPATH|Y_REG|q\(2))))) # (!\DATAPATH|Y_REG|q\(3) & (\DATAPATH|Y_REG|q\(2) & (\DATAPATH|Y_REG|q\(1) $ 
-- (\DATAPATH|Y_REG|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(3),
	datab => \DATAPATH|Y_REG|q\(2),
	datac => \DATAPATH|Y_REG|q\(1),
	datad => \DATAPATH|Y_REG|q\(0),
	combout => \U_LED5|output[1]~7_combout\);

-- Location: LCCOMB_X71_Y50_N30
\U_LED5|output[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[1]~23_combout\ = (!\FSM|result_sel~combout\ & \U_LED5|output[1]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datad => \U_LED5|output[1]~7_combout\,
	combout => \U_LED5|output[1]~23_combout\);

-- Location: LCCOMB_X71_Y50_N0
\U_LED5|output[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[2]~20_combout\ = (\DATAPATH|Y_REG|q\(0) & (\DATAPATH|Y_REG|q\(2) & !\DATAPATH|Y_REG|q\(1))) # (!\DATAPATH|Y_REG|q\(0) & (!\DATAPATH|Y_REG|q\(2) & \DATAPATH|Y_REG|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(0),
	datab => \DATAPATH|Y_REG|q\(2),
	datac => \DATAPATH|Y_REG|q\(1),
	combout => \U_LED5|output[2]~20_combout\);

-- Location: LCCOMB_X71_Y50_N6
\U_LED5|output[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[2]~21_combout\ = (!\FSM|result_sel~combout\ & ((\U_LED5|output[2]~20_combout\ & (!\DATAPATH|Y_REG|q\(2) & !\DATAPATH|Y_REG|q\(3))) # (!\U_LED5|output[2]~20_combout\ & (\DATAPATH|Y_REG|q\(2) & \DATAPATH|Y_REG|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datab => \U_LED5|output[2]~20_combout\,
	datac => \DATAPATH|Y_REG|q\(2),
	datad => \DATAPATH|Y_REG|q\(3),
	combout => \U_LED5|output[2]~21_combout\);

-- Location: LCCOMB_X71_Y50_N4
\U_LED5|output[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[3]~10_combout\ = (\DATAPATH|Y_REG|q\(1) & ((\DATAPATH|Y_REG|q\(2) & ((\DATAPATH|Y_REG|q\(0)))) # (!\DATAPATH|Y_REG|q\(2) & (\DATAPATH|Y_REG|q\(3) & !\DATAPATH|Y_REG|q\(0))))) # (!\DATAPATH|Y_REG|q\(1) & (!\DATAPATH|Y_REG|q\(3) & 
-- (\DATAPATH|Y_REG|q\(2) $ (\DATAPATH|Y_REG|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(3),
	datab => \DATAPATH|Y_REG|q\(2),
	datac => \DATAPATH|Y_REG|q\(1),
	datad => \DATAPATH|Y_REG|q\(0),
	combout => \U_LED5|output[3]~10_combout\);

-- Location: LCCOMB_X71_Y50_N22
\U_LED5|output[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[3]~24_combout\ = (\U_LED5|output[3]~10_combout\ & !\FSM|result_sel~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_LED5|output[3]~10_combout\,
	datad => \FSM|result_sel~combout\,
	combout => \U_LED5|output[3]~24_combout\);

-- Location: LCCOMB_X71_Y50_N16
\U_LED5|output[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[4]~13_combout\ = (\DATAPATH|Y_REG|q\(1) & (!\DATAPATH|Y_REG|q\(3) & ((\DATAPATH|Y_REG|q\(0))))) # (!\DATAPATH|Y_REG|q\(1) & ((\DATAPATH|Y_REG|q\(2) & (!\DATAPATH|Y_REG|q\(3))) # (!\DATAPATH|Y_REG|q\(2) & ((\DATAPATH|Y_REG|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(3),
	datab => \DATAPATH|Y_REG|q\(2),
	datac => \DATAPATH|Y_REG|q\(1),
	datad => \DATAPATH|Y_REG|q\(0),
	combout => \U_LED5|output[4]~13_combout\);

-- Location: LCCOMB_X71_Y50_N10
\U_LED5|output[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[4]~25_combout\ = (!\FSM|result_sel~combout\ & \U_LED5|output[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datad => \U_LED5|output[4]~13_combout\,
	combout => \U_LED5|output[4]~25_combout\);

-- Location: LCCOMB_X71_Y50_N24
\U_LED5|output[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[5]~16_combout\ = (\DATAPATH|Y_REG|q\(2) & (\DATAPATH|Y_REG|q\(0) & (\DATAPATH|Y_REG|q\(3) $ (\DATAPATH|Y_REG|q\(1))))) # (!\DATAPATH|Y_REG|q\(2) & (!\DATAPATH|Y_REG|q\(3) & ((\DATAPATH|Y_REG|q\(1)) # (\DATAPATH|Y_REG|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(3),
	datab => \DATAPATH|Y_REG|q\(2),
	datac => \DATAPATH|Y_REG|q\(1),
	datad => \DATAPATH|Y_REG|q\(0),
	combout => \U_LED5|output[5]~16_combout\);

-- Location: LCCOMB_X71_Y50_N26
\U_LED5|output[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[5]~26_combout\ = (!\FSM|result_sel~combout\ & \U_LED5|output[5]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datad => \U_LED5|output[5]~16_combout\,
	combout => \U_LED5|output[5]~26_combout\);

-- Location: LCCOMB_X71_Y50_N12
\U_LED5|output[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[6]~19_combout\ = (\DATAPATH|Y_REG|q\(0) & (!\DATAPATH|Y_REG|q\(3) & (\DATAPATH|Y_REG|q\(2) $ (!\DATAPATH|Y_REG|q\(1))))) # (!\DATAPATH|Y_REG|q\(0) & (!\DATAPATH|Y_REG|q\(1) & (\DATAPATH|Y_REG|q\(3) $ (!\DATAPATH|Y_REG|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH|Y_REG|q\(3),
	datab => \DATAPATH|Y_REG|q\(2),
	datac => \DATAPATH|Y_REG|q\(1),
	datad => \DATAPATH|Y_REG|q\(0),
	combout => \U_LED5|output[6]~19_combout\);

-- Location: LCCOMB_X71_Y50_N2
\U_LED5|output[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|output[6]~27_combout\ = (\FSM|result_sel~combout\) # (\U_LED5|output[6]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|result_sel~combout\,
	datad => \U_LED5|output[6]~19_combout\,
	combout => \U_LED5|output[6]~27_combout\);

-- Location: IOIBUF_X69_Y0_N22
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

-- Location: IOIBUF_X78_Y44_N23
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

-- Location: IOIBUF_X56_Y54_N29
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

-- Location: IOIBUF_X51_Y54_N22
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
END structure;


