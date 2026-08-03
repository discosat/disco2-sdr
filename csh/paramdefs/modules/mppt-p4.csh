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
list add -a 4 -c "Internal use" -m "c" -v 8 mppt_step_size 111 u16
list add -a 4 -c "0=passthru+veoc, 1=fixed voltage setting, 2=automatic tracking" -m "c" -v 8 mppt_mode 113 u08
list add -a 4 -c "Voltage to set in mode 1" -u "mV" -m "c" -v 8 mppt_vfixed 115 u16
list add -c "Do not charge beyond this voltage" -u "mV" -m "c" -v 8 mppt_veoc 118 u16
list add -a 4 -c "mppt channel temperature" -u "°C×100" -m "t" -v 0 mppt_temp 120 i16
list add -a 4 -c "mppt channel output voltage" -u "mV" -m "t" -v 0 mppt_voltage 121 u16
list add -a 4 -c "mppt channel output current" -u "mA" -m "t" -v 0 mppt_current 122 i16
list add -a 4 -c "mppt channel output power" -u "mW" -m "t" -v 0 mppt_power 123 u16
list add -a 4 -c "mppt channel output voltage" -u "V" -m "d" -v 0 mppt_voltage_f 124 flt
list add -a 4 -c "mppt channel output current" -u "A" -m "d" -v 0 mppt_current_f 125 flt
list add -a 4 -c "mppt channel output power" -u "W" -m "d" -v 0 mppt_power_f 126 flt
list add -a 2 -c "bus output temperature" -u "°C×100" -m "t" -v 0 bus_temp 130 i16
list add -a 2 -c "voltage directly on the bus" -u "mV" -m "t" -v 0 bus_voltage 131 u16
list add -a 2 -c "current out of the mppt module to this bus" -u "mA" -m "t" -v 0 bus_current 132 i16
list add -a 2 -c "power out of the mppt module to this bus" -u "mW" -m "t" -v 0 bus_power 133 u16
list add -a 4 -c "mppt channel efficiency" -u "%" -m "t" -v 0 mppt_eff 134 flt
list add -a 4 -c "mppt channel at pv input" -u "°C×100" -m "d" -v 0 pv_temp 135 i16
list add -a 4 -c "pv input voltage" -u "mV" -m "t" -v 0 pv_voltage 136 u16
list add -a 4 -c "pv input current" -u "mA" -m "t" -v 0 pv_current 137 i16
list add -a 4 -c "pv input power" -u "mW" -m "t" -v 0 pv_power 138 u16
list add -a 10 -m "h" -v 5 ina_reg_config 140 x16
list add -a 10 -m "h" -v 5 ina_reg_adcconfig 141 x16
list add -a 10 -m "h" -v 5 ina_reg_currlsbcalc 142 x16
list add -a 10 -m "h" -v 5 ina_reg_tempcoconfig 143 x16
list add -a 10 -m "h" -v 5 ina_reg_vshunt 144 x32
list add -a 10 -m "h" -v 5 ina_reg_vbus 145 x32
list add -a 10 -m "h" -v 5 ina_reg_dietemp 146 x16
list add -a 10 -m "h" -v 5 ina_reg_current 147 x32
list add -a 10 -m "h" -v 5 ina_reg_power 148 x32
list add -a 10 -m "h" -v 5 ina_reg_energy 149 x64
list add -a 10 -m "h" -v 5 ina_reg_charge 150 x64
list add -a 10 -m "h" -v 5 ina_reg_diag_alert 151 x16
list add -a 10 -m "h" -v 5 ina_reg_shunt_ov_lvl 152 x16
list add -a 10 -m "h" -v 5 ina_reg_shunt_uv_lvl 153 x16
list add -a 10 -m "h" -v 5 ina_reg_bus_ov_lvl 154 x16
list add -a 10 -m "h" -v 5 ina_reg_bus_uv_lvl 155 x16
list add -a 10 -m "h" -v 5 ina_reg_temp_lim 156 x16
list add -a 10 -m "h" -v 5 ina_reg_pwr_lim 157 x16
list add -a 10 -m "h" -v 5 ina_reg_manuf_id 158 x16
list add -a 10 -m "h" -v 5 ina_reg_device_id 159 x16
list add -a 4 -c "Duty cycle in clocks (32 MHz)" -m "d" -v 0 pwm_duty 180 u16
list add -c "=0 inactive, =123 other MCU powered down" -m "d" -v 0 cross_kill 185 u08
list add -a 2 -c "=1 enabled, =0 disabled" -m "t" -v 0 output_enable_actual 188 u08
list add -a 2 -c "=1 enabled, =0 disabled" -m "c" -v 0 output_enable 189 u08
list add -c "Disable INA and PDU control in slave mode" -u "bool" -m "c" -v 0 master_mode 190 u08
list add -c "Whether to assume master mode when booting" -u "bool" -m "c" -v 8 master_mode_init 191 u08
list add -a 10 -c "Sense resistor value" -u "μOhm " -m "q" -v 8 rsense 192 u16
list add -a 2 -c "=1 enabled, =0 disabled" -m "rc" -v 8 output_enable_init 193 u08
list add -a 2 -c "voltage directly on the bus" -u "V" -m "d" -v 0 bus_voltage_f 201 flt
list add -a 2 -c "current out of the mppt module to this bus" -u "A" -m "d" -v 0 bus_current_f 202 flt
list add -a 2 -c "power out of the mppt module to this bus" -u "W" -m "d" -v 0 bus_power_f 203 flt
list add -a 4 -c "pv input voltage" -u "V" -m "d" -v 0 pv_voltage_f 206 flt
list add -a 4 -c "pv input current" -u "A" -m "d" -v 0 pv_current_f 207 flt
list add -a 4 -c "pv input power" -u "W" -m "d" -v 0 pv_power_f 208 flt
