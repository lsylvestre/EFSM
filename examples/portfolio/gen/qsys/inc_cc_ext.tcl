add_instance inc_cc INC_CC 1.0

add_connection cpu.data_master inc_cc.s0 avalon
set_connection_parameter_value cpu.data_master/inc_cc.s0 arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/inc_cc.s0 baseAddress {0x10006000}
set_connection_parameter_value cpu.data_master/inc_cc.s0 defaultConnection {0}
add_connection inc_cc.rm onchip_memory.s1 avalon
set_connection_parameter_value inc_cc.rm/onchip_memory.s1 arbitrationPriority {1}
set_connection_parameter_value inc_cc.rm/onchip_memory.s1 baseAddress {0x00020000}
set_connection_parameter_value inc_cc.rm/onchip_memory.s1 defaultConnection {0}
add_connection inc_cc.wm onchip_memory.s1 avalon
set_connection_parameter_value inc_cc.wm/onchip_memory.s1 arbitrationPriority {1}
set_connection_parameter_value inc_cc.wm/onchip_memory.s1 baseAddress {0x00020000}
set_connection_parameter_value inc_cc.wm/onchip_memory.s1 defaultConnection {0}
add_connection clk.clk inc_cc.clock clock
add_connection clk.clk_reset inc_cc.reset reset

