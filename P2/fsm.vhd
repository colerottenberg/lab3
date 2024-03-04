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
    type state_type is (START, INIT, COMPUTE, ADD, CHECK_LE, DONE_STATE, RESTART);
    signal state, next_state:       state_type;

begin
    -- Logic for clock and reset 
    process(clk, rst)
    begin
        if rst = '1' then
            state <= START; -- Reset state
        elsif rising_edge(clk) then
            state <= next_state; -- Update state
        end if;

    end process;

    -- Logic for state transitions
    process(state)
    begin
        -- Default values to prevent latches
        -- State transitions
        next_state <= state;
        case state is

            when START =>
                -- All to 0
                i_en <= '0';
                x_en <= '0';
                y_en <= '0';
                n_en <= '0';
                done <= '0';

                if go = '1' then
                    next_state <= INIT;
                else
                    next_state <= START;
                end if;
               -- Implement default defined values for every state

            when INIT =>
                -- Unable Done
                done <= '0';
                i_sel <= '1';
                i_en <= '1';
                x_sel <= '1';
                x_en <= '1';
                y_sel <= '1';
                y_en <= '1';
                n_en <= '1';
                next_state <= CHECK_LE;

            when CHECK_LE =>
                -- Check if i <= n
                if (i_le_n = '1') then
                    next_state <= COMPUTE;
                else
                    next_state <= DONE_STATE;
                end if;
            
            when COMPUTE =>
                i_sel <= '0';
                i_en <= '1'; -- Redundant
                x_sel <= '0';
                x_en <= '1'; -- Redundant

                next_state <= ADD;

            when ADD =>
                -- Allows Clock Cycle so the addition of x and y can be done before y is loaded
                y_sel <= '0';
                y_en <= '1'; -- Redundant

                next_state <= CHECK_LE;
            when DONE_STATE =>
                result_sel <= '0'; -- DBG 
                result_en <= '1'; -- Only enable the result... the init state handles which result to select
                -- Need to prevent bad state loops because of race conditions
                done <= '1';
                if go = '1' then
                    next_state <= DONE_STATE;
                else
                    next_state <= RESTART;
                end if;
            when RESTART =>
                result_sel <= '0'; -- DBG 
                result_en <= '1'; -- Only enable the result... the init state handles which result to select
                done <= '1';
                -- Now we can restart the process if go is high
                if go = '1' then
                    next_state <= INIT;
                else
                    next_state <= RESTART;
                end if;
            when others => null;
        end case;
    end process;
end architecture behavioral;