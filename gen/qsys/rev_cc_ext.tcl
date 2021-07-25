add_instance rev_cc REV_CC 1.0

add_connection cpu.data_master rev_cc.s0 avalon
set_connection_parameter_value cpu.data_master/rev_cc.s0 arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/rev_cc.s0 baseAddress {0x10000000}
set_connection_parameter_value cpu.data_master/rev_cc.s0 defaultConnection {0}
add_connection rev_cc.rm onchip_memory.s1 avalon
set_connection_parameter_value rev_cc.rm/onchip_memory.s1 arbitrationPriority {1}
set_connection_parameter_value rev_cc.rm/onchip_memory.s1 baseAddress {0x00020000}
set_connection_parameter_value rev_cc.rm/onchip_memory.s1 defaultConnection {0}
add_connection rev_cc.wm onchip_memory.s1 avalon
set_connection_parameter_value rev_cc.wm/onchip_memory.s1 arbitrationPriority {1}
set_connection_parameter_value rev_cc.wm/onchip_memory.s1 baseAddress {0x00020000}
set_connection_parameter_value rev_cc.wm/onchip_memory.s1 defaultConnection {0}
add_connection clk.clk rev_cc.clock clock
add_connection clk.clk_reset rev_cc.reset reset

