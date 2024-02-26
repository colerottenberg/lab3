library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- FSM:
-- Building a FSM for the fibonacci datapath

entity fsm is
    port(
        clk: in std_logic;
        rst: in std_logic;
        go: in std_logic;
        done: out std_logic
        n_en: out std_logic;
        result_en: out std_logic;
        result_sel: out std_logic;
        x_en: out std_logic;
        x_sel: out std_logic;
        y_en: out std_logic;
        y_sel: out std_logic;
        i_en: out std_logic;
        i_sel: out std_logic;
        n_eq_0: in std_logic;
        i_le_n: in std_logic;
    );

end entity fsm;

architecture behavioral of fsm is
    -- Define the states
    type state_type is (IDLE, LOAD_N, COMPUTE_FIB, DONE);
    signal state, next_state: state_type;

    -- Define the signals for datapath control
    signal load_n_done, compute_fib_done: std_logic;

begin
    -- Logic for state transitions
    process(clk, rst)
    begin
        if rst = '1' then
            state <= IDLE; -- Reset state
        elsif rising_edge(clk) then
            state <= next_state; -- Update state
        end if;
    end process;

    -- Combinational logic for next state and output logic

    -- i_le_n is the signal that tells us if i is less than or equal to n
    process(state, go, n_eq_0, i_le_n, load_n_done, compute_fib_done)
    begin
        case state is
            when IDLE =>
                if go = '1' then
                    next_state <= LOAD_N;
                else
                    next_state <= IDLE;
                end if;
            when LOAD_N =>
                if n_eq_0 = '1' then
                    next_state <= DONE;
                else
                    next_state <= COMPUTE_FIB;
                end if;
            when COMPUTE_FIB =>
                if i_le_n = '1' then
                    next_state <= COMPUTE_FIB;
                else
                    next_state <= DONE;
                end if;
            when DONE =>
                next_state <= IDLE;
        end case;

    -- Output logic
        case state is
            when IDLE =>
                done <= '0'; -- Done is low
                n_en <= '0'; -- Disable loading of N register
                result_en <= '0'; -- Disable result output
                result_sel <= '0'; -- Deselect result output
                x_en <= '0'; -- Disable X register
                x_sel <= '0'; -- Deselect X input
                y_en <= '0'; -- Disable Y register
                y_sel <= '0'; -- Deselect Y input
                i_en <= '0'; -- Disable I register
                i_sel <= '0'; -- Deselect I input
            when LOAD_N =>
                done <= '0';
                n_en <= '1'; -- Enable loading of N register
                result_en <= '0'; -- Disable result output
                result_sel <= '0'; -- Deselect result output
                x_en <= '0'; -- Disable X register
                x_sel <= '0'; -- Deselect X input
                y_en <= '0'; -- Disable Y register
                y_sel <= '0'; -- Deselect Y input
                i_en <= '0'; -- Disable I register
                i_sel <= '0'; -- Deselect I input
            when COMPUTE_FIB =>
                done <= '0'; 
                n_en <= '0'; -- Disable loading of N register
                result_en <= '1'; -- Enable result output
                result_sel <= '0'; -- Select result output CHECK THIS
                x_en <= '1';
                x_sel <= '0';
                y_en <= '1';
                y_sel <= '0';
                i_en <= '1';
                i_sel <= '0';
            when DONE =>
                done <= '1';
                n_en <= '0';
                result_en <= '0';
                result_sel <= '0';
                x_en <= '0';
                x_sel <= '0';
                y_en <= '0';
                y_sel <= '0';
                i_en <= '0';
                i_sel <= '0';
        end case;

    end process;

end architecture behavioral;

