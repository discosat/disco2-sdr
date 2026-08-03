list add -c "Max value: 3 days + 8 hours (288000 s)" -u "s" -m "iw" -M "8" -v 0 gndwdt 1 u32
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can0_addr 10 u16
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can0_mask 11 u08
list add -c "0=no effect, 1=print csp interface configuration to stdout" -m "C" -v 0 csp_print_cnf 13 u08
list add -c "Should be set to 0" -m "C" -v 2 csp_can0_promisc 14 u08
list add -c "0=off, 1=on forwarding only, 2=incoming only, 3=on incoming and forwarding" -m "C" -v 2 csp_dedup 17 u08
list add -c "Number of times to boot image 0" -m "iC" -M "8" -v 2 boot_img1 20 u08
list add -c "Number of times to boot image 1" -m "iC" -M "8" -v 2 boot_img0 21 u08
list add -c "Current image running" -m "i" -M "8" -v 2 boot_cur 24 u08
list add -c "Total number of boots" -m "i" -M "8" -v 2 boot_cnt 25 u16
list add -c "Number of failed boot attempts" -m "ei" -M "8" -v 2 boot_err 26 u16
list add -c "Should be set to 0" -m "C" -v 2 csp_can1_promisc 27 u08
list add -m "e" -v 0 stdbuf_in 28 u16
list add -m "e" -v 0 stdbuf_out 29 u16
list add -c "MCU temperature" -u "°C×100" -m "rt" -v 0 mcu_temp 30 i16
list add -c "Internal use" -m "h" -v 0 serial0 31 u32
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can1_addr 38 u16
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can1_mask 39 u08
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
list add -a 8 -c "User desired state of pdu channels" -u "bool" -m "c" -M "1" -v 8 ch_on 120 u08
list add -a 8 -c "Initial state of pdu channels" -u "bool" -m "c" -M "1" -v 8 ch_on_init 121 u08
list add -a 8 -c "0=NORMAL Tries to follow ch_on, 1=CRITICAL Always on but power-cycles after GNDWDT (Overrules all other config), 2=PROTECTED" -u "bool" -m "c" -M "1" -v 8 ch_type 122 u08
list add -a 8 -c "Actual pin level set for the power channels. -1 for input/slave" -m "rt" -v 0 ch_on_actual 123 i08
list add -a 8 -c "0 = maintain channels after reboot, 1 = restore channels to init settings" -u "enum" -m "c" -M "1" -v 8 reboot_mode 124 u08
list add -a 8 -c "Time left where channel is forced off after SW over-current" -u "s" -m "d" -v 8 ch_oc_retry 125 u16
list add -a 8 -c "Time taken to disable a power channel after an alert is detected" -u "μs" -m "d" -v 0 ch_latchup_time 127 u64
list add -a 8 -c "Counter for SW over-current events" -m "e" -M "0" -v 8 ch_oc_cnt 128 u16
list add -a 8 -c "Counter for HW over-current/latch-up events" -m "e" -M "0" -v 8 ch_oc_cnt_hw 129 u16
list add -a 8 -c "PDU output channel INA temperature." -u "°C×100" -m "t" -v 0 ch_temp 130 i16
list add -a 8 -c "PDU output channel voltage." -u "mV" -m "d" -v 0 ch_voltage 131 u16
list add -a 8 -c "PDU output channel current." -u "mA" -m "t" -M "0" -v 0 ch_current 132 i32
list add -c "Measured supply voltage" -u "mV" -m "t" -v 0 bus_voltage 133 u16
list add -a 8 -c "Configure over-current limit" -u "mA" -m "c" -M "1" -v 8 ch_curlim 137 i16
list add -a 9 -m "h" -v 5 ina_reg_config 140 x16
list add -a 9 -m "h" -v 5 ina_reg_adcconfig 141 x16
list add -a 9 -m "h" -v 5 ina_reg_shunt_cal 142 x16
list add -a 9 -m "h" -v 5 ina_reg_tempcoconfig 143 x16
list add -a 9 -m "h" -v 5 ina_reg_vshunt 144 x32
list add -a 9 -m "h" -v 5 ina_reg_vbus 145 x32
list add -a 9 -m "h" -v 5 ina_reg_dietemp 146 x16
list add -a 9 -m "h" -v 5 ina_reg_current 147 x32
list add -a 9 -m "h" -v 5 ina_reg_power 148 x32
list add -a 9 -m "h" -v 5 ina_reg_energy 149 x64
list add -a 9 -m "h" -v 5 ina_reg_charge 150 x64
list add -a 9 -m "h" -v 5 ina_reg_diag_alert 151 x16
list add -a 9 -m "h" -v 5 ina_reg_shunt_ov_lvl 152 x16
list add -a 9 -m "h" -v 5 ina_reg_shunt_uv_lvl 153 x16
list add -a 9 -m "h" -v 5 ina_reg_bus_ov_lvl 154 x16
list add -a 9 -m "h" -v 5 ina_reg_bus_uv_lvl 155 x16
list add -a 9 -m "h" -v 5 ina_reg_temp_lim 156 x16
list add -a 9 -m "h" -v 5 ina_reg_pwr_lim 157 x16
list add -a 9 -m "h" -v 5 ina_reg_manuf_id 158 x16
list add -a 9 -m "h" -v 5 ina_reg_device_id 159 x16
list add -c "=0 inactive, =123 other MCU powered down" -m "c" -M "2" -v 0 cross_kill 185 u08
list add -c "Disable INA and PDU control in slave mode." -u "bool" -m "c" -M "2" -v 0 master_mode 190 u08
list add -c "Whether to assume master mode when booting" -u "bool" -m "c" -M "2" -v 8 master_mode_init 191 u08
list add -a 8 -c "Minimum voltage for power channels" -u "mV" -m "c" -M "1" -v 8 window_uv 201 u16
list add -a 8 -c "Maximum voltage for power channels" -u "mV" -m "c" -M "1" -v 8 window_ov 202 u16
list add -a 8 -c "Hysteresis for enabling power channels after window" -u "mV" -m "c" -M "1" -v 8 window_hyst 203 u16
list add -a 8 -c "Countdown for turning on power channels, paused when the channel is on" -u "s" -m "c" -M "1" -v 8 ch_on_in 204 u32
list add -a 8 -c "Countdown for turning off power channels, paused when channel is off" -u "s" -m "c" -M "1" -v 8 ch_off_in 205 u32
list add -a 8 -c "Whether the power channels is currently in under-voltage protection" -m "d" -v 8 window_uv_active 206 u08
list add -a 8 -c "Whether the power channels is currently in over-voltage protection" -m "d" -v 8 window_ov_active 207 u08
list add -a 8 -c "Number of seconds the channel has been on" -u "s" -m "d" -M "1" -v 8 ch_uptime 208 u32
list add -a 8 -c "Numer of seconds the channel has been off" -u "s" -m "d" -v 8 ch_downtime 209 u32
list add -a 8 -c "Initial value for watchdog timeout per power channel" -u "s" -m "c" -M "1" -v 8 ch_wdt_initial 210 u32
list add -a 8 -c "Current value for the watchdog timeout countdown. Channel will power cycle when this reaches 0" -u "s" -m "t" -v 8 ch_wdt_in 211 u32
list add -a 8 -c "on timer for the current power cycle" -u "s" -m "d" -v 8 ch_wdt_on_timer_cur 212 u08
list add -a 8 -c "Whether we suspect the channel HW of currently being latched up" -u "bool" -m "d" -M "0" -v 0 ch_latched_up_hw 220 u08
list add -a 8 -c "How many times a channel has been turned on. Particularly useful for deployment channels" -m "t" -v 8 ch_on_cnt 225 u32
list add -m "d" -v 0 spi1_debug 592 u08
list add -m "e" -v 0 spi1_fault 593 u32
