list add -u "s" -m "iw" -v 0 gndwdt 1 u32
list add -m "C" -v 2 csp_can_addr 10 u16
list add -m "C" -v 2 csp_can_mask 11 u08
list add -m "C" -v 2 csp_can_promisc 14 u08
list add -m "C" -v 2 csp_version 16 u08
list add -m "C" -v 2 csp_dedup 17 u08
list add -m "iC" -v 2 boot_img1 20 u08
list add -m "iC" -v 2 boot_img0 21 u08
list add -m "iC" -v 2 boot_img2 22 u08
list add -m "iC" -v 2 boot_img3 23 u08
list add -m "i" -v 2 boot_cur 24 u08
list add -m "i" -v 2 boot_cnt 25 u16
list add -m "ei" -v 2 boot_err 26 u16
list add -m "e" -v 0 stdbuf_in 28 u16
list add -m "e" -v 0 stdbuf_out 29 u16
list add -u "1/100 deg" -m "rt" -v 0 temp 30 i16
list add -m "h" -v 0 serial0 31 u32
list add -m "h" -v 0 serial1 32 u32
list add -m "h" -v 0 serial2 33 u32
list add -m "h" -v 0 serial3 34 u32
list add -m "C" -v 0 rtos_print 47 u08
list add -m "e" -v 0 csp_buf_out 51 u08
list add -m "e" -v 0 csp_conn_out 52 u08
list add -m "e" -v 0 csp_conn_ovf 53 u08
list add -m "e" -v 0 csp_conn_noroute 54 u08
list add -m "e" -v 0 csp_inval_reply 55 u08
list add -m "e" -v 0 csp_errno 56 u08
list add -m "e" -v 0 csp_can_errno 57 u08
list add -m "e" -v 0 csp_print_rdp 58 u08
list add -m "e" -v 0 csp_print_packet 59 u08
list add -m "d" -v 0 hall_nibble 100 u32
list add -m "d" -v 0 hall_cnt 101 u32
list add -m "d" -v 0 hall_dir 104 i32
list add -m "d" -v 0 angle 105 i32
list add -a 3 -m "d" -v 0 sine 106 i16
list add -m "t" -v 0 amplitude 107 i16
list add -m "d" -v 0 sine_isr_ticks 108 u16
list add -m "c" -v 8 angle_offset 109 i16
list add -m "cd" -v 8 sine_period 110 u16
list add -m "d" -v 0 cooldown 111 u16
list add -m "c" -v 8 waveform 112 u08
list add -m "d" -v 0 angle_advance 113 i32
list add -m "c" -v 8 angle_hyst 114 u08
list add -m "c" -v 8 angle_gain 115 u16
list add -m "c" -v 8 current_offset 116 i16
list add -m "ed" -v 0 protect_cnt 117 u16
list add -m "d" -v 0 hall0_isr_ticks 118 u16
list add -m "d" -v 0 hall0_isr_count 119 u32
list add -m "d" -v 0 diff_angle 123 u32
list add -m "d" -v 0 sine_isr_inter 124 u16
list add -m "d" -v 0 hall1_isr_ticks 125 u16
list add -m "d" -v 0 hall1_isr_count 126 u32
list add -m "d" -v 0 hall2_isr_ticks 127 u16
list add -m "d" -v 0 hall2_isr_count 128 u32
list add -m "d" -v 0 switch_angle 129 u32
list add -m "d" -v 0 delta_ticks 131 u32
list add -m "t" -v 0 rpm_err 132 flt
list add -m "t" -v 0 rpm_err_sum 133 flt
list add -m "c" -v 0 pid_en 134 u08
list add -m "c" -v 8 kp 135 flt
list add -m "c" -v 8 ki 136 flt
list add -m "c" -v 8 kd 137 flt
list add -m "c" -v 8 max_windup 138 flt
list add -m "t" -v 0 mrpm 143 i32
list add -u "nNms" -m "rt" -v 0 momentum 144 i32
list add -m "c" -v 8 sine_bc_flip 145 u08
list add -m "c" -v 8 hall_flip_order 146 u08
list add -m "c" -v 8 hall_flip_dir 147 u08
list add -m "d" -v 0 hall_err 148 u32
list add -m "d" -v 0 adc_ch11 192 u16
list add -m "d" -v 0 adc_ch9 193 u16
list add -m "d" -v 0 period2_mean 203 flt
list add -a 14 -m "d" -v 0 period1 204 u32
list add -a 14 -m "d" -v 0 period0 205 u32
list add -a 14 -m "d" -v 0 period2 206 u32
list add -m "d" -v 0 period0_mean 207 flt
list add -m "d" -v 0 period1_mean 209 flt
list add -a 14 -m "d" -v 0 period0_bias 216 flt
list add -a 14 -m "d" -v 0 period1_bias 217 flt
list add -a 14 -m "d" -v 0 period2_bias 218 flt
list add -m "d" -v 0 freq_ema 220 flt
list add -m "c" -v 8 freq_filter_mode_init 221 u08
list add -m "d" -v 0 period0_total 222 u32
list add -m "d" -v 0 period1_total 223 u32
list add -m "d" -v 0 period2_total 224 u32
list add -u "degC" -m "t" -v 0 temp_brd 230 i16
list add -u "mA" -m "t" -v 0 current 231 i16
list add -u "mA" -m "c" -v 8 curlim_soft 232 u16
list add -u "mA" -m "c" -v 8 curlim_hard 233 u16
list add -u "degC/100" -m "c" -v 8 templim_hard 234 u16
list add -m "c" -v 8 amplitude_max_step 235 u08
list add -m "c" -v 8 auto_resume 236 u08
list add -m "d" -v 0 pwm_isr_ticks 240 u32
list add -m "c" -v 8 pwm_period 242 u16
list add -m "c" -v 8 pwm_polarity 246 u08
list add -a 3 -m "d" -v 0 pwm_dither_sum 247 u32
list add -m "d" -v 0 drv_fault 250 u08
list add -m "d" -v 0 drv_reset 251 u08
list add -c "Select driver to use (1=A, 2=B, 3=Both)" -u "bool" -m "d" -M "2" drv_enable 252 u08
list add -c "Select driver to use (1=A, 2=B, 3=Both) at reboot" -u "bool" -m "d" -M "2" drv_enable_init 253 u08
list add -u "mgm^2*2pi" -m "c" -v 8 moment_of_inertia_mg2pi 259 u32
list add -u "gm2" -m "c" -v 8 moment_of_inertia 260 flt
list add -u "mNms" -m "ct" -v 0 momentum_set 261 flt
list add -u "mNm" -m "ct" -v 0 torque_set 262 flt
list add -u "krev" -m "t" -v 8 odometer 266 u32
list add -u "Ohm" -m "c" -v 8 r_sense 267 flt
list add -u "sec" -m "d" -v 0 torque_duration 281 u08
list add -m "c" -v 8 amplitude_max 284 u16
list add -m "c" -v 0 test_ampl 285 flt
list add -m "c" -v 0 test_freq 286 flt
list add -m "d" -v 0 ctrl_ticks 287 u32
list add -m "d" -v 0 mrpm_target 289 i32
list add -m "rd" -v 0 mrpm_set 290 i32
list add -m "d" -v 0 mrpm_per_sec 291 i32
list add -m "c" -v 8 mrpm_max 292 u32
list add -m "c" -v 8 mrpm_per_sec_max 293 u32
list add -m "d" -v 0 ctrl_late 294 u32
list add -m "c" -v 8 stuck_protect_en 295 u08
