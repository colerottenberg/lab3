onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fib_tb/DATAPATH/clk
add wave -noupdate /fib_tb/DATAPATH/rst
add wave -noupdate -radix unsigned /fib_tb/DATAPATH/n
add wave -noupdate -radix unsigned /fib_tb/DATAPATH/result
add wave -noupdate /fib_tb/DATAPATH/x_sel
add wave -noupdate /fib_tb/DATAPATH/y_sel
add wave -noupdate /fib_tb/DATAPATH/i_sel
add wave -noupdate /fib_tb/DATAPATH/result_sel
add wave -noupdate /fib_tb/DATAPATH/n_en
add wave -noupdate /fib_tb/DATAPATH/result_en
add wave -noupdate /fib_tb/DATAPATH/x_en
add wave -noupdate /fib_tb/DATAPATH/y_en
add wave -noupdate /fib_tb/DATAPATH/i_en
add wave -noupdate /fib_tb/DATAPATH/n_eq_0
add wave -noupdate /fib_tb/DATAPATH/i_le_n
add wave -noupdate /fib_tb/DATAPATH/x_reg_out
add wave -noupdate /fib_tb/DATAPATH/y_reg_out
add wave -noupdate /fib_tb/DATAPATH/x_mux_out
add wave -noupdate /fib_tb/DATAPATH/y_mux_out
add wave -noupdate /fib_tb/DATAPATH/result_mux_out
add wave -noupdate /fib_tb/DATAPATH/add2_out
add wave -noupdate /fib_tb/DATAPATH/i_reg_out
add wave -noupdate /fib_tb/DATAPATH/n_reg_out
add wave -noupdate /fib_tb/DATAPATH/i_mux_out
add wave -noupdate /fib_tb/DATAPATH/add1_out
add wave -noupdate /fib_tb/FSM/clk
add wave -noupdate /fib_tb/FSM/rst
add wave -noupdate /fib_tb/FSM/go
add wave -noupdate /fib_tb/FSM/n_eq_0
add wave -noupdate /fib_tb/FSM/i_le_n
add wave -noupdate /fib_tb/FSM/done
add wave -noupdate /fib_tb/FSM/n_en
add wave -noupdate /fib_tb/FSM/result_en
add wave -noupdate /fib_tb/FSM/result_sel
add wave -noupdate /fib_tb/FSM/x_en
add wave -noupdate /fib_tb/FSM/x_sel
add wave -noupdate /fib_tb/FSM/y_en
add wave -noupdate /fib_tb/FSM/y_sel
add wave -noupdate /fib_tb/FSM/i_en
add wave -noupdate /fib_tb/FSM/i_sel
add wave -noupdate /fib_tb/FSM/state
add wave -noupdate /fib_tb/FSM/next_state
add wave -noupdate /fib_tb/DATAPATH/N_COMP/a
add wave -noupdate /fib_tb/DATAPATH/N_COMP/b
add wave -noupdate /fib_tb/DATAPATH/N_COMP/le
add wave -noupdate /fib_tb/DATAPATH/N_COMP/eq
add wave -noupdate /fib_tb/DATAPATH/N_REG/clk
add wave -noupdate /fib_tb/DATAPATH/N_REG/reset
add wave -noupdate /fib_tb/DATAPATH/N_REG/d
add wave -noupdate /fib_tb/DATAPATH/N_REG/q
add wave -noupdate /fib_tb/DATAPATH/N_REG/en
add wave -noupdate -radix unsigned /fib_tb/DATAPATH/RESULT_REG/clk
add wave -noupdate -radix unsigned /fib_tb/DATAPATH/RESULT_REG/reset
add wave -noupdate -radix unsigned /fib_tb/DATAPATH/RESULT_MUX/input1
add wave -noupdate -radix unsigned /fib_tb/DATAPATH/RESULT_MUX/input2
add wave -noupdate -radix unsigned /fib_tb/DATAPATH/RESULT_MUX/sel
add wave -noupdate -radix unsigned /fib_tb/DATAPATH/RESULT_MUX/output
add wave -noupdate -radix unsigned /fib_tb/DATAPATH/RESULT_REG/d
add wave -noupdate -radix unsigned /fib_tb/DATAPATH/RESULT_REG/q
add wave -noupdate -radix unsigned /fib_tb/DATAPATH/RESULT_REG/en
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {375000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {271170 ps} {498831 ps}
