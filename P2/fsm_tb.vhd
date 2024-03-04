library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

-- Testbench for the our top_level Fibonacci state machine

entity fsm_tb is
end fsm_tb;

architecture tb of fsm_tb is
  -- Inputs
  signal clk :          std_logic := '0';
  signal rst :          std_logic := '0';
  signal go :           std_logic := '0';
  signal n_eq_0 :       std_logic := '0';
  signal i_le_n :       std_logic := '0';

  -- Outputs
  signal done:          std_logic := '0';

  -- Signals for controlling Datapath
  signal n_en:          std_logic := '0';
  signal result_en:     std_logic := '0';
  signal result_sel:    std_logic := '0';
  signal x_en:          std_logic := '0';
  signal x_sel:         std_logic := '0';
  signal y_en:          std_logic := '0';
  signal y_sel:         std_logic := '0';
  signal i_en:          std_logic := '0';
  signal i_sel:         std_logic := '0';

  -- Datapath inputs

  -- Clock
  constant clk_period : time := 5 ns;

begin
  -- Instantiate the FSM
  UUT : entity work.fsm(behavioral) 
    port map (
      clk => clk,
      rst => rst,
      go => go,
      n_eq_0 => n_eq_0,
      i_le_n => i_le_n,
      done => done,

      n_en => n_en,
      result_en => result_en,
      result_sel => result_sel,
      x_en => x_en,
      x_sel => x_sel,
      y_en => y_en,
      y_sel => y_sel,
      i_en => i_en,
      i_sel => i_sel
    );

  -- Clock process definitions
  clk <= not clk after clk_period;
  
  -- Stimulus process

  process
  begin
    -- Reset
    wait for 10 ns;
    -- Start the FSM
    go <= '1';
    i_le_n <= '1';
    n_eq_0 <= '0';
    wait for 30 ns;
    go <= '0';


    wait for 50 ns;
    i_le_n <= '0';


    -- Wait for the FSM to finish
    wait until done = '1'; 

    -- End the simulation
    wait;
  end process;
end tb;