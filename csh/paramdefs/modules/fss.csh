list add -c "Max value: 3 days + 8 hours (288000 s)" -u "s" -m "iw" -M "8" -v 0 gndwdt 1 u32
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can0_addr 10 u16
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can0_mask 11 u08
list add -c "0=no effect, 1=print csp interface configuration to stdout" -m "C" -v 0 csp_print_cnf 13 u08
list add -c "Should be set to 0" -m "C" -v 2 csp_can0_promisc 14 u08
list add -a 2 -c "Destination nodes for param publish" -m "C" -v 2 param_publish_destination 15 u16
list add -c "0=off, 1=on forwarding only, 2=incoming only, 3=on incoming and forwarding" -m "C" -v 2 csp_dedup 17 u08
list add -c "Number of times to boot image 0" -m "iC" -M "8" -v 2 boot_img1 20 u08
list add -c "Number of times to boot image 1" -m "iC" -M "8" -v 2 boot_img0 21 u08
list add -c "Current image running" -m "i" -M "8" -v 2 boot_cur 24 u08
list add -c "Total number of boots" -m "i" -M "8" -v 2 boot_cnt 25 u16
list add -c "Number of failed boot attempts" -m "ei" -M "8" -v 2 boot_err 26 u16
list add -m "e" -v 0 stdbuf_in 28 u16
list add -m "e" -v 0 stdbuf_out 29 u16
list add -c "MCU temperature" -u "°C×100" -m "rt" -v 0 mcu_temp 30 i16
list add -c "Internal use" -m "h" -v 0 serial0 31 u32
list add -c "CPU load" -m "C" -v 0 rtos_print 47 u08
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
list add -m "d" -v 0 adc_ch4_avg 102 flt
list add -m "d" -v 0 adc_ch5_avg 103 flt
list add -m "d" -v 0 adc_ch6_avg 104 flt
list add -m "d" -v 0 adc_ch7_avg 105 flt
list add -c "Allan deviation" -u "adc/sqhz" -m "d" -v 0 adc_ch4_dev 106 flt
list add -c "Allan deviation" -u "adc/sqhz" -m "d" -v 0 adc_ch5_dev 107 flt
list add -c "Allan deviation" -u "adc/sqhz" -m "d" -v 0 adc_ch6_dev 108 flt
list add -c "Allan deviation" -u "adc/sqhz" -m "d" -v 0 adc_ch7_dev 109 flt
list add -m "d" -v 0 adc_ch4 110 u16
list add -m "d" -v 0 adc_ch5 111 u16
list add -m "d" -v 0 adc_ch6 112 u16
list add -m "d" -v 0 adc_ch7 113 u16
list add -c "A+B - C+D / A+B+C+D" -m "d" -v 0 fss_x_ratio 115 flt
list add -c "B+D - A+C / A+B+C+D" -m "d" -v 0 fss_y_ratio 116 flt
list add -c "1 when measurement is valid" -u "bool" -m "t" -v 0 fss_valid 119 u08
list add -c "Factory Calibration" -m "q" -v 8 alpha_a 123 flt
list add -c "Factory Calibration" -m "q" -v 8 alpha_b 124 flt
list add -c "Factory Calibration" -m "q" -v 8 beta_a 125 flt
list add -c "Factory Calibration" -m "q" -v 8 beta_b 126 flt
list add -c "Angle alpha (azimuth), 90 deg if invalid" -u "deg" -m "t" -v 0 fss_alpha 127 flt
list add -c "Angle beta (elevation), 90 deg if invalid" -u "deg" -m "t" -v 0 fss_beta 128 flt
list add -c "Factory Calibration" -m "q" -v 8 alpha_c 129 flt
list add -c "Factory Calibration" -m "q" -v 8 beta_c 132 flt
list add -c "Factory Calibration" -m "q" -v 8 alpha_s 133 flt
list add -c "Factory Calibration" -m "q" -v 8 alpha_s0 134 flt
list add -c "Factory Calibration" -m "q" -v 8 beta_s 135 flt
list add -c "Factory Calibration" -m "q" -v 8 beta_s0 136 flt
list add -m "d" -v 0 adc_ch9_avg 140 flt
list add -c "Allan deviation" -u "adc/sqhz" -m "d" -v 0 adc_ch9_dev 141 flt
list add -m "d" -v 0 adc_ch9 142 u16
list add -c "Peak value of (A+B+C+D)" -m "d" -v 8 fss_peak_adc 149 u32
list add -c "ADC value of threshold" -m "c" -v 8 fss_threshold 151 u32
list add -c "Factory Calibration" -m "q" -v 8 adc_gain_a 152 flt
list add -c "Factory Calibration" -m "q" -v 8 adc_gain_b 153 flt
list add -c "Factory Calibration" -m "q" -v 8 adc_gain_c 154 flt
list add -c "Factory Calibration" -m "q" -v 8 adc_gain_d 155 flt
list add -c "hardware sample duration" -u "us" -m "d" -v 0 adc_smpl_duration 160 u32
list add -c "number of samples collected" -m "d" -v 0 adc_smpl_count 161 u32
list add -c "Temp sensor near diodes" -u "°C×100" -m "t" -v 0 ext_temp 162 i16
list add -c "timestamp of sample" -u "ns" -m "d" -v 0 adc_smpl_time 163 u64
list add -m "d" -v 0 spi0_debug 590 u08
list add -m "e" -v 0 spi0_fault 591 u32
