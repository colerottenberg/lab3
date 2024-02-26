library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- FSM:
-- Building a FSM for the fibonacci datapath

entity fsm is
    port(
        -- Inputs
        clk:        in std_logic;
        rst:        in std_logic;
        go:         in std_logic;
        n_eq_0:     in std_logic;
        i_le_n:     in std_logic;

        -- Outputs
        done:       out std_logic;
        
        -- Control signals
        n_en:       out std_logic;
        result_en:  out std_logic;
        result_sel: out std_logic;
        x_en:       out std_logic;
        x_sel:      out std_logic;
        y_en:       out std_logic;
        y_sel:      out std_logic;
        i_en:       out std_logic;
        i_sel:      out std_logic
    );

end entity fsm;

architecture behavioral of fsm is
    -- Define the states
    type state_type is (IDLE, LOAD_N, COMPUTE_FIB, CHECK_LE, DONE_STATE);
    signal state, next_state:       state_type;

begin
    -- Logic for clock and reset 
    process(clk, rst)
    begin
        if rst = '1' then
            state <= IDLE; -- Reset state
        elsif rising_edge(clk) then
            state <= next_state; -- Update state
        end if;

    end process;

    -- Logic for state transitions
    process(state, go, i_le_n)
    begin
        -- Default values
        -- State transitions
        next_state <= state;
        case state is

            when IDLE =>
                if go = '1' then
                    next_state <= LOAD_N;
                    done <= '0';
                else
                    next_state <= IDLE;
                end if;

            when LOAD_N =>
                i_sel <= '0';
                x_sel <= '0';
                y_sel <= '0';
                i_en <= '0';
                x_en <= '0';
                y_en <= '0';
                n_en <= '1';
                result_en <= '0';
                result_sel <= '0';
                next_state <= CHECK_LE;

            when CHECK_LE =>
                -- Check if i <= n
                if i_le_n = '1' then
                    next_state <= COMPUTE_FIB; -- Check order on this
                else
                    next_state <= DONE_STATE;
                    result_en <= '1';
                end if;

            when COMPUTE_FIB =>
                -- Allow for pass through
                i_sel <= '0';
                x_sel <= '0';
                y_sel <= '0';
                
                -- Enable the registers
                i_en <= '1';
                x_en <= '1';
                y_en <= '1';
                n_en <= '1';
                next_state <= CHECK_LE;


            when DONE_STATE =>
                done <= '1';
                result_en <= '1';
                result_sel <= '1';
                next_state <= IDLE;
        end case;
    end process;
end architecture behavioral;