add_instance sum_cc SUM_CC 1.0

add_connection cpu.data_master sum_cc.s0 avalon
set_connection_parameter_value cpu.data_master/sum_cc.s0 arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/sum_cc.s0 baseAddress {0x10001000}
set_connection_parameter_value cpu.data_master/sum_cc.s0 defaultConnection {0}
add_connection sum_cc.rm onchip_memory.s1 avalon
set_connection_parameter_value sum_cc.rm/onchip_memory.s1 arbitrationPriority {1}
set_connection_parameter_value sum_cc.rm/onchip_memory.s1 baseAddress {0x00020000}
set_connection_parameter_value sum_cc.rm/onchip_memory.s1 defaultConnection {0}
add_connection sum_cc.wm onchip_memory.s1 avalon
set_connection_parameter_value sum_cc.wm/onchip_memory.s1 arbitrationPriority {1}
set_connection_parameter_value sum_cc.wm/onchip_memory.s1 baseAddress {0x00020000}
set_connection_parameter_value sum_cc.wm/onchip_memory.s1 defaultConnection {0}
add_connection clk.clk sum_cc.clock clock
add_connection clk.clk_reset sum_cc.reset reset

