add_instance gcd_cc GCD_CC 1.0

add_connection cpu.data_master gcd_cc.s0 avalon
set_connection_parameter_value cpu.data_master/gcd_cc.s0 arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/gcd_cc.s0 baseAddress {0x10003000}
set_connection_parameter_value cpu.data_master/gcd_cc.s0 defaultConnection {0}
add_connection clk.clk gcd_cc.clock clock
add_connection clk.clk_reset gcd_cc.reset reset

