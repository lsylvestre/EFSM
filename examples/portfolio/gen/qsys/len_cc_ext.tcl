add_instance len_cc LEN_CC 1.0

add_connection cpu.data_master len_cc.s0 avalon
set_connection_parameter_value cpu.data_master/len_cc.s0 arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/len_cc.s0 baseAddress {0x10007000}
set_connection_parameter_value cpu.data_master/len_cc.s0 defaultConnection {0}
add_connection len_cc.rm onchip_memory.s1 avalon
set_connection_parameter_value len_cc.rm/onchip_memory.s1 arbitrationPriority {1}
set_connection_parameter_value len_cc.rm/onchip_memory.s1 baseAddress {0x00020000}
set_connection_parameter_value len_cc.rm/onchip_memory.s1 defaultConnection {0}
add_connection len_cc.wm onchip_memory.s1 avalon
set_connection_parameter_value len_cc.wm/onchip_memory.s1 arbitrationPriority {1}
set_connection_parameter_value len_cc.wm/onchip_memory.s1 baseAddress {0x00020000}
set_connection_parameter_value len_cc.wm/onchip_memory.s1 defaultConnection {0}
add_connection clk.clk len_cc.clock clock
add_connection clk.clk_reset len_cc.reset reset

