list add -c "Max value: 3 days + 8 hours (288000 s)" -u "s" -m "iw" -M "8" -v 0 gndwdt 1 u32
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can0_addr 10 u16
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can0_mask 11 u08
list add -c "0=no effect, 1=print csp interface configuration to stdout" -m "C" -v 0 csp_print_cnf 13 u08
list add -c "Should be set to 0" -m "C" -v 2 csp_can0_promisc 14 u08
list add -c "1=legacy use, 2=csp version 2" -m "C" -M "9" -v 2 csp_version 16 u08
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
list add -c "Number of IO errors" -m "e" -v 0 gyro_io_err 200 u16
list add -c "debug flag: 0 off, 1 tx, 2 rx, 3 both" -m "d" -v 0 gyro_io_debug 201 u08
list add -a 3 -c "Allan deviation" -u "°/√Hz" -m "d" -v 0 gyro_allan_dev 203 flt
list add -a 3 -c "Optimized and filtered 1 Hz sample output" -u "°/s" -m "t" -M "1" -v 0 gyro_rate_filt 204 flt
list add -a 3 -c "20 Hz samples non filtered" -u "°/s" -m "d" -v 0 gyro_rate 205 flt
list add -a 3 -c "20 Hz samples non filtered" -u "°/s" -m "d" -v 0 acc 206 flt
list add -a 3 -c "Optimized and filtered 1 Hz acceleration output x,y,z" -u "g" -m "t" -M "2" -v 0 acc_filt 207 flt
list add -a 3 -c "Allan deviation" -u "°/√Hz" -m "d" -M "2" -v 0 acc_allan_dev 208 flt
list add -a 3 -c "Allan deviation" -u "nT/√Hz" -m "d" -M "3" -v 0 mag_allan_dev 209 flt
list add -a 3 -c "Measured magnetic field vector" -u "nT" -m "d" -M "3" -v 0 mag_sample 210 dbl
list add -c "Number of IO errors" -m "e" -v 0 mag_io_errors 300 u08
list add -m "h" -v 5 mag_reg_poll 301 x08
list add -m "h" -v 5 mag_reg_cmm 302 x08
list add -m "h" -v 5 mag_reg_ccx 303 x16
list add -m "h" -v 5 mag_reg_ccy 304 x16
list add -m "h" -v 5 mag_reg_ccz 305 x16
list add -m "h" -v 5 mag_reg_tmrc 306 x08
list add -a 3 -m "h" -v 5 mag_reg_mx 307 x08
list add -a 3 -m "h" -v 5 mag_reg_my 308 x08
list add -a 3 -m "h" -v 5 mag_reg_mz 309 x08
list add -m "h" -v 5 mag_reg_bist 310 x08
list add -m "h" -v 5 mag_reg_status 311 x08
list add -m "h" -v 5 mag_reg_hshake 312 x08
list add -m "h" -v 5 mag_reg_revid 313 x08
list add -a 9 -c "Magnetometer soft iron calibration matrix" -m "q" -v 8 mag_cal_ainv 314 flt
list add -a 3 -c "Magnetometer hard iron calibration vector" -u "nT" -m "q" -v 8 mag_cal_offset 315 flt
list add -a 3 -c "Optimized and filtered 1 Hz sample output" -u "nT" -m "t" -M "3" -v 0 mag_field_filt 317 flt
list add -c "Will be 0 when writing new data, or for timeouts" -m "t" -M "3" -v 0 mag_valid 318 u08
list add -c "Magnetometer clock" -u "ns" -m "t" -M "3" -v 0 mag_clock 319 u64
list add -c "factory temp cal" -m "q" -v 8 gyro_cal_temp_x_gain 320 flt
list add -c "factory temp cal" -m "q" -v 8 gyro_cal_temp_y_gain 321 flt
list add -c "factory temp cal" -m "q" -v 8 gyro_cal_temp_z_gain 322 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_temp_x_bias 323 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_temp_y_bias 324 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_temp_z_bias 325 flt
list add -m "rh" -v 5 gyro_due_rate_z 900 i16
list add -m "rh" -v 5 gyro_due_rate_y 901 i16
list add -m "rh" -v 5 gyro_due_temp 902 x16
list add -m "rh" -v 5 gyro_due_rate_z2 903 i16
list add -m "rh" -v 5 gyro_due_rate_y2 904 i16
list add -m "rh" -v 5 gyro_due_s_sum 905 x16
list add -m "h" -v 5 gyro_due_sctrl 906 x16
list add -m "rh" -v 5 gyro_due_r_s1 907 x16
list add -m "rh" -v 5 gyro_due_r_s2 908 x16
list add -m "rh" -v 5 gyro_due_a_s1 909 x16
list add -m "rh" -v 5 gyro_due_c_s1 910 x16
list add -m "rh" -v 5 gyro_due_c_s2 911 x16
list add -m "h" -v 5 gyro_due_g_filt_dyn 912 x16
list add -m "h" -v 5 gyro_due_sys_test 913 x16
list add -m "h" -v 5 gyro_due_resctrl 914 x16
list add -m "h" -v 5 gyro_due_mode 915 x16
list add -m "rh" -v 5 gyro_due_c_id 916 x16
list add -m "rh" -v 5 gyro_due_t_id2 917 x16
list add -m "rh" -v 5 gyro_due_t_id0 918 x16
list add -m "rh" -v 5 gyro_due_t_id1 919 x16
list add -m "h" -v 5 gyro_due_selbnk 920 x16
list add -m "rh" -v 5 gyro_uno_rate_x 925 i16
list add -m "rh" -v 5 gyro_uno_accx 926 i16
list add -m "rh" -v 5 gyro_uno_accy 927 i16
list add -m "rh" -v 5 gyro_uno_accz 928 i16
list add -m "rh" -v 5 gyro_uno_temp 929 x16
list add -m "rh" -v 5 gyro_uno_rate_x2 930 i16
list add -m "rh" -v 5 gyro_uno_s_sum 931 x16
list add -m "h" -v 5 gyro_uno_sctrl 932 x16
list add -m "rh" -v 5 gyro_uno_r_s1 933 x16
list add -m "rh" -v 5 gyro_uno_r_s2 934 x16
list add -m "rh" -v 5 gyro_uno_a_s1 935 x16
list add -m "rh" -v 5 gyro_uno_c_s1 936 x16
list add -m "rh" -v 5 gyro_uno_c_s2 937 x16
list add -m "h" -v 5 gyro_uno_g_filt_dyn 938 x16
list add -m "h" -v 5 gyro_uno_sys_test 939 x16
list add -m "h" -v 5 gyro_uno_resctrl 940 x16
list add -m "h" -v 5 gyro_uno_mode 941 x16
list add -m "h" -v 5 gyro_uno_a_filt_dyn 942 x16
list add -m "rh" -v 5 gyro_uno_c_id 943 x16
list add -m "rh" -v 5 gyro_uno_t_id2 944 x16
list add -m "rh" -v 5 gyro_uno_t_id0 945 x16
list add -m "rh" -v 5 gyro_uno_t_id1 946 x16
list add -m "h" -v 5 gyro_uno_selbnk 947 x16
list add -c "0: idle, 1: init, 2: ready" -m "d" -v 0 gyro_state 950 u08
list add -c "Timer that updates time once after every measurement is taken" -u "ns" -m "t" -M "1" -v 0 gyro_clock 953 u64
list add -c "Will be 0 when writing new data, or for timeouts" -m "t" -M "1" -v 0 gyro_valid 956 u08
list add -c "Gyro DUE ASIC temperature" -u "°C" -m "d" -v 0 gyro_due_temp_c 966 flt
list add -c "Gyro UNO ASIC temperature" -u "°C" -m "d" -v 0 gyro_uno_temp_c 967 flt
list add -a 2 -c "Gyro DUE & UNO ASIC temperature" -u "°C×100" -m "t" -M "01" -v 0 gyro_temp 968 i16
list add -c "factory cal" -m "q" -v 8 gyro_cal_rate_x_gain 970 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_rate_y_gain 971 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_rate_z_gain 972 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_acc_x_gain 973 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_acc_y_gain 974 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_acc_z_gain 975 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_rate_x_bias 976 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_rate_y_bias 977 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_rate_z_bias 978 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_acc_x_bias 979 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_acc_y_bias 980 flt
list add -c "factory cal" -m "q" -v 8 gyro_cal_acc_z_bias 981 flt
