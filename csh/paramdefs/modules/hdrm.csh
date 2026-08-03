list add -c "Max value: 3 days + 8 hours (288000 s)" -u "s" -m "iw" -M "14" -v 0 gndwdt 1 u32
list add -c "Set according to your network topology" -m "C" -M "15" -v 2 csp_can0_addr 10 u16
list add -c "Set according to your network topology" -m "C" -M "15" -v 2 csp_can0_mask 11 u08
list add -c "0=no effect, 1=print csp interface configuration to stdout" -m "C" -v 0 csp_print_cnf 13 u08
list add -c "Should be set to 0" -m "C" -v 2 csp_can0_promisc 14 u08
list add -c "1=legacy use, 2=csp version 2" -m "C" -M "15" -v 2 csp_version 16 u08
list add -c "0=off, 1=on forwarding only, 2=incoming only, 3=on incoming and forwarding" -m "C" -v 2 csp_dedup 17 u08
list add -c "Number of times to boot image 0" -m "iC" -M "14" -v 2 boot_img1 20 u08
list add -c "Number of times to boot image 1" -m "iC" -M "14" -v 2 boot_img0 21 u08
list add -c "Current image running" -m "i" -M "14" -v 2 boot_cur 24 u08
list add -c "Total number of boots" -m "i" -M "14" -v 2 boot_cnt 25 u16
list add -c "Number of failed boot attempts" -m "ei" -M "14" -v 2 boot_err 26 u16
list add -m "e" -v 0 stdbuf_in 28 u16
list add -m "e" -v 0 stdbuf_out 29 u16
list add -c "MCU temperature" -u "°C×100" -m "rt" -v 0 mcu_temp 30 i16
list add -c "Internal use" -m "h" -v 0 serial0 31 u32
list add -c "CAN 0 default flag. Active HIGH" -m "C" -v 2 csp_can0_isdfl 48 u08
list add -m "e" -v 0 csp_buf_out 51 u08
list add -m "e" -v 0 csp_conn_out 52 u08
list add -m "e" -v 0 csp_conn_ovf 53 u08
list add -m "e" -v 0 csp_conn_noroute 54 u08
list add -m "e" -v 0 csp_inval_reply 55 u08
list add -m "e" -v 0 csp_errno 56 u08
list add -m "e" -v 0 csp_can_errno 57 u08
list add -m "e" -v 0 csp_print_rdp 58 u08
list add -m "e" -v 0 csp_print_packet 59 u08
list add -m "d" -v 0 adc_ch4 101 u16
list add -u "°C×100" -m "t" -v 0 ntc_temp 111 i16
list add -c "1 armed, 0 disarmed (pauses countdown)" -m "rd" -v 0 arm_sig 112 u08
list add -c "1 released, 0 not released" -m "rt" -v 0 released_sig 113 u08
list add -c "1 always force release_sig to zero, 0 default operation" -m "c" -v 8 released_sig_ignore 114 u08
list add -c "1 always force arm_sig to 1, 0 default operation" -m "c" -v 8 arm_sig_ignore 115 u08
list add -c "Direct access to burn_sig" -m "d" -v 0 burn_sig 120 u08
list add -c "How long to burn for when releasing" -u "s" -m "c" -v 8 burn_duration 123 u08
list add -c "Counts down to 0 while burning" -u "s" -m "rd" -v 0 burn_off_in 124 u08
list add -c "How many times burn has been activated." -m "t" -v 8 burn_cnt 128 u16
list add -c "Time spent actively burning. Resets on burn." -u "ms" -m "rt" -v 8 burn_time_active 129 u16
list add -c "Countdown for autonomous release" -u "s" -m "c" -v 8 burn_on_in 130 u32
list add -c "Number of releases" -m "d" -v 8 release_cnt 132 u16
list add -c "Is decremented by one when off_in = zero" -m "c" -v 8 burn_retries 133 u16
list add -c "Is copied to on_in when off_in = 0 and times > 0" -u "s" -m "c" -v 8 burn_interval 134 u16
list add -u "mA" -m "t" -v 0 current 200 i16
list add -u "mA" -m "t" -v 0 current_peak 201 i16
list add -u "mV" -m "t" -v 0 voltage 210 u16
list add -u "mV" -m "t" -v 0 voltage_peak 211 u16
list add -u "°C×100" -m "t" -v 0 temp_ina 220 i16
list add -m "e" -v 0 ina_fault_io 221 u32
list add -m "h" -v 5 ina_config 230 x16
list add -m "h" -v 5 ina_adcconfig 231 x16
list add -m "h" -v 5 ina_currlsbcalc 232 x16
list add -m "h" -v 5 ina_tempcoconfig 233 x16
list add -a 3 -m "h" -v 5 ina_vshunt 234 dat
list add -a 3 -m "h" -v 5 ina_vbus 235 dat
list add -m "h" -v 5 ina_dietemp 236 x16
list add -a 3 -m "h" -v 5 ina_current 237 dat
list add -a 3 -m "h" -v 5 ina_power 238 dat
list add -a 5 -m "h" -v 5 ina_energy 239 dat
list add -a 5 -m "h" -v 5 ina_charge 240 dat
list add -m "h" -v 5 ina_diag_alert 241 x16
list add -m "h" -v 5 ina_shunt_ov_lvl 242 x16
list add -m "h" -v 5 ina_shunt_uv_lvl 243 x16
list add -m "h" -v 5 ina_bus_ov_lvl 244 x16
list add -m "h" -v 5 ina_bus_uv_lvl 245 x16
list add -m "h" -v 5 ina_temp_lim 246 x16
list add -m "h" -v 5 ina_pwr_lim 247 x16
list add -m "h" -v 5 ina_manuf_id 248 x16
list add -m "h" -v 5 ina_device_id 249 x16
