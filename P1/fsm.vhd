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
    type state_t is (START, INIT, COMPUTE, ADD, BUFF_LE, CHECK_LE, DONE_STATE, RESTART);
    signal state, next_state:       state_t := START;

begin
    -- No Clock Style
    -- Logic for state transitions
    process(clk, rst)
    begin
        if (rst = '1') then
            done <= '0';
            state <= START;
        -- Default values
        -- State transitions
        elsif (rising_edge(clk)) then
            done <= '0';
            i_sel <= '0';
            i_en <= '1';
            x_sel <= '0';
            x_en <= '1';
            y_sel <= '0';
            y_en <= '1';
            n_en <= '1';
            result_en <= '1';
            result_sel <= '0';
            
            case state is
                when START =>
                    -- All to 0
                    if go = '1' then
                        state <= INIT;
                    else
                        state <= START;
                    end if;
                -- Implement default defined values for every state

                when INIT =>
                    -- Unable Done
                    done <= '0';
                    i_sel <= '1';
                    i_en <= '1';
                    x_sel <= '1';
                    x_en <= '1';
                    y_en <= '1';
                    n_en <= '1';
                    if (n_eq_0 = '0') then
                        result_sel <= '0'; -- Select the result
                        state <= BUFF_LE;
                    else
                        result_sel <= '1'; -- Select default 0 result if n = 0
                        state <= DONE_STATE;
                    end if;

                when BUFF_LE =>
                    state <= CHECK_LE;

                when CHECK_LE =>
                    -- Check if i <= n
                    if (i_le_n = '1') then
                        state <= COMPUTE;
                    else
                        state <= DONE_STATE;
                    end if;
                
                when COMPUTE =>
                    i_sel <= '0';
                    i_en <= '1'; -- Redundant
                    x_sel <= '0';
                    x_en <= '1'; -- Redundant

                    state <= ADD;

                when ADD =>
                    -- Allows Clock Cycle so the addition of x and y can be done before y is loaded
                    y_sel <= '0';
                    y_en <= '1'; -- Redundant

                    state <= BUFF_LE;
                
                when DONE_STATE =>
                    result_sel <= '0'; -- DBG 
                    result_en <= '1'; -- Only enable the result... the init state handles which result to select
                    -- Need to prevent bad state loops because of race conditions
                    done <= '1';
                    if go = '1' then
                        state <= DONE_STATE;
                    else
                        state <= RESTART;
                    end if;
                when RESTART =>
                    result_sel <= '0'; -- DBG 
                    result_en <= '1'; -- Only enable the result... the init state handles which result to select
                    done <= '1';
                    -- Now we can restart the process if go is high
                    if go = '1' then
                        state <= INIT;
                    else
                        state <= RESTART;
                    end if;
                when others => null;
            end case;
        end if;
    end process;
end architecture behavioral;