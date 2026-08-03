list add -c "Max value: 3 days + 8 hours (288000 s)" -u "s" -m "iw" -M "14" -v 0 gndwdt 1 u32
list add -c "Set according to your network topology" -m "C" -M "15" -v 2 csp_can0_addr 10 u16
list add -c "Set according to your network topology" -m "C" -M "15" -v 2 csp_can0_mask 11 u08
list add -c "0=no effect, 1=print csp interface configuration to stdout" -m "C" -v 0 csp_print_cnf 13 u08
list add -c "Should be set to 0" -m "C" -v 2 csp_can0_promisc 14 u08
list add -c "1=legacy use, 2=csp version 2" -m "C" -M "15" -v 2 csp_version 16 u08
list add -c "0=off, 1=on forwarding only, 2=incoming only, 3=on incoming and forwarding" -m "C" -v 2 csp_dedup 17 u08
list add -c "Number of times to boot image 0" -m "iC" -M "14" -v 2 boot_img1 20 u08
list add -c "Number of times to boot image 1" -m "iC" -M "14" -v 2 boot_img0 21 u08
list add -c "Number of times to boot image 2" -m "iC" -M "14" -v 2 boot_img2 22 u08
list add -c "Number of times to boot image 0" -m "iC" -M "14" -v 2 boot_img3 23 u08
list add -c "Current image running" -m "i" -M "14" -v 2 boot_cur 24 u08
list add -c "Total number of boots" -m "i" -M "14" -v 2 boot_cnt 25 u16
list add -c "Number of failed boot attempts" -m "ei" -M "14" -v 2 boot_err 26 u16
list add -m "e" -v 0 stdbuf_in 28 u16
list add -m "e" -v 0 stdbuf_out 29 u16
list add -m "h" -v 0 serial0 31 u32
list add -a 8 -m "C" -v 2 csp_rt_addr 35 u16
list add -a 8 -m "C" -v 2 csp_rt_mask 36 u08
list add -a 8 -m "C" -v 2 csp_rt_ifid 37 u08
list add -c "CAN 0 default flag. Active HIGH." -m "C" -v 2 csp_can0_isdfl 48 u08
list add -m "e" -v 0 csp_buf_out 51 u08
list add -m "e" -v 0 csp_conn_out 52 u08
list add -m "e" -v 0 csp_conn_ovf 53 u08
list add -m "e" -v 0 csp_conn_noroute 54 u08
list add -m "e" -v 0 csp_inval_reply 55 u08
list add -m "e" -v 0 csp_errno 56 u08
list add -m "e" -v 0 csp_can_errno 57 u08
list add -m "e" -v 0 csp_print_rdp 58 u08
list add -m "e" -v 0 csp_print_packet 59 u08
list add -m "d" -v 0 control_debug 100 u08
list add -m "d" -v 0 rx_debug 101 u08
list add -m "d" -v 0 tx_debug 102 u08
list add -m "d" -v 0 txfifo_debug 103 u08
list add -m "d" -v 0 rxfifo_debug 104 u08
list add -m "d" -v 0 mac_debug 105 u08
list add -m "d" -v 0 xtal_startup_ns 108 i32
list add -u "Hz" -m "d" -v 0 rx_freq_scan 109 u08
list add -m "d" -v 0 test_mode 110 u08
list add -m "rd" -v 0 ber 111 flt
list add -u "Hz" -m "c" -v 8 rx_freq_init 114 u32
list add -u "Hz" -m "c" -v 8 tx_freq_init 115 u32
list add -c "tx_vit at boot" -m "c" -v 8 tx_vit_init 116 u08
list add -c "rx_vit at boot" -m "c" -v 8 rx_vit_init 117 u08
list add -c "tx_rs at boot" -m "c" -v 8 tx_rs_init 118 u08
list add -c "rx_rs at boot" -m "c" -v 8 rx_rs_init 119 u08
list add -u "Hz" -m "c" -v 0 rx_freq 120 u32
list add -u "Hz" -m "c" -v 0 tx_freq 121 u32
list add -u "B" -m "c" -v 8 tx_preamblen 122 u08
list add -u "ms" -m "q" -v 8 guard_rx 123 u08
list add -u "ms" -m "q" -v 8 guard_tx 124 u08
list add -u "s" -m "c" -v 8 tx_max_s 125 u16
list add -u "s" -m "c" -v 8 tx_inhibit 126 u32
list add -m "q" -v 8 rssi_bgnd_ema 127 flt
list add -m "q" -v 8 rssi_offset 128 i08
list add -m "q" -v 8 guard_tx_pwr 129 i08
list add -u "ms" -m "q" -v 8 rssi_bgnd_wake 130 u16
list add -u "ms" -m "c" -v 8 tx_updly 131 u16
list add -m "q" -v 8 rssi_bgnd_max 132 i08
list add -m "h" -v 0 en_buck 133 u08
list add -m "h" -v 0 en_logamp 134 u08
list add -m "q" -v 8 dac_level 135 u16
list add -u "°C" -m "c" -v 8 tx_max_temp 136 i08
list add -m "q" -v 8 dac_level_safe 137 u16
list add -c "RX pull-in range of AFC" -u "Hz" -m "c" -v 8 rx_afcrng 138 u16
list add -c "RX enable Viterbi encoding" -m "c" -v 0 rx_vit 139 u08
list add -c "TX enable Viterbi encoding" -m "c" -v 0 tx_vit 140 u08
list add -c "TX enable gaussian shaping" -m "c" -v 8 tx_gauss 141 u08
list add -c "RX enable reed-solomon encoding" -m "c" -v 0 rx_rs 142 u08
list add -c "TX enable reed-solomon encoding" -m "c" -v 0 tx_rs 143 u08
list add -c "RX enable CCSDS randomizer" -m "c" -v 8 rx_rand 144 u08
list add -c "TX enable CCSDS randomizer" -m "c" -v 8 tx_rand 145 u08
list add -c "RX enable HMAC authentication" -m "c" -v 8 rx_auth 146 u08
list add -c "TX enable HMAC authentication" -m "c" -v 8 tx_auth 147 u08
list add -m "q" -v 8 cpl_fwd 148 flt
list add -m "q" -v 8 cpl_rev 149 flt
list add -c "Power coefficient for adjusting amplitude " -m "c" -v 8 tx_pwrcoefb 150 u16
list add -m "q" -v 8 ptt_output 153 u08
list add -c "RX modulation factor" -m "c" -v 0 tx_modfactor 154 flt
list add -c "tx_modfactor at boot" -m "c" -v 8 tx_modfactor_init 155 flt
list add -c "RX bandwidth" -u "Hz" -m "c" -v 0 rx_bandwidth 156 u32
list add -c "rx_bandwidth at boot" -u "Hz" -m "c" -v 8 rx_bandwidth_init 157 u32
list add -c "RX enable gaussian shaping" -m "c" -v 8 rx_gauss 158 u08
list add -m "d" -v 0 rx_bandwidth_actual 159 u32
list add -c "RX Baud rate" -u "bps" -m "c" -v 0 rx_baud 170 u32
list add -c "RX Baud rate at boot" -u "sps" -m "c" -v 8 rx_baud_init 171 u32
list add -c "TX Baud rate" -u "bps" -m "c" -v 0 tx_baud 172 u32
list add -c "TX Baud rate at boot" -u "sps" -m "c" -v 8 tx_baud_init 173 u32
list add -c "RX modulation factor" -m "c" -v 0 rx_modfactor 174 flt
list add -c "rx_modfactor at boot" -m "c" -v 8 rx_modfactor_init 175 flt
list add -c "Hot redundant master CSP node (=0 on master)" -m "c" -v 8 primary_node 179 u16
list add -u "dBm" -m "t" -v 0 rssi_bgnd 180 flt
list add -m "t" -v 0 rssi 181 i16
list add -m "t" -v 0 rfoff 182 i32
list add -c "Frames received" -m "t" -v 0 rx_count 183 u32
list add -c "Frames with CRC error" -m "t" -v 0 rx_err 184 u32
list add -c "Frames with HMAC error" -m "t" -v 0 rx_auth_err 185 u32
list add -c "Total bytes received" -m "t" -v 0 rx_bytes 186 u32
list add -c "Frames sent" -m "t" -v 0 tx_count 187 u32
list add -c "Frames unable to send" -m "t" -v 0 tx_err 188 u32
list add -c "Total bytes sent" -m "t" -v 0 tx_bytes 189 u32
list add -u "°C×100" -m "t" -v 0 ext_temp 192 i16
list add -m "t" -v 0 v_fwd 193 u16
list add -m "t" -v 0 v_rev 194 u16
list add -m "rt" -v 0 pwr_fwd 195 flt
list add -m "rt" -v 0 pwr_rev 196 flt
list add -m "rt" -v 0 return_loss 197 flt
list add -m "t" -v 0 pa_safemode 198 u08
list add -m "t" -v 0 pa_safemode_cnt 199 u16
list add -m "h" -v 5 ax_rev 200 x08
list add -m "h" -v 5 ax_scratch 201 x08
list add -m "h" -v 5 ax_powmode 202 x08
list add -m "rh" -v 5 ax_powstat 203 x08
list add -m "rh" -v 5 ax_powstickystat 204 x08
list add -m "h" -v 5 ax_powirqmask 205 x08
list add -m "h" -v 5 ax_irqmask 206 x16
list add -m "h" -v 5 ax_radioeventmask 207 x16
list add -m "h" -v 5 ax_irqinvert 208 x16
list add -m "rh" -v 5 ax_irq 209 x16
list add -m "rh" -v 5 ax_radioevent 210 x16
list add -m "h" -v 5 ax_modulation 211 x08
list add -m "h" -v 5 ax_encoding 212 x08
list add -m "h" -v 5 ax_framing 213 x08
list add -m "h" -v 5 ax_crcinit 214 x32
list add -m "h" -v 5 ax_fec 215 x08
list add -m "h" -v 5 ax_fecsync 216 x08
list add -m "rh" -v 5 ax_fecstatus 217 x08
list add -m "rh" -v 5 ax_radiostate 218 x08
list add -m "rh" -v 5 ax_xtalstatus 219 x08
list add -m "rh" -v 5 ax_pinstate 220 x08
list add -m "h" -v 5 ax_pinfuncsysclk 221 x08
list add -m "h" -v 5 ax_pinfuncdclk 222 x08
list add -m "h" -v 5 ax_pinfuncdata 223 x08
list add -m "h" -v 5 ax_pinfuncirq 224 x08
list add -m "h" -v 5 ax_pinfuncantsel 225 x08
list add -m "h" -v 5 ax_pinfuncpwramp 226 x08
list add -m "h" -v 5 ax_pwramp 227 x08
list add -m "h" -v 5 ax_fifostat 228 x08
list add -m "rh" -v 5 ax_fifocount 229 x16
list add -m "rh" -v 5 ax_fifofree 230 x16
list add -m "h" -v 5 ax_fifothresh 231 x16
list add -m "h" -v 5 ax_pllloop 232 x08
list add -m "h" -v 5 ax_pllcpi 233 x08
list add -m "h" -v 5 ax_pllvcodiv 234 x08
list add -m "h" -v 5 ax_pllranginga 235 x08
list add -m "h" -v 5 ax_freqa 236 u32
list add -m "h" -v 5 ax_pllloopboost 237 x08
list add -m "h" -v 5 ax_pllcpiboost 238 x08
list add -m "h" -v 5 ax_pllrangingb 239 x08
list add -m "h" -v 5 ax_freqb 240 u32
list add -m "rh" -v 5 ax_rssi 241 i08
list add -m "rh" -v 5 ax_bgndrssi 242 i08
list add -m "h" -v 5 ax_diversity 243 x08
list add -m "h" -v 5 ax_agccounter 244 x08
list add -a 3 -m "rh" -v 5 ax_trkdatarate 245 dat
list add -m "rh" -v 5 ax_trkampl 246 x16
list add -m "rh" -v 5 ax_trkphase 247 x16
list add -a 3 -m "h" -v 5 ax_trkrffreq 248 dat
list add -m "h" -v 5 ax_trkfreq 249 x16
list add -m "rh" -v 5 ax_trkfskdemod 250 x16
list add -m "rh" -v 5 ax_trkafskdemod 251 x16
list add -a 3 -m "rh" -v 5 ax_timer 252 dat
list add -m "rh" -v 5 ax_wakeuptimer 253 x16
list add -m "h" -v 5 ax_wakeup 254 x16
list add -m "h" -v 5 ax_wakeupfreq 255 x16
list add -m "h" -v 5 ax_wakeupxoearly 256 x08
list add -m "h" -v 5 ax_iffreq 257 x16
list add -m "h" -v 5 ax_decimation 258 x08
list add -a 3 -m "h" -v 5 ax_rxdatarate 259 dat
list add -a 3 -m "h" -v 5 ax_maxdroffset 260 dat
list add -a 3 -m "h" -v 5 ax_maxrfoffset 261 dat
list add -m "h" -v 5 ax_fskdmax 262 x16
list add -m "h" -v 5 ax_fskdmin 263 x16
list add -m "h" -v 5 ax_afskspace 264 x16
list add -m "h" -v 5 ax_afskmark 265 x16
list add -m "h" -v 5 ax_afskctrl 266 x08
list add -m "h" -v 5 ax_amplfilter 267 x08
list add -m "h" -v 5 ax_freqleak 268 x08
list add -m "h" -v 5 ax_rxparamsets 269 x08
list add -m "rh" -v 5 ax_rxparamcurset 270 x08
list add -a 4 -m "h" -v 5 ax_rx_agcgain 280 x08
list add -a 4 -m "h" -v 5 ax_rx_agctarget 281 x08
list add -a 4 -m "h" -v 5 ax_rx_agcahyst 282 x08
list add -a 4 -m "h" -v 5 ax_rx_agcminmax 283 x08
list add -a 4 -m "h" -v 5 ax_rx_timegain 284 x08
list add -a 4 -m "h" -v 5 ax_rx_drgain 285 x08
list add -a 4 -m "h" -v 5 ax_rx_phasegain 286 x08
list add -a 4 -m "h" -v 5 ax_rx_freqgaina 287 x08
list add -a 4 -m "h" -v 5 ax_rx_freqgainb 288 x08
list add -a 4 -m "h" -v 5 ax_rx_freqgainc 289 x08
list add -a 4 -m "h" -v 5 ax_rx_freqgaind 290 x08
list add -a 4 -m "h" -v 5 ax_rx_amplgain 291 x08
list add -a 4 -m "h" -v 5 ax_rx_freqdev 292 x16
list add -a 4 -m "h" -v 5 ax_rx_fourfsk 293 x08
list add -a 4 -m "h" -v 5 ax_rx_bboffsres 294 x08
list add -m "h" -v 5 ax_tx_modcfgf 300 x08
list add -a 3 -m "h" -v 5 ax_tx_fskdev 301 dat
list add -m "h" -v 5 ax_tx_modcfga 302 x08
list add -a 3 -m "h" -v 5 ax_tx_rate 303 dat
list add -m "h" -v 5 ax_tx_pwrcoeffa 304 x16
list add -m "h" -v 5 ax_tx_pwrcoeffb 305 x16
list add -m "h" -v 5 ax_tx_pwrcoeffc 306 x16
list add -m "h" -v 5 ax_tx_pwrcoeffd 307 x16
list add -m "h" -v 5 ax_tx_pwrcoeffe 308 x16
list add -m "h" -v 5 ax_pllvcoi 309 x08
list add -m "h" -v 5 ax_pllvcoir 310 x08
list add -m "h" -v 5 ax_plllockdet 311 x08
list add -m "h" -v 5 ax_pllrngclk 312 x08
list add -m "h" -v 5 ax_xtalcap 313 x08
list add -m "h" -v 5 ax_bbtune 314 x08
list add -m "h" -v 5 ax_bboffscap 315 x08
list add -m "h" -v 5 ax_pktaddrcfg 373 x08
list add -m "h" -v 5 ax_pktlencfg 374 x08
list add -m "h" -v 5 ax_pktlenoffset 375 x08
list add -m "h" -v 5 ax_pktmaxlen 376 x08
list add -m "h" -v 5 ax_pktaddr 377 x32
list add -m "h" -v 5 ax_pktaddrmask 378 x32
list add -m "h" -v 5 ax_match0pat 379 x32
list add -m "h" -v 5 ax_match0len 380 x08
list add -m "h" -v 5 ax_match0min 381 x08
list add -m "h" -v 5 ax_match0max 382 x08
list add -m "h" -v 5 ax_match1pat 383 x16
list add -m "h" -v 5 ax_match1len 384 x08
list add -m "h" -v 5 ax_match1min 385 x08
list add -m "h" -v 5 ax_match1max 386 x08
list add -m "h" -v 5 ax_tmgtxboost 387 x08
list add -m "h" -v 5 ax_tmgtxsettle 389 x08
list add -m "h" -v 5 ax_tmgrxboost 390 x08
list add -m "h" -v 5 ax_tmgrxsettle 391 x08
list add -m "h" -v 5 ax_tmgrxoffsacq 392 x08
list add -m "h" -v 5 ax_tmgrxcoarseagc 393 x08
list add -m "h" -v 5 ax_tmgrxagc 394 x08
list add -m "h" -v 5 ax_tmgrxrssi 395 x08
list add -m "h" -v 5 ax_tmgrxpreamble1 396 x08
list add -m "h" -v 5 ax_tmgrxpreamble2 397 x08
list add -m "h" -v 5 ax_tmgrxpreamble3 398 x08
list add -m "h" -v 5 ax_rssioffset 399 x08
list add -m "h" -v 5 ax_rssiabsthr 400 x08
list add -m "h" -v 5 ax_bgndrssigain 401 x08
list add -m "h" -v 5 ax_bgndrssithr 402 x08
list add -m "h" -v 5 ax_pktchunksize 403 x08
list add -m "h" -v 5 ax_pktmiscflag 404 x08
list add -m "h" -v 5 ax_pktstoreflags 405 x08
list add -m "h" -v 5 ax_pktacceptflags 406 x08
list add -m "h" -v 5 ax_gpadcctrol 407 x08
list add -m "h" -v 5 ax_gpadcperiod 408 x08
list add -m "h" -v 5 ax_gpadcvalue 409 x16
list add -m "h" -v 5 ax_lposcconfig 410 x08
list add -m "h" -v 5 ax_lposcstatus 411 x08
list add -m "h" -v 5 ax_lposcfilt 412 x16
list add -m "h" -v 5 ax_lposcref 413 x16
list add -m "h" -v 5 ax_lposcfreq 414 x16
list add -m "h" -v 5 ax_lposcper 415 x16
list add -m "h" -v 5 ax_dacvalue 416 x16
list add -m "h" -v 5 ax_dacconfig 417 x08
list add -m "h" -v 5 ax_f10 418 x08
list add -m "h" -v 5 ax_f11 419 x08
list add -m "h" -v 5 ax_f34 420 x08
list add -m "h" -v 5 ax_f1c 421 x08
list add -m "h" -v 5 ax_f18 422 x08
list add -m "h" -v 5 ax_f0d 423 x08
list add -m "h" -v 5 ax_f00 424 x08
list add -m "h" -v 5 ax_f21 425 x08
list add -m "h" -v 5 ax_f22 426 x08
list add -m "h" -v 5 ax_f23 427 x08
list add -m "h" -v 5 ax_f26 428 x08
list add -m "h" -v 5 ax_f44 429 x08
list add -m "h" -v 5 ax_f35 430 x08
list add -c "Set according to network" -m "C" -v 8 csp_ax_addr 451 u16
list add -c "Set according to network" -m "C" -v 8 csp_ax_mask 452 u08
list add -c "Set according to network" -m "C" -v 8 csp_ax_isdfl 453 u08
list add -c "Set according to network" -m "C" -v 8 csp_ax_csp1swap 454 u08
list add -m "d" -v 8 rx_vco_mode 500 u08
list add -m "d" -v 8 tx_vco_mode 501 u08
list add -m "d" -v 8 rx_vco_rng 502 i08
list add -m "d" -v 8 tx_vco_rng 503 i08
list add -m "d" -v 0 rx_vco_rng_ns 504 i32
list add -m "d" -v 0 tx_vco_rng_ns 505 i32
list add -m "c" -v 8 rx_pll_loopbw 506 i08
list add -m "c" -v 8 tx_pll_loopbw 507 i08
list add -c "pwr_fwd_sticky is updated when the transmitter is stopped, with the value of pwr_fwd" -m "rt" -v 0 pwr_fwd_sticky 508 flt
list add -c "pwr_rev_sticky is updated when the transmitter is stopped, with the value of pwr_rev" -m "rt" -v 0 pwr_rev_sticky 509 flt
list add -m "t" -v 0 rssi_peak 510 i16
list add -c "Count of corrected bytes" -m "t" -v 0 rx_bytes_corrected 511 u32
list add -u "s" -m "d" -v 8 alt_timer 512 u16
