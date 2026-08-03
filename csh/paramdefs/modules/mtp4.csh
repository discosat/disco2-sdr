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
list add -c "Should be set to 0" -m "C" -v 2 csp_can1_promisc 27 u08
list add -m "e" -v 0 stdbuf_in 28 u16
list add -m "e" -v 0 stdbuf_out 29 u16
list add -c "MCU temperature" -u "°C×100" -m "rt" -v 0 mcu_temp 30 i16
list add -c "Internal use" -m "h" -v 0 serial0 31 u32
list add -c "Set according to your network topology" -m "C" -M "15" -v 2 csp_can1_addr 38 u16
list add -c "Set according to your network topology" -m "C" -M "15" -v 2 csp_can1_mask 39 u08
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
list add -a 2 -c "Measured temperature" -u "°C×100" -m "t" -v 0 tqr_temp 130 i16
list add -a 2 -c "Measured voltage" -u "mV" -m "t" -v 0 tqr_voltage 131 u16
list add -a 2 -c "Measured current" -u "mA" -m "t" -v 0 tqr_current 132 i16
list add -a 2 -c "Measured power consumption" -u "mW" -m "t" -v 0 tqr_power 133 i32
list add -a 2 -m "h" -v 5 ina_reg_config 140 x16
list add -a 2 -m "h" -v 5 ina_reg_adcconfig 141 x16
list add -a 2 -m "h" -v 5 ina_reg_currlsbcalc 142 x16
list add -a 2 -m "h" -v 5 ina_reg_tempcoconfig 143 x16
list add -a 2 -m "h" -v 5 ina_reg_vshunt 144 x32
list add -a 2 -m "h" -v 5 ina_reg_vbus 145 x32
list add -a 2 -m "h" -v 5 ina_reg_dietemp 146 x16
list add -a 2 -m "h" -v 5 ina_reg_current 147 x32
list add -a 2 -m "h" -v 5 ina_reg_power 148 x32
list add -a 2 -m "h" -v 5 ina_reg_energy 149 x64
list add -a 2 -m "h" -v 5 ina_reg_charge 150 x64
list add -a 2 -m "h" -v 5 ina_reg_diag_alert 151 x16
list add -a 2 -m "h" -v 5 ina_reg_shunt_ov_lvl 152 x16
list add -a 2 -m "h" -v 5 ina_reg_shunt_uv_lvl 153 x16
list add -a 2 -m "h" -v 5 ina_reg_bus_ov_lvl 154 x16
list add -a 2 -m "h" -v 5 ina_reg_bus_uv_lvl 155 x16
list add -a 2 -m "h" -v 5 ina_reg_temp_lim 156 x16
list add -a 2 -m "h" -v 5 ina_reg_pwr_lim 157 x16
list add -a 2 -m "h" -v 5 ina_reg_manuf_id 158 x16
list add -a 2 -m "h" -v 5 ina_reg_device_id 159 x16
list add -m "d" -v 0 dac_value 170 u16
list add -c "DAC output voltage" -u "mV" -m "c" -v 0 dac_v_set 171 u16
list add -a 2 -c "Enable/disable torquer channels" -u "bool" -m "c" -v 8 tqr_on 250 u08
list add -c "Torquer phase controller [0=Forward, 1=Reverse, 2=Brake]" -u "enum" -m "c" -v 0 tqr_ph 251 u08
list add -a 2 -c "Configure whether the torquer-rod is flipped. Used by tqr_ph [0=normal/forward, else=reversed]" -u "bool" -m "cq" -v 8 tqr_flipped 252 u08
list add -c "Proportional gain" -m "c" -v 8 pi_p_gain 261 flt
list add -c "Integral gain" -m "c" -v 8 pi_i_gain 262 flt
list add -c "PI lower saturation limit" -u "mV" -m "c" -v 8 pi_min_output 265 u16
list add -c "PI upper saturation limit" -u "mV" -m "c" -v 8 pi_max_output 266 u16
list add -c "Torquer-rod control mode [1 = Fixed voltage from expected Ω, 2 = PI regulator accounts for changing coil Ω, ELSE = OFF]" -u "enum" -m "c" -v 0 control_mode 270 u08
list add -c "Control mode to use after reboot" -u "enum" -m "c" -v 8 control_mode_init 271 u08
list add -c "Coil resistance. Only used when running in control_mode 'fixed voltage'" -u "Ohm" -m "c" -v 8 coil_resistance 272 u16
list add -c "Enable LDO for H-bridge. Should be 1" -u "bool" -m "c" -v 0 ldo_en 290 u08
list add -c "Parameter to control torquer rod voltage" -u "mV" -m "cd" -v 0 vtqr 291 u16
list add -c "vtqr threshold - below which ldo is disabled" -u "mV" -m "c" -v 8 vtqr_threshold 292 u16
list add -c "Calculated desired current resulting in the commanded tqr voltage: vtqr = (current_desired * coil_resistance) / enabled torquers" -u "mA" -m "t" -v 0 current_desired 317 u16
list add -c "Entry point for the ADCS to command a desired dipole (with callback if in MODE_FIXED_VOLTAGE): vtqr = (desired_dipole * current_max * coil_resistance" -u "Am2" -m "c" -v 0 dipole_desired 318 flt
list add -c "Max dipole possible by the torquer rods, required by dipole_desired (if == 0 then current_desired = dipole_desired)" -u "Am2" -m "c" -v 8 dipole_max 400 flt
list add -c "Current drawn at maximum dipole, required by dipole_desired" -u "mA" -m "c" -v 8 current_max 401 u16
list add -c "The fallback dipole is used if loss of communication with the ADCS occures (active after 30 cycles)" -u "Am2" -m "c" -v 8 dipole_fallback 402 flt
