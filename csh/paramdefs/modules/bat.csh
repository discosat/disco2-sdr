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
list add -c "Temperature mid board" -u "°C×100" -m "t" -v 0 bus_temp 110 i16
list add -c "BUS voltage" -u "mV" -m "t" -v 0 bus_voltage 111 u16
list add -c "BUS current - positive is input" -u "mA" -m "t" -v 0 bus_current 112 i16
list add -c "BUS power - positive is input" -u "mW" -m "t" -v 0 bus_power 113 i32
list add -a 4 -c "Individual cell voltage" -u "mV" -m "d" -M "1" -v 0 cell_voltage 122 u16
list add -a 4 -c "raw cell reading" -u "mV" -m "d" -v 0 mux_voltage 132 u16
list add -c "Average cell voltage" -u "mV" -m "d" -v 0 cell_voltage_avg 133 u16
list add -a 4 -c "Individual cell imbalance" -u "mV" -m "d" -M "1" -v 0 cell_imbalance 134 flt
list add -c "1=on, 0=off" -m "c" -M "0" -v 8 heater_auto 140 u08
list add -c "Turn off heater below this temperature" -u "°C" -m "c" -M "0" -v 8 heater_auto_on_at 141 i08
list add -c "Turn on heater below this temperature" -u "°C" -m "c" -M "0" -v 8 heater_auto_off_at 142 i08
list add -c "Automatic cell balancing.1=on (default),0=off" -m "c" -M "1" -v 8 balance_auto 145 u08
list add -c "Automatic cell balancing threshold. Default 50 mV" -u "mV" -m "c" -M "1" -v 8 balance_thr 146 u16
list add -a 2 -c "Sense resistor value" -u "μOhm" -m "q" -v 8 rsense 148 u16
list add -c "Cell 7 resistive compensation" -u "Ohm" -m "q" -v 8 rc7 149 flt
list add -c "Cell 0 resistive compensation" -u "Ohm" -m "q" -v 8 rc0 150 flt
list add -c "Current heater state" -m "t" -M "0" -v 0 heater_on 160 u08
list add -c "Cell currently being balanced" -m "d" -M "1" -v 0 balancing_cell 162 i08
list add -c "Set to magic value 123 to powercycle battery." -m "c" -v 0 powercycle 170 u08
list add -c "=0 inactive, =123 other MCU powered down" -m "c" -v 0 cross_kill 185 u08
list add -c "Disable INA and PDU control in slave mode." -u "bool" -m "c" -v 0 master_mode 190 u08
list add -c "Whether to assume master mode when booting" -u "bool" -m "c" -v 8 master_mode_init 191 u08
list add -a 2 -m "h" -v 5 ina_reg_config 220 x16
list add -a 2 -m "h" -v 5 ina_reg_adcconfig 221 x16
list add -a 2 -m "h" -v 5 ina_reg_currlsbcalc 222 x16
list add -a 2 -m "h" -v 5 ina_reg_tempcoconfig 223 x16
list add -a 2 -m "h" -v 5 ina_reg_vshunt 224 x32
list add -a 2 -m "h" -v 5 ina_reg_vbus 225 x32
list add -a 2 -m "h" -v 5 ina_reg_dietemp 226 x16
list add -a 2 -m "h" -v 5 ina_reg_current 227 x32
list add -a 2 -m "h" -v 5 ina_reg_power 228 x32
list add -a 2 -m "h" -v 5 ina_reg_energy 229 x64
list add -a 2 -m "h" -v 5 ina_reg_charge 230 x64
list add -a 2 -m "h" -v 5 ina_reg_diag_alert 231 x16
list add -a 2 -m "h" -v 5 ina_reg_shunt_ov_lvl 232 x16
list add -a 2 -m "h" -v 5 ina_reg_shunt_uv_lvl 233 x16
list add -a 2 -m "h" -v 5 ina_reg_bus_ov_lvl 234 x16
list add -a 2 -m "h" -v 5 ina_reg_bus_uv_lvl 235 x16
list add -a 2 -m "h" -v 5 ina_reg_temp_lim 236 x16
list add -a 2 -m "h" -v 5 ina_reg_pwr_lim 237 x16
list add -a 2 -m "h" -v 5 ina_reg_manuf_id 238 x16
list add -a 2 -m "h" -v 5 ina_reg_device_id 239 x16
list add -c "Balancing current" -u "μA" -m "d" -M "1" -v 0 bal_current 252 i16
list add -m "e" -v 0 tmp_fault_io 260 u32
list add -c "Temperature at the heater" -u "°C×100" -m "t" -v 0 temp_end 261 i16
list add -c "Temperature at the middle of the battery cells" -u "°C×100" -m "t" -v 0 temp_mid 262 i16
list add -a 2 -m "h" -v 5 tmp_result 270 x16
list add -a 2 -m "h" -v 5 tmp_slew 271 x16
list add -a 2 -m "h" -v 5 tmp_alert_status 272 x16
list add -a 2 -m "h" -v 5 tmp_conf 273 x16
list add -a 2 -m "h" -v 5 tmp_alert_enable 274 x16
list add -a 2 -m "h" -v 5 tmp_limit_low 275 x16
list add -a 2 -m "h" -v 5 tmp_limit_high 276 x16
list add -a 2 -m "h" -v 5 tmp_hysteresis 277 x16
list add -a 2 -m "h" -v 5 tmp_slew_limit 278 x16
list add -a 2 -m "h" -v 5 tmp_uid1 279 x16
list add -a 2 -m "h" -v 5 tmp_uid2 280 x16
list add -a 2 -m "h" -v 5 tmp_uid3 281 x16
list add -a 2 -m "h" -v 5 tmp_dieid 282 x16
