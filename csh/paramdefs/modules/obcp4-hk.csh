list add -c "Max value: 3 days + 8 hours (288000 s)" -u "s" -m "iw" -M "8" -v 0 gndwdt 1 u32
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can0_addr 10 u16
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can0_mask 11 u08
list add -c "0=no effect, 1=print csp interface configuration to stdout" -m "C" -v 0 csp_print_cnf 13 u08
list add -c "Should be set to 0" -m "C" -v 2 csp_can0_promisc 14 u08
list add -c "0=off, 1=on forwarding only, 2=incoming only, 3=on incoming and forwarding" -m "C" -v 2 csp_dedup 17 u08
list add -c "Number of times to boot image 0" -m "iC" -M "8" -v 2 boot_img1 20 u08
list add -c "Number of times to boot image 1" -m "iC" -M "8" -v 2 boot_img0 21 u08
list add -c "Number of times to boot image 2" -m "iC" -M "8" -v 2 boot_img2 22 u08
list add -c "Number of times to boot image 0" -m "iC" -M "8" -v 2 boot_img3 23 u08
list add -c "Current image running" -m "i" -M "8" -v 2 boot_cur 24 u08
list add -c "Total number of boots" -m "i" -M "8" -v 2 boot_cnt 25 u16
list add -c "Number of failed boot attempts" -m "ei" -M "8" -v 2 boot_err 26 u16
list add -c "Should be set to 0" -m "C" -v 2 csp_can1_promisc 27 u08
list add -m "e" -v 0 stdbuf_in 28 u16
list add -m "e" -v 0 stdbuf_out 29 u16
list add -m "h" -v 0 serial0 31 u32
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can1_addr 38 u16
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can1_mask 39 u08
list add -c "Primary node on network to perform time synchronization" -m "C" -v 8 tfetch_primary 41 u16
list add -c "Secondary node on network to perform time synchronization" -m "C" -v 8 tfetch_secondary 42 u16
list add -c "Timeout for the request for primary and secondary tfetch nodes" -m "C" -v 8 tfetch_timeout 43 u16
list add -c "Shows the node to the unit (primary or secondary) which had a successful timesync" -m "d" -v 0 tfetch_synced 44 u16
list add -c "Counter that shows how many times the tfetch was not successfull in recieved a valid timesync from either of the two tfetch nodes. " -m "d" -v 0 tfetch_errors 45 u16
list add -c "VMEM backup of last unix timestamp" -m "d" -v 8 tfetch_last_s 46 u32
list add -c "CPU load" -m "C" -v 0 rtos_print 47 u08
list add -c "CAN 0 default flag. Active HIGH" -m "C" -v 2 csp_can0_isdfl 48 u08
list add -c "CAN 1 default flag. Active HIGH" -m "C" -v 2 csp_can1_isdfl 49 u08
list add -m "e" -v 0 csp_buf_out 51 u08
list add -m "e" -v 0 csp_conn_out 52 u08
list add -m "e" -v 0 csp_conn_ovf 53 u08
list add -m "e" -v 0 csp_conn_noroute 54 u08
list add -m "e" -v 0 csp_inval_reply 55 u08
list add -m "e" -v 0 csp_errno 56 u08
list add -m "e" -v 0 csp_can_errno 57 u08
list add -m "e" -v 0 csp_print_rdp 58 u08
list add -m "e" -v 0 csp_print_packet 59 u08
list add -a 4 -c "Set to slot index to start running slot in lua task. -1 when not running" -m "c" -M "1" -v 0 lua_run 130 i08
list add -m "r" -v 0 lua_max_size 131 u32
list add -a 4 -c "Negative value indicate error during Lua execution" -m "r" -M "1" -v 0 lua_errno 133 i32
list add -a 10 -m "c" -v 8 lua_vmem_slots 134 x32
list add -a 4 -c "Pass arg to lua script inside global var 'Larg'" -m "c" -M "1" -v 8 lua_args 135 u32
list add -a 4 -c "Lua scripts can use set_state() to reflect internal state while running" -m "r" -M "1" -v 0 lua_state 136 u32
list add -c "Set to trigger print of lua script list" -m "d" -v 0 lua_print_list 137 i32
list add -c "Number of hk parameters in hk list to load" -m "c" -M "0" -v 8 hk_list_load 150 u16
list add -a 64 -c "List of nodes from which hk can be pulled" -m "c" -M "0" -v 8 hk_nodes 151 i16
list add -a 16 -c "A special feature to log properties from Satlab modules" -m "c" -v 8 hk_nodes_sl 152 i16
list add -m "d" -v 8 hk_next_block 153 x32
list add -c "Current local HK timestamp" -m "t" -v 8 hk_next_timestamp 154 u32
list add -m "d" -v 8 hk_blocks_per_log 155 u32
list add -c "Time in seconds between each hk pull" -m "c" -M "0" -v 8 hk_period 156 u16
list add -m "d" -v 8 hk_wrapped 157 u08
list add -c "0 = no effect, 1 = pause data collection, 2 = Reset storage and start logging from scratch" -m "c" -v 8 hk_reset 158 u08
list add -c "Timeout for hk pulls onboard" -m "c" -v 8 hk_timeout 159 u16
list add -c "Set to 1 to include older collected parameters when downloading in case the target module was not responding at the requested timestamp" -m "c" -v 8 hk_showold 160 u16
list add -c "Number of times to retry a failed hk pull request" -m "c" -v 8 hk_retry_count 161 u08
list add -c "Bitmask that determines which types of parameters can be pulled in hk" -m "c" -M "0" -v 8 hk_mask 162 x32
list add -a 64 -c "Number of pull timeouts from each node" -m "e" -M "0" -v 8 hk_pulltimeout 163 u16
list add -c "Storage capacity for telemetry, using the current settings" -u "sec" -m "i" -M "0" -v 0 hk_storagecapacity 164 u32
list add -c "Last timestamp a log was stored" -m "t" -v 8 hk_last_timestamp 165 u32
list add -c "CSP packet size for HK retrievals" -m "c" -M "0" -v 8 hk_mtu 166 u32
