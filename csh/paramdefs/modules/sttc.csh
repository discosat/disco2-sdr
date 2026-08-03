list add -c "Max value: 3 days + 8 hours (288000 s)" -u "s" -m "iw" -M "8" -v 0 gndwdt 1 u32
list add -c "Set according to your network topology" -m "C" -v 2 csp_can0_addr 10 u16
list add -c "Set according to your network topology" -m "C" -v 2 csp_can0_mask 11 u08
list add -c "0=no effect, 1=print csp interface configuration to stdout" -m "C" -v 0 csp_print_cnf 13 u08
list add -c "Should be set to 0" -m "C" -v 2 csp_can0_promisc 14 u08
list add -c "0=off, 1=on forwarding only, 2=incoming only, 3=on incoming and forwarding" -m "C" -v 2 csp_dedup 17 u08
list add -c "CSP RS422 address. Set according to your network topology " -m "C" -v 2 csp_kiss_addr 18 u16
list add -c "CSP RS422 mask. Set according to your network topology " -m "C" -v 2 csp_kiss_mask 19 u08
list add -c "Number of times to boot image 0" -m "iC" -M "8" -v 2 boot_img1 20 u08
list add -c "Number of times to boot image 1" -m "iC" -M "8" -v 2 boot_img0 21 u08
list add -c "Number of times to boot image 2" -m "iC" -M "8" -v 2 boot_img2 22 u08
list add -c "Number of times to boot image 0" -m "iC" -M "8" -v 2 boot_img3 23 u08
list add -c "Current image running" -m "i" -M "8" -v 2 boot_cur 24 u08
list add -c "Total number of boots" -m "i" -M "8" -v 2 boot_cnt 25 u16
list add -c "Number of failed boot attempts" -m "ei" -M "8" -v 2 boot_err 26 u16
list add -c "Should be set to 0." -m "C" -v 2 csp_can1_promisc 27 u08
list add -m "e" -v 0 stdbuf_in 28 u16
list add -m "e" -v 0 stdbuf_out 29 u16
list add -a 8 -m "C" -v 2 csp_rt_addr 35 u16
list add -a 8 -m "C" -v 2 csp_rt_mask 36 u08
list add -a 8 -m "C" -v 2 csp_rt_ifid 37 u08
list add -c "Set according to your network topology" -m "C" -v 2 csp_can1_addr 38 u16
list add -c "Set according to your network topology" -m "C" -v 2 csp_can1_mask 39 u08
list add -c "CPU load" -m "C" -v 0 rtos_print 47 u08
list add -c "CAN 0 default flag. Active HIGH." -m "C" -v 2 csp_can0_isdfl 48 u08
list add -c "CAN 1 default flag. Active HIGH." -m "C" -v 2 csp_can1_isdfl 49 u08
list add -m "C" -v 2 csp_kiss_isdfl 50 u08
list add -m "e" -v 0 csp_buf_out 51 u08
list add -m "e" -v 0 csp_conn_out 52 u08
list add -m "e" -v 0 csp_conn_ovf 53 u08
list add -m "e" -v 0 csp_conn_noroute 54 u08
list add -m "e" -v 0 csp_inval_reply 55 u08
list add -m "e" -v 0 csp_errno 56 u08
list add -m "e" -v 0 csp_can_errno 57 u08
list add -m "e" -v 0 csp_print_rdp 58 u08
list add -m "e" -v 0 csp_print_packet 59 u08
list add -m "C" -v 2 csp_kiss_baudrate 61 u32
list add -c "Two available for redundancy " -m "iC" -v 2 fpga_select 70 u08
list add -c "Set to 1 to enable CRC (recommended) " -m "iC" -v 2 fpga_load_crc 71 u08
list add -m "i" -v 0 fpga_ready 72 i08
list add -m "i" -v 0 fpga_load_time 73 u32
list add -c "Set according to your network topology" -m "C" -v 2 csp_eth0_addr 76 u16
list add -c "Set according to your network topology" -m "C" -v 2 csp_eth0_mask 77 u08
list add -c "ETH default flag. Active HIGH" -m "C" -v 2 csp_eth0_isdfl 78 u08
list add -c "Should be set to 0" -m "C" -v 2 csp_eth0_promisc 79 u08
list add -m "d" -v 0 rx_debug 101 u08
list add -m "d" -v 0 tx_debug 102 u08
list add -c "Set according to your networktopology" -m "C" -v 8 csp_cblk_addr 103 u16
list add -c "Set according to your network topology" -m "C" -v 8 csp_cblk_mask 104 u08
list add -u "Hz" -m "c" -v 8 rx_freq 105 u64
list add -c "S-band" -u "Hz" -m "c" -v 8 tx_freq 106 u64
list add -c "X-band" -u "Hz" -m "c" -v 8 tx_freq_x 107 u64
list add -m "q" -v 8 clk_correct 108 flt
list add -m "e" -v 0 rx_crcerror 109 u32
list add -c "Relative velocity of satellite towards the ground station" -u "m/s" -m "c" -v 0 relative_velocity 110 i32
list add -c "Average RSSI for rx channels" -u "dBm" -m "t" -v 0 rx_rssi 111 flt
list add -c "CBLK default flag. Active HIGH" -m "C" -v 8 csp_cblk_isdfl 112 u08
list add -c "0=No TX, 1=TX1, 2=TX2" -m "c" -M "2" -v 8 txchannel_en 120 u08
list add -c "Active HIGH" -m "c" -v 8 reset_config 121 u08
list add -m "d" -v 0 ping_dest 122 u16
list add -m "d" -v 0 param_override 123 u08
list add -m "d" -v 0 fallback_mode 124 u08
list add -m "d" -v 0 fallback_timer 125 u32
list add -c "Expect encryption for X reboots." -m "c" -M "0" -v 8 rx_decrypt 151 u08
list add -c "Enable encryption using key X (0 disables encryption)." -m "c" -M "0" -v 8 tx_encrypt 152 u08
list add -a 32 -c "Encryption key 1" -m "r" -M "0" -v 8 crypto_key1 160 dat
list add -a 32 -c "Encryption key 2" -m "r" -M "0" -v 8 crypto_key2 161 dat
list add -a 32 -c "Encryption key 3" -m "r" -M "0" -v 8 crypto_key3 162 dat
list add -a 10 -c "Nonce counter for rx" -m "t" -M "0" -v 8 crypto_nonce_rx_count 163 u64
list add -c "Nonce counter for tx" -m "t" -M "0" -v 8 crypto_nonce_tx_count 164 u64
list add -m "e" -M "0" -v 8 crypto_fail_auth_count 165 u16
list add -m "e" -M "0" -v 8 crypto_fail_nonce_count 166 u16
list add -c "Unique transmitter ID, used only when having more than one independent ground encryption node" -m "c" -M "0" -v 8 crypto_nonce_tx_id 170 u08
list add -c "Selected RX FIR 1-11, or 0 = off" -m "c" -M "1" -v 8 rx_fir_select_lb 202 u08
list add -c "Gain of selected RX FIR" -u "dB" -m "c" -M "1" -v 8 rx_fir_gain_lb 203 i08
list add -c "Selected RX FIR 1-11, or 0 = off" -m "c" -M "1" -v 8 rx_fir_select_data 204 u08
list add -c "Selected TX FIR 1-11, or 0 = off" -m "c" -M "1" -v 8 tx_fir_select 205 u08
list add -c "Gain of selected RX FIR" -u "dB" -m "c" -M "1" -v 8 rx_fir_gain_data 208 i08
list add -c "Gain of selected TX FIR" -u "dB" -m "c" -M "1" -v 8 tx_fir_gain 209 i08
list add -m "q" -v 8 ad_dcxo_coarse 210 u32
list add -m "q" -v 8 ad_dcxo_fine 211 u32
list add -c "Internal use" -m "c" -v 8 ad_tx_swap 216 u08
list add -m "d" -v 0 mode 218 u08
list add -c "Transceiver temperature" -u "°C×100" -m "t" -v 0 ad_temp 219 i32
list add -a 2 -c "RSSI for each path" -u "dBm" -m "t" -v 5 ad_rssi 221 flt
list add -a 2 -m "q" -v 8 ad_rssi_offset 223 flt
list add -c "Internal use" -m "c" -v 8 ad_rssi_fir 225 u08
list add -c "Internal use" -m "c" -v 0 gain_mode 226 u08
list add -c "AGC rx1 gain" -m "t" -v 0 gain_idx1 227 u08
list add -c "AGC rx2 gain" -m "t" -v 0 gain_idx2 228 u08
list add -c "Internal use" -m "c" -v 8 ad_rx_swap 229 u08
list add -c "0=Normal, 1=PRBS, 2=Carrier, 3=Unused, 4=Loopback RX1->TX1, 5=Loopback RX1->TX2, 6=Loopback RX2->TX1, 7=Loopback RX2->TX2" -u "enum" -m "c" -v 8 tx_input_sel 250 u08
list add -c "0=(K=7, Rate=1/2), 1=(K=7,Rate=2/3), 2=(K=7, Rate=3/4), 3=(K=7, Rate=5/6), 4=(K=7, Rate=7/8)" -u "enum" -m "c" -M "2" -v 8 tx_conv_enc_kr 257 u08
list add -c "2=5000, 3=2500, 4=1250, 5=625, 6=312.5, 7=156.25, 8=78.125, 9=39.0625, 10=19.53125" -u "enum" -m "c" -M "2" -v 8 tx_mod_symbol_rate_ndiv 259 u08
list add -c "TX frequency doppler compensation" -u "Hz" -m "d" -v 0 tx_freq_offset 260 i32
list add -m "d" -v 0 tx_status 264 x08
list add -c "0x01=(BPSK, 20% SRRC), 0x02=(BPSK, 35% SRRC), 0x03=(BPSK, 50% SRRC), 0x11=(OQPSK, 20% SRRC), 0x12=(OQPSK, 35% SRRC), 0x13=(OQPSK, 50% SRRC), 0x21=(QP" -u "enum" -m "c" -M "2" -v 8 tx_mod_sel 265 x08
list add -c "Time before the mode reverts to normal" -u "s" -m "c" -v 8 tx_input_sel_revert 266 u16
list add -c "TX training time" -u "ms" -m "c" -M "2" -v 8 tx_powerup_delay 267 u16
list add -c "S-band TX power" -m "q" -v 8 tx_power_s 268 u16
list add -c "X-band TX power" -m "q" -v 8 tx_power_x 269 u16
list add -c "TX power down delay" -u "ms" -m "c" -M "2" -v 8 tx_powerdown_delay 270 u16
list add -c "TX transceiver attenuation, max 89 dB" -u "dB" -m "c" -v 8 tx_power_att 271 u08
list add -a 2 -c "3=carrier lock, 7=viterbi lock, 0xF=frame lock" -u "bitfield" -m "t" -v 0 rx_status 286 x08
list add -a 2 -m "d" -v 0 rx_agc_dac 287 u08
list add -a 2 -m "d" -v 0 rx_snr 288 u08
list add -a 2 -m "d" -v 0 rx_carrier_frequency_error1 289 i32
list add -a 2 -m "d" -v 0 rx_carrier_frequency_error2 290 i32
list add -a 2 -m "d" -v 0 rx_signal_amplitude 291 u16
list add -m "e" -v 0 rx_reset_count 292 u08
list add -a 2 -m "e" -v 0 rx_ber_error_count 293 u32
list add -a 2 -m "d" -v 0 rx_sync_marker_ber 294 u16
list add -a 2 -m "d" -v 0 rx_fec_dec_ber_count 295 u32
list add -c "2=5000, 3=2500, 4=1250, 5=625, 6=312.5, 7=156.25, 8=78.125, 9=39.0625, 10=19.53125" -u "enum" -m "c" -M "2" -v 8 rx_demod_symbol_rate_ndiv 296 u08
list add -c "0=(K=7, Rate=1/2), 1=(K=7, Rate=2/3), 2=(K=7, Rate=3/4), 3=(K=7, Rate=5/6), 4=(K=7, Rate=7/8)" -u "enum" -m "c" -M "2" -v 8 rx_deconv_enc_kr 297 u08
list add -c "Frequency correction for doppler compensation" -u "Hz" -m "d" -v 0 rx_freq_offset 298 i32
list add -c "0x01=(BPSK, 20% SRRC), 0x02=(BPSK, 35% SRRC), 0x03=(BPSK, 50% SRRC), 0x11=(OQPSK, 20% SRRC), 0x12=(OQPSK, 35% SRRC), 0x13=(OQPSK, 50% SRRC), 0x21=(QP" -u "enum" -m "c" -M "2" -v 8 rx_demod_sel 299 x08
list add -c "Number of good CBLK's received (Internal use)" -m "d" -v 0 good_cblk 300 u64
list add -a 2 -c "Estimated frequency error" -u "Hz" -m "t" -v 0 rx_freq_error 301 i32
list add -c "MCU temperature" -u "°C×100" -m "t" -v 0 temp 360 i16
list add -c "Z7030 internal voltage. Expected around 1000 mV" -u "mV" -m "td" -v 0 vccpint 363 u16
list add -c "Z7030 internal voltage.  Expected around 1800 mV" -u "mV" -m "td" -v 0 vccpaux 366 u16
list add -c "Z7030 internal voltage. Expected around 1300 mV" -u "mV" -m "td" -v 0 vccpddr 369 u16
list add -a 2 -c "Temperature for ZYNQ and RF power supply" -u "°C×100" -m "t" -v 0 ina_temp 380 i16
list add -a 2 -c "Input current drawn for ZYNQ and RF power supply" -u "mA" -m "t" -v 0 current 381 i16
list add -a 2 -c "Input voltage for ZYNQ and RF power supply" -u "mV" -m "t" -v 0 voltage 382 u16
list add -c "Frames received" -m "t" -v 0 rx_count 410 u32
list add -c "Received bytes" -m "t" -v 0 rx_bytes 411 u32
list add -c "Frames sent" -m "t" -v 0 tx_count 412 u32
list add -c "Transmitted bytes" -m "t" -v 0 tx_bytes 413 u32
list add -c "Frames unable to send" -m "t" -v 0 tx_err 414 u32
list add -m "d" -v 0 rx_monitor 415 u08
list add -c "Frames with HMAC error" -m "t" -v 0 rx_auth_err 416 u32
list add -c "Frames with CRC error" -m "t" -v 0 rx_err 417 u32
list add -m "d" -v 0 dma_isr_ticks 420 u32
list add -m "d" -v 0 dma_isr_cnt 421 u32
list add -m "d" -v 0 ad_txen1 430 u08
list add -m "d" -v 0 ad_txen2 431 u08
list add -m "d" -v 0 ad_rxen1 432 u08
list add -m "d" -v 0 ad_rxen2 433 u08
list add -m "d" -v 0 x_synth_lock 450 u08
list add -m "d" -v 0 x_pwr_good 451 u08
list add -c "X band PA bias voltage" -u "mV" -m "t" -v 0 x_vdelta 452 i16
list add -c "X band amplifier temperature" -u "°C×100" -m "t" -v 0 x_pa_temp 453 i16
list add -c "X band PA bias current" -u "mA" -m "t" -v 0 x_current 454 i16
list add -m "d" -v 0 x_pwr_load_en 455 u08
list add -m "d" -v 0 x_pwr_en 456 u08
list add -m "d" -v 0 x_mixer_en 457 u08
list add -m "d" -v 0 x_synth_en 458 u08
list add -m "d" -v 0 x_pa_en 459 u08
list add -m "d" -v 0 x_dac_bias_ctrl 460 u16
list add -c "S band amplifier temperature" -u "°C×100" -m "t" -v 0 s_pa_temp 462 i16
list add -m "d" -v 8 x_pwr_bias_v 463 u16
list add -u "mA" -m "q" -v 8 x_pwr_bias_i 470 u16
list add -m "d" -v 0 ad_clk_debug 501 u08
list add -c "Block ID to use for IQ sampling" -m "c" -v 0 iq_block_id 554 u32
list add -c "Node address of the DSU for IQ sampling" -m "c" -v 0 iq_dsu_node 555 u16
list add -c "Status of the IQ sampler. (0=stopped,1=running)" -m "d" -v 0 iq_running 556 u08
list add -c "The current state of the eMMC chip. 0=Unknown, 1=Ready, 2=Failed" -m "t" -v 0 emmc_state 570 u08
list add -c "eMMC debug bit field. bit0=Speed" -m "d" -v 0 emmc_debug 571 u32
list add -m "d" -v 0 spi0_debug 590 u08
list add -m "e" -v 0 spi0_fault 591 u32
list add -m "d" -v 0 spi1_debug 592 u08
list add -m "e" -v 0 spi1_fault 593 u32
list add -a 2 -m "d" -v 0 cfp_tx_cnt 801 u32
list add -a 2 -m "d" -v 0 cfp_rx_cnt 802 u32
list add -a 2 -m "d" -v 0 cfp_txerr_cnt 803 u32
list add -a 2 -m "d" -v 0 cfp_rxerr_cnt 804 u32
list add -a 2 -m "d" -v 0 cfp_drop_cnt 805 u32
list add -a 2 -m "d" -v 0 cfp_formaterr_cnt 806 u32
list add -a 2 -m "d" -v 0 can_ackerr_cnt 821 u32
list add -a 2 -m "d" -v 0 can_biterr_cnt 822 u32
list add -a 2 -m "d" -v 0 can_stufferr_cnt 823 u32
list add -a 2 -m "d" -v 0 can_formerr_cnt 824 u32
list add -a 2 -m "d" -v 0 can_crcerr_cnt 825 u32
list add -a 2 -m "d" -v 0 can_busoff_cnt 826 u32
list add -a 2 -c "0: ERROR ACTIVE, 1: ERROR WARN, 2: ERROR PASSIVE, 3: BUS OFF, 4: CONFIG" -m "rt" -v 0 can_status_cnt 827 u08
