add_instance fib_cc FIB_CC 1.0

add_connection cpu.data_master fib_cc.s0 avalon
set_connection_parameter_value cpu.data_master/fib_cc.s0 arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/fib_cc.s0 baseAddress {0x10001000}
set_connection_parameter_value cpu.data_master/fib_cc.s0 defaultConnection {0}
add_connection clk.clk fib_cc.clock clock
add_connection clk.clk_reset fib_cc.reset reset

