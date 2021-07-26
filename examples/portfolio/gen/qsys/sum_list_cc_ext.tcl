add_instance sum_list_cc SUM_LIST_CC 1.0

add_connection cpu.data_master sum_list_cc.s0 avalon
set_connection_parameter_value cpu.data_master/sum_list_cc.s0 arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/sum_list_cc.s0 baseAddress {0x10008000}
set_connection_parameter_value cpu.data_master/sum_list_cc.s0 defaultConnection {0}
add_connection sum_list_cc.rm onchip_memory.s1 avalon
set_connection_parameter_value sum_list_cc.rm/onchip_memory.s1 arbitrationPriority {1}
set_connection_parameter_value sum_list_cc.rm/onchip_memory.s1 baseAddress {0x00020000}
set_connection_parameter_value sum_list_cc.rm/onchip_memory.s1 defaultConnection {0}
add_connection sum_list_cc.wm onchip_memory.s1 avalon
set_connection_parameter_value sum_list_cc.wm/onchip_memory.s1 arbitrationPriority {1}
set_connection_parameter_value sum_list_cc.wm/onchip_memory.s1 baseAddress {0x00020000}
set_connection_parameter_value sum_list_cc.wm/onchip_memory.s1 defaultConnection {0}
add_connection clk.clk sum_list_cc.clock clock
add_connection clk.clk_reset sum_list_cc.reset reset

