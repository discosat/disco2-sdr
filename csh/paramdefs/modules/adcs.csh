list add -c "Max value: 3 days + 8 hours (288000 s)" -u "s" -m "iw" -M "8" -v 0 gndwdt 1 u32
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can0_addr 10 u16
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can0_mask 11 u08
list add -c "0=no effect, 1=print csp interface configuration to stdout" -m "C" -v 0 csp_print_cnf 13 u08
list add -c "Should be set to 0" -m "C" -v 2 csp_can0_promisc 14 u08
list add -c "0=off, 1=on forwarding only, 2=incoming only, 3=on incoming and forwarding" -m "C" -v 2 csp_dedup 17 u08
list add -c "Number of times to boot image 0" -m "iC" -M "8" -v 2 boot_img1 20 u08
list add -c "Number of times to boot image 1" -m "iC" -M "8" -v 2 boot_img0 21 u08
list add -c "Number of times to boot image 2" -m "iC" -M "8" -v 2 boot_img2 22 u08
list add -c "Number of times to boot image 0" -m "iC" -M "8" -v 2 boot_img3 23 u08
list add -c "Current image running" -m "i" -M "8" -v 2 boot_cur 24 u08
list add -c "Total number of boots" -m "i" -M "8" -v 2 boot_cnt 25 u16
list add -c "Number of failed boot attempts" -m "ei" -M "8" -v 2 boot_err 26 u16
list add -c "Should be set to 0" -m "C" -v 2 csp_can1_promisc 27 u08
list add -m "e" -v 0 stdbuf_in 28 u16
list add -m "e" -v 0 stdbuf_out 29 u16
list add -m "h" -v 0 serial0 31 u32
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can1_addr 38 u16
list add -c "Set according to your network topology" -m "C" -M "9" -v 2 csp_can1_mask 39 u08
list add -c "Primary node on network to perform time synchronization" -m "C" -v 8 tfetch_primary 41 u16
list add -c "Secondary node on network to perform time synchronization" -m "C" -v 8 tfetch_secondary 42 u16
list add -c "Timeout for the request for primary and secondary tfetch nodes" -m "C" -v 8 tfetch_timeout 43 u16
list add -c "Shows the node to the unit (primary or secondary) which had a successful timesync" -m "d" -v 0 tfetch_synced 44 u16
list add -c "Counter that shows how many times the tfetch was not successfull in recieved a valid timesync from either of the two tfetch nodes. " -m "d" -v 0 tfetch_errors 45 u16
list add -c "VMEM backup of last unix timestamp" -m "d" -v 8 tfetch_last_s 46 u32
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
list add -m "t" -v 0 adcs_timestamp 200 u32
list add -c "0: Timesync is invalid, 1: Timesync is valid" -m "d" -v 0 adcs_timesync_valid 201 u08
list add -a 3 -c "Principal moments of inertia" -u "kgm²" -m "c" -v 8 sat_inertia 202 flt
list add -a 3 -c "Satellite center of mass wrt body frame" -u "m" -m "c" -v 8 sat_com 203 flt
list add -m "ct" -v 0 ads_mode 204 u08
list add -c "0=Safe mode,1=detumbling,2=pointing,else=wheel desaturation control" -m "ct" -v 0 acs_mode 205 u08
list add -a 71 -c "First line of TLE (two-line element)" -m "c" -v 8 tle_line1 206 str
list add -a 71 -c "Second line of TLE (two-line element)" -m "c" -v 8 tle_line2 207 str
list add -a 9 -c "3x3 matrix for non-diagonal inertia matrix specification" -u "kgm²" -m "c" -v 8 sat_inertia_nondiag 208 flt
list add -a 9 -c "Rotation matrix from spacecraft body frame to principal-axis control reference frame" -m "c" -v 8 r_body_to_principal 209 flt
list add -a 12 -c "Reaction wheel layout" -m "c" -v 8 rewl_matrix 214 dbl
list add -a 12 -c "Inverse reaction wheel layout" -m "c" -v 8 rewl_inv_matrix 215 dbl
list add -c "Activate ADCS control loop" -m "c" -v 0 enable_adcs 217 u08
list add -m "d" -v 0 adcs_run_ns 219 u32
list add -m "c" -v 8 detumble_k_tr 220 flt
list add -c "Lower rate threshold for detumble routine" -u "rad/s" -m "c" -v 8 detumble_thres_low 221 flt
list add -m "c" -v 8 detumble_k_whl 222 flt
list add -c "If enabled the controller performs an automatic transition from detumbling mode to LQR control" -m "c" -v 0 detumble_to_lqr_en 223 u08
list add -c "Automatic transition from detumbled to 3-axis control initial value of detumble_to_lqr_en on reboot" -m "c" -v 8 detumble_to_lqr_en_init 224 u08
list add -a 6 -c "Initial quaternion state used by the MEKF" -m "c" -v 8 mekf_q_init 227 flt
list add -m "c" -v 8 mekf_bias_gain 228 flt
list add -c "Binary flag to indicate whether the integral control is enabled" -m "d" -v 0 lqr_integrator_en 229 u08
list add -c "Approximate orbit-average reflectivity of the spacecraft surface (1<= orb_srp_c <= 2) - 1: Fully Absorbing, 2: Fully reflective" -m "c" -v 8 orb_srp_c 230 flt
list add -m "e" -v 0 ads_err_count 231 u16
list add -c "Approximate orbit-average spacecraft area perpendicular to the Sun for solar raditation pressure force modeling" -u "m²" -m "c" -v 8 orb_srp_area 232 flt
list add -c "Reload orbit parameters from TLE" -m "d" -v 0 orb_tle_reload 233 u08
list add -c "Orbit revolutions at epoch" -m "c" -v 8 orb_rev_at_epoch 234 i32
list add -c "B-STAR drag coefficient" -m "c" -v 8 orb_bstar 235 flt
list add -c "Second derivative of orbital mean motion" -m "c" -v 8 orb_second_deriv 236 flt
list add -c "First derivative of orbital mean motion" -m "c" -v 8 orb_deriv_motion 237 flt
list add -c "Orbit mean anomaly" -u "deg" -m "c" -v 8 orb_mean_anomaly 238 flt
list add -c "Orbit argument of perigee" -u "deg" -m "c" -v 8 orb_arg_perigee 239 flt
list add -c "Reloading ephemeris " -m "d" -v 0 ephem_reload 240 u08
list add -c "Orbit inclination" -u "deg" -m "c" -v 8 orb_incl 241 flt
list add -c "Orbit right ascension of ascending node" -u "deg" -m "c" -v 8 orb_raan 242 flt
list add -c "Orbit eccentricity" -m "c" -v 8 orb_ecc 243 flt
list add -c "Orbital mean motion in orbits/day" -u "orbits/da" -m "c" -v 8 orb_mean_motion 244 dbl
list add -c "Last to digits of the epoch year" -u "yr" -m "c" -v 8 orb_epoch_year 245 i08
list add -c "Epoch days in the year with decimals for the time of the day" -u "day" -m "c" -v 8 orb_epoch_day 246 dbl
list add -c "TLE Satellite Number" -m "c" -v 8 orb_sat_num 247 i32
list add -a 11 -m "c" -v 8 orb_designator 249 str
list add -a 4 -c "Reaction wheels CSP address" -m "c" -v 8 rewl_addr 250 u16
list add -a 4 -c "CSP Address of each magnetorquer" -m "c" -v 8 mt_addr 251 u16
list add -a 12 -c "CSP address of FSS" -m "c" -v 8 fss_addr 252 u16
list add -m "c" -v 8 mag_std 255 flt
list add -c "If the reference angular rate is above this value, the wheel desaturation control is disabled. If set to zero, it has no impact on the control." -u "rad/s" -m "c" -v 0 desat_wref_thres_hi 270 flt
list add -m "c" -v 8 sun_std 271 flt
list add -a 18 -m "d" -v 0 ads_p_l 272 dbl
list add -a 18 -m "d" -v 0 ads_p_h 273 dbl
list add -c "Attitude determination gyro bias estimation configuration. 0=Disabled, 1=MAG,2=SUN,3=SUN+MAG(Use 3 if STR Enabled)" -m "c" -v 8 ads_gyro_bias_en 274 u08
list add -a 3 -c "Estimated gyro rate bias" -u "deg/s" -m "t" -v 0 ads_gyro_bias 275 dbl
list add -m "c" -v 8 star_std 276 flt
list add -c "Enable/disable reaction wheel bias controller" -m "c" -v 0 rewl_bias_en 280 u08
list add -c "Initial value of rewl_bias_en on a reboot" -m "c" -v 8 rewl_bias_en_init 281 u08
list add -c "Reaction wheel bias reference" -u "Nms" -m "c" -v 8 rewl_bias_ref 283 flt
list add -c "Reaction wheel bias controller gain" -m "c" -v 8 rewl_bias_gain 284 flt
list add -c "Enable/disable desaturation of wheels" -m "c" -v 0 desat_en 285 u08
list add -c "Initial value of desat_en on a reboot" -m "c" -v 8 desat_en_init 286 u08
list add -a 4 -u "gm²" -m "c" -v 8 rewl_moi 287 flt
list add -u "Nm" -m "c" -v 8 rewl_max_torque 288 flt
list add -c "Wheel size, e.g. 50, 100, 200, etc." -m "c" -v 8 rewl_size 289 u16
list add -c "Initial value of enable_adcs on reboot" -m "c" -v 8 enable_adcs_init 291 u08
list add -c "Initial Attitude Determination mode setting ads_mode on reboot" -m "c" -v 8 ads_mode_init 292 u08
list add -c "Initial Attitude Control mode setting acs_mode on reboot" -m "c" -v 8 acs_mode_init 293 u08
list add -c "Initial value of w_trig_detumble on reboot" -u "rad/s" -m "c" -v 8 w_trig_detumble_init 294 flt
list add -c "Initial value of w_trig_safe on reboot" -u "rad/s" -m "c" -v 8 w_trig_safe_init 295 flt
list add -c "Rate threshold for triggering IDLE mode. No actuation is permitted" -m "c" -v 0 w_trig_safe 296 flt
list add -c "Rate threshold for triggering detumbling mode " -m "c" -v 0 w_trig_detumble 297 flt
list add -u "Nms" -m "c" -v 8 rewl_max_momentum 298 flt
list add -a 4 -c "Null vector of employed reaction wheel configuration" -m "c" -v 8 rewl_null_vector 299 flt
list add -a 3 -c "Satellite position in ECI" -u "km" -m "t" -v 0 ephem_pos 300 dbl
list add -a 3 -c "Satellite velocity in ECI" -u "km/s" -m "t" -v 0 ephem_vel 301 dbl
list add -a 3 -c "Calculated control signal for wheels" -u "Nm" -m "t" -v 0 acs_u_rw 302 dbl
list add -a 3 -c "Estimated angular rate" -u "rad/s" -m "t" -v 0 ads_w_hat 303 dbl
list add -a 3 -u "rad/s" -m "t" -v 0 acs_w_err 304 dbl
list add -a 4 -c "Estimated quaternion" -m "t" -v 0 ads_q_hat 305 dbl
list add -a 4 -c "Reference quaternion" -m "t" -v 0 ref_q 306 dbl
list add -a 4 -c "Estimated error quaternion" -m "t" -v 0 acs_q_err 307 dbl
list add -a 3 -c "Torquer dipole moment requested in the spacecraft body frame" -u "Am²" -m "t" -v 0 acs_u_mag 308 dbl
list add -a 3 -c "Sun position in ECI" -u "m" -m "t" -v 0 ephem_sun 310 dbl
list add -a 3 -c "Rate measurement" -u "rad/s" -m "t" -v 0 w_meas 311 dbl
list add -a 3 -c "Magnetic field measurement" -u "nT" -m "t" -v 0 b_meas 312 dbl
list add -a 3 -c "Direction sun vector in body frame (weighted average from all fine sun sensors) " -m "t" -v 0 ads_sun_meas 313 dbl
list add -a 4 -c "Measured wheel momentum of the individual wheels" -u "Nms" -m "t" -v 0 rewl_h_meas 314 dbl
list add -a 3 -c "Calculated net momentum of reaction wheel assembly in the body reference frame" -u "Nms" -m "t" -v 0 rewl_h_body 315 dbl
list add -a 3 -m "t" -v 0 rewl_w_body 316 dbl
list add -a 4 -c "Limited and bias-corrected dipole moment of each magnetorquer" -u "Am²" -m "t" -v 0 mt_dipole 318 flt
list add -a 4 -c "Calculated reaction wheel torque" -u "Nm" -m "t" -v 0 rewl_torque 319 dbl
list add -a 12 -c "Vectors with index for each sun sensor with number of io errors with the sun sensors since startup" -m "e" -v 0 fss_io_err 322 u16
list add -a 4 -c "Vector with indices for each wheel with number of io errors with the wheels since startup" -m "e" -v 0 rewl_io_err 323 u16
list add -a 4 -c "Vector with indices for each magnetorquer with number of io errors since last startup" -m "e" -v 0 mt_io_err 324 u16
list add -a 3 -c "Estimated error quaternion represented as Euler angles" -u "deg" -m "t" -v 0 acs_euler_err 325 flt
list add -c "Latitude" -u "deg" -m "t" -v 0 ephem_lat 326 dbl
list add -c "Longitude" -u "deg" -m "t" -v 0 ephem_lon 327 dbl
list add -c "Altitude above WGS84" -u "km" -m "t" -v 0 ephem_alt 328 dbl
list add -a 3 -c "Angular reference rate" -m "t" -v 0 ref_w 330 dbl
list add -a 3 -c "Magnetic model estimate of the magnetic field in satellite body frame" -u "T" -m "t" -v 0 ephem_mag_body 332 dbl
list add -a 3 -c "Most recent propagated spacecraft position which is used as initial position for orbit propagator after reboot if the system timestamp is invalid" -m "c" -v 8 orbit_prop_pos_last 335 flt
list add -a 3 -c "Most recent propagated spacecraft velocity which is used as initial velocity for orbit propagator after reboot if the system timestamp is invalid" -m "c" -v 8 orbit_prop_vel_last 336 flt
list add -c "If enabled [set to 1], the output of the magnetic model will be used for desaturation / detumbling instead of the actual magnetometer measurements" -m "c" -v 0 desat_magModel_enable 337 u08
list add -c "If gyro changes from invalid to valid: 0 - acs_mode stays 0, 1 - acs_mode goes to previous value" -m "c" -v 8 gyro_auto_recover 338 u08
list add -a 3 -u "m/s" -m "t" -v 0 orbit_prop_vel 356 dbl
list add -a 3 -u "m" -m "t" -v 0 orbit_prop_pos 357 dbl
list add -c "If enabled the on-board numerical propagator is enabled. This is used for on-orbit operation." -m "d" -v 0 orbit_propagate 358 u08
list add -c "Initial value of orbit_propagate" -m "d" -v 8 orbit_propagate_init 359 u08
list add -a 12 -m "t" -v 0 fss_alpha 361 flt
list add -a 12 -m "t" -v 0 fss_beta 362 flt
list add -a 9 -c "FSS rotation matrix" -m "q" -v 8 fss_r0 363 flt
list add -a 9 -c "FSS rotation matrix" -m "q" -v 8 fss_r1 364 flt
list add -a 9 -c "FSS rotation matrix" -m "q" -v 8 fss_r2 365 flt
list add -a 9 -c "FSS rotation matrix" -m "q" -v 8 fss_r3 367 flt
list add -a 9 -c "FSS rotation matrix" -m "q" -v 8 fss_r4 368 flt
list add -a 9 -c "FSS rotation matrix" -m "q" -v 8 fss_r5 369 flt
list add -c "Angle limit for FSS filtering" -m "c" -v 8 fss_angle_limit 370 flt
list add -a 9 -c "FSS rotation matrix" -m "q" -v 8 fss_r6 375 flt
list add -a 9 -c "FSS rotation matrix" -m "q" -v 8 fss_r7 376 flt
list add -a 12 -m "c" -v 8 fss_mode 377 u08
list add -a 12 -c "4x3 Rotation matrix from spacecraft body reference frame to torquer output dipole direction" -m "c" -v 8 mt_rot 378 flt
list add -a 9 -c "FSS rotation matrix" -m "q" -v 8 fss_r8 379 flt
list add -a 9 -c "FSS rotation matrix" -m "q" -v 8 fss_r9 384 flt
list add -a 2 -m "c" -v 8 gyro_mode 385 u08
list add -a 9 -c "FSS rotation matrix" -m "q" -v 8 fss_r10 388 flt
list add -a 9 -c "FSS rotation matrix" -m "q" -v 8 fss_r11 389 flt
list add -a 2 -m "c" -v 8 mag_mode 395 u08
list add -u "nT" -m "c" -v 8 mag_filter_max 398 flt
list add -u "nT" -m "c" -v 8 mag_filter_min 399 flt
list add -a 4 -c "Maximum dipole used for magnetorquers" -m "c" -v 8 mt_max_dipole 400 flt
list add -a 4 -c "Dipole moment bias to applied to each magnetorquer" -u "Am²" -m "t" -v 0 mt_bias 403 flt
list add -c "0/1=MTQ, 2=RWL, 3=RWL+MTQ" -m "c" -v 0 detumble_sel_mode 404 u08
list add -c "Initial value of detumble_sel_mode on reboot" -m "c" -v 8 detumble_sel_mode_init 405 u08
list add -a 18 -c "Full set of LQR gains, including for cross-coupling between axes" -m "c" -v 8 lqr_k4 409 flt
list add -a 18 -m "d" -v 0 lqr_k 410 dbl
list add -a 6 -c "Diagonal LQR gains" -m "c" -v 8 lqr_k1 411 flt
list add -a 6 -c "Diagonal LQR gains" -m "c" -v 8 lqr_k2 412 flt
list add -a 6 -c "Diagonal LQR gains" -m "c" -v 8 lqr_k3 413 flt
list add -c "LQR gain selection" -m "c" -v 8 lqr_k_select 414 u08
list add -c "Gain selection set [1-3] to use when control errors are above lqr_lo_q/w_thres" -m "c" -v 8 lqr_k_hi_select 415 u08
list add -c "Gain selection set [1-3] to use when control errors are below 0.75*lqr_lo_q/w_thres" -m "c" -v 8 lqr_k_lo_select 416 u08
list add -u "deg" -m "c" -v 8 lqr_lo_q_thres 417 flt
list add -u "rad/s" -m "c" -v 8 lqr_lo_w_thres 418 flt
list add -c "Delayed detumble" -u "s" -m "c" -v 8 adcs_detumble_in 420 u32
list add -c "Delayed 3-axis pointing" -u "s" -m "c" -v 8 adcs_pointing_in 421 u32
list add -a 3 -m "c" -v 8 lqr_integral_k 422 flt
list add -a 3 -u "rad/Nm" -m "c" -v 8 lqr_antiwindup_k 423 flt
list add -a 3 -c "Vector in body frame containing the torque residual after being limited in the wheel controller" -u "Nm" -m "d" -v 0 lqr_limited_torque_aw 424 dbl
list add -a 3 -c "Value of integrator action after multiplication with integral gain Ki" -m "d" -v 0 lqr_u_integrator_out 425 dbl
list add -c "Spacecraft body axis for primary attitude reference: 0=X+,1=Y+,2=Z+,3=X-,4=Y-,5=Z-" -m "ct" -v 0 ref_pri_src 426 u08
list add -c "Initial value of ref_pri_src on reboot" -m "c" -v 8 ref_pri_src_init 427 u08
list add -c "Active primary target vector configuration" -m "ct" -v 0 ref_pri_tgt 428 u08
list add -c "Initial value of ref_pri_tgt primary target vector on reboot" -m "c" -v 8 ref_pri_tgt_init 429 u08
list add -c "Spacecraft body axis for secondary attitude reference: 0=X+,1=Y+,2=Z+,3=X-,4=Y-,5=Z-" -m "ct" -v 0 ref_sec_src 430 u08
list add -c "Initial value of ref_sec_src on reboot" -m "c" -v 8 ref_sec_src_init 431 u08
list add -c "Active secondary target vector configuration" -m "ct" -v 0 ref_sec_tgt 432 u08
list add -c "Initial value of ref_sec_tgt secondary source target on reboot" -m "c" -v 8 ref_sec_tgt_init 433 u08
list add -a 3 -c "Custom reference source vector in the satellite body reference frame" -m "c" -v 8 ref_src_v0 434 flt
list add -a 3 -c "Custom reference source vector in the satellite body reference frame" -m "c" -v 8 ref_src_v1 435 flt
list add -a 3 -m "c" -v 8 ref_src_v2 436 flt
list add -a 3 -c "Custom reference source vector in the satellite body reference frame" -m "c" -v 8 ref_src_v3 437 flt
list add -a 3 -c "Landmark LLA coordinates [lat, lon, alt]" -u "[deg, deg" -m "c" -v 8 ref_landmark0 438 flt
list add -a 3 -c "Landmark LLA coordinates [lat, lon, alt]" -u "[deg, deg" -m "c" -v 8 ref_landmark1 439 flt
list add -a 3 -c "Landmark LLA coordinates [lat, lon, alt]" -u "[deg, deg" -m "c" -v 8 ref_landmark2 440 flt
list add -a 3 -c "Landmark LLA coordinates [lat, lon, alt]" -u "[deg, deg" -m "c" -v 8 ref_landmark3 441 flt
list add -c "Optional tolerance on primary reference to improve secondary pointing" -u "deg" -m "c" -v 8 ref_pri_tolerance 442 flt
list add -a 4 -c "Known precise eci to ecef quaternion, yielding a precise rotation (i,j,k,r)" -m "c" -v 8 ref_eci_2_ecef_calib_q 443 dbl
list add -c "Angle around Z axis at which the ref_eci_2_ecef_calib_q was calibrated" -u "rad" -m "c" -v 8 ref_eci_2_ecef_calib_angle 444 dbl
list add -u "kg" -m "c" -v 8 sat_mass 454 flt
list add -c "0 - ref_eci_2_ecef_calib_q is invalid, calibration not used. 1 - ref_eci_2_ecef_calib_q is valid, calib conversion is used." -m "t" -v 0 ref_eci_2_ecef_calib_valid 462 u08
list add -c "Height input for the tangent height reference frame" -u "km" -m "c" -v 8 ref_tangent_height_km 463 flt
list add -c "Track angle for the tangent height reference frame, CCW around the nadir vector: 0=velocity, 90=anti-orbit normal (towards orbit frame Y)" -u "deg" -m "c" -v 8 ref_tangent_track_angle 464 flt
list add -c "Delayed LEOP sun pointing" -u "s" -m "c" -v 8 adcs_sun_pointing_in 465 u32
list add -a 8 -c "Vector with indices for each star tracker with number of io errors with that star trackers since startup" -m "e" -v 0 star_io_err 502 u16
list add -a 8 -c "CSP address of star tracker" -m "c" -v 8 star_addr 503 u16
list add -a 8 -m "c" -v 8 star_mode 504 u08
list add -a 9 -m "q" -v 8 star_r0 510 flt
list add -a 9 -m "q" -v 8 star_r1 511 flt
list add -a 9 -m "q" -v 8 star_r2 512 flt
list add -a 9 -m "q" -v 8 star_r3 513 flt
list add -a 9 -m "q" -v 8 star_r4 514 flt
list add -a 9 -m "q" -v 8 star_r5 515 flt
list add -a 9 -m "q" -v 8 star_r6 516 flt
list add -a 9 -m "q" -v 8 star_r7 517 flt
list add -u "s" -m "q" -v 0 star_last_time0 520 u64
list add -u "s" -m "q" -v 0 star_last_time1 521 u64
list add -u "s" -m "q" -v 0 star_last_time2 522 u64
list add -u "s" -m "q" -v 0 star_last_time3 523 u64
list add -u "s" -m "q" -v 0 star_last_time4 524 u64
list add -u "s" -m "q" -v 0 star_last_time5 525 u64
list add -u "s" -m "q" -v 0 star_last_time6 526 u64
list add -u "s" -m "q" -v 0 star_last_time7 527 u64
list add -a 8 -m "c" -v 8 debug_star 528 u08
list add -a 4 -c "Duration of burn of i'th thruster: [0]= X+, [1]=X-, [2]=Z+, [3]=Z-" -u "s" -m "c" -v 0 prop_duration 533 u32
list add -a 4 -c "Array with index to indicate what thruster is on. [0]= X+, [1]=X-, [2]=Z+, [3]=Z-" -m "c" -v 0 prop_enable 534 u08
list add -a 4 -c "Array with indices to indicate in how many seconds each thruster is to be activated. If zero, a burn is not scheduled. Indeces for thrusters are: [0]" -u "s" -m "c" -v 0 prop_enable_in 535 u32
list add -a 3 -c "Torque vector in body frame from propulsion system" -u "Nm" -m "d" -v 0 prop_torque_out 537 dbl
list add -c "Maximum thruster vectoring angle (half cone)" -u "deg" -m "c" -v 8 prop_vectoring_max 540 flt
list add -a 3 -c "Vector with distances from x,y,z body panels to spacecraft center of mass" -u "m" -m "c" -v 8 prop_dist_CoM 541 flt
list add -c "Constant thrust level of thruster when on" -u "N" -m "c" -v 8 prop_thrust 542 flt
list add -a 4 -c "Vector with azimuth angles of thrusters (0 - 360 deg)" -u "deg" -m "t" -v 0 prop_azimuth 543 dbl
list add -a 4 -c "Vector with elevation angles of thrusters" -u "deg" -m "t" -v 0 prop_elevation 544 dbl
list add -a 4 -c "Vector with vectoring offset azimuth angles to correct for CoM deviation from geometrical center of spacecraft" -u "deg" -m "c" -v 8 prop_azimuth_offset 545 flt
list add -a 4 -c "Vector with vectoring offset elevation angles to correct for CoM deviation from geometrical center of spacecraft" -u "deg" -m "c" -v 8 prop_elevation_offset 546 flt
list add -c "High hysteresis threshold in Nms. If wheel angular momentum in body frame is above this value vectoring angles for desaturation are computed" -u "Nms" -m "c" -v 8 desat_h_threshold_hi 547 flt
list add -c "Low hysteresis threshold in Nms. If wheel angular momentum in body frame is below this value thruster desaturation is disabled" -u "Nms" -m "c" -v 8 desat_h_threshold_lo 548 flt
list add -a 4 -c "Array containing the desaturation elevation angles for each thruster" -u "deg" -m "c" -v 8 prop_elevation_desat 549 flt
list add -m "c" -v 0 orbit_input_ref 550 u08
list add -m "c" -v 8 orbit_input_ref_init 551 u08
list add -m "c" -v 8 orbit_error_gain 552 flt
list add -m "t" -v 0 orbit_eclipsed 553 u08
list add -u "rad" -m "t" -v 0 orbit_eclipse_depth 554 dbl
list add -c "CSP address of the GNSS" -m "c" -v 8 gps_addr 557 u16
list add -c "Number of GPS io errors since startup" -m "e" -v 0 gps_io_err 558 u16
list add -c "Timeout duration for invalid sun measurements, after which ACS_MODE becomes detumble" -u "s" -m "c" -v 8 sun_invalid_timeout 559 u16
list add -a 4 -c "Thruster orientation [0 to 5] maps to body frame x, y, z, x-, y-, z-" -m "c" -v 8 prop_thruster_dir 566 u08
list add -a 4 -c "Direction of 0 azimuth (on AR3 = connector direction) [0 to 5] maps to body frame x, y, z, x-, y-, z-" -m "c" -v 8 prop_zero_azimuth_dir 567 u08
list add -a 2 -c "Validity of rate measurement" -m "t" -v 0 w_meas_valid 599 u08
list add -c "Number of io errors with the gyroscope on IMU-P4 module since startup" -m "t" -v 0 gyro_imu_io_err 601 u16
list add -c "Number of io errors with the magnetometer on ADCS-P3 module since startup" -m "e" -v 0 mag_imu_io_err 603 u16
list add -a 9 -c "Rotation matrix of IMU" -m "c" -v 8 imu_r 605 flt
list add -a 2 -c "CSP address of IMU" -m "c" -v 8 imu_addr 606 u16
list add -c "Timeout duration of leop sun pointing mode" -u "s" -m "c" -v 8 leop_sun_point_timer 632 u32
list add -a 4 -c "ECI to Body Quaternion from Star tracker 0" -m "t" -v 0 star_q0_e2b 633 dbl
list add -a 4 -c "ECI to Body Quaternion from Star tracker 1" -m "t" -v 0 star_q1_e2b 634 dbl
list add -a 4 -c "ECI to Body Quaternion from Star tracker 2" -m "t" -v 0 star_q2_e2b 635 dbl
list add -a 4 -c "ECI to Body Quaternion from Star tracker 3" -m "t" -v 0 star_q3_e2b 636 dbl
list add -a 4 -c "ECI to Body Quaternion from Star tracker 4" -m "t" -v 0 star_q4_e2b 637 dbl
list add -a 4 -c "ECI to Body Quaternion from Star tracker 5" -m "t" -v 0 star_q5_e2b 638 dbl
list add -a 4 -c "ECI to Body Quaternion from Star tracker 6" -m "t" -v 0 star_q6_e2b 639 dbl
list add -a 4 -c "ECI to Body Quaternion from Star tracker 7" -m "t" -v 0 star_q7_e2b 640 dbl
list add -a 2 -c "Spherical coordinate [theta, phi] [deg] wrt orbit reference frame ([theta,phi][0,0]=[0,0,1],[theta,phi][90,0]=[1,0,0],[theta,phi][90,90]=[0,1,0])" -u "deg" -m "c" -v 8 ref_spcoord 641 flt
list add -c "Amount of seconds for which the mt is kept on" -u "s" -m "c" -v 8 mt_duty_on_time 670 u16
list add -c "Amount of seconds for which the mt is kept off" -u "s" -m "c" -v 8 mt_duty_off_time 671 u16
list add -c "Amount of seconds after turning off the MT, before mag data is valid" -u "s" -m "c" -v 8 mt_dwell_time 672 u16
list add -c "1 - desat is on throughout the whole orbit, 0 - no desat if no sun measurements" -m "c" -v 8 desat_in_eclipse_en 673 u08
list add -a 2 -c "Validity of magnetic field measurement" -m "t" -v 0 b_meas_valid 674 u08
list add -c "Is used to specify which thruster to use. Indexed from 0. If the spacecraft only has 1 thruster this should be set to 0." -m "c" -v 8 burn_thruster 780 u08
list add -c "Thruster off timer" -u "s" -m "c" -v 8 burn_off_in 781 u16
list add -c "Thruster on timer" -u "s" -m "c" -v 8 burn_on_in 782 u16
list add -c "Is copied to off_in when on_in = zero" -u "s" -m "c" -v 8 burn_duration 783 u16
list add -c "Is decremented by one when off_in = zero" -m "c" -v 8 burn_times 784 u16
list add -c "Is copied to on_in when off_in = 0 and times > 0" -u "s" -m "c" -v 8 burn_interval 785 u16
list add -c "Thruster reference" -u "0.1 uN" -m "c" -v 8 burn_thrust 786 u16
list add -c "Specific impulse reference in seconds" -u "s" -m "c" -v 8 burn_si 787 u16
list add -c "Azimuth angle reference (0-3600)" -u "0.1 deg" -m "c" -v 8 burn_az 788 u16
list add -c "Inclination angle reference (0-125)" -u "0.1 deg" -m "c" -v 8 burn_inc 789 u16
list add -c "Threshold gyroscope rate. If rate > this value, stop thrust. If 0, rate check disabled" -u "rad/s" -m "c" -v 8 burn_stop_w_thresh 796 flt
list add -c "0: After burn is executed cold standby is entered. 1: After burn is executed hot standby is entered" -m "c" -v 8 burn_standby_mode 797 u08
list add -c "Value of FDIR - 0 is no fault" -m "t" -v 0 burn_fdir_value 799 u08
list add -a 4 -c "0 - idle, 1 - heating, 2 - hot, 3 - burning" -m "t" -v 0 thruster_status 800 u08
list add -c "0: Manual vectoring. 1: Update az/inc every prop_angle_update_timer. 2: Update az/inc after the start of the burn (see burn_ad_delay)" -m "c" -v 8 burn_vector_mode 802 u08
list add -c "Time after the burn starts, which triggers auto desat angles update" -u "s" -m "c" -v 8 burn_ad_delay 807 u16
list add -c "Auto Desaturation waits for control error to go under this value" -u "1/10 deg" -m "c" -v 8 burn_ad_ctrerr_max 808 u08
list add -a 3 -c "Original reference vector before auto desat, which the ref_src_vX is reverted to" -m "c" -v 8 burn_ad_old_ref 809 flt
list add -c "Original src vector id (0, 1, 2 or 3) which has to be reverted to burn_ad_old_ref" -m "c" -v 8 burn_ad_old_ref_id 810 u08
list add -c "Threshold for the angle difference between the original ref_src_vX and the one calculated for desat. 0 - disable attitude update" -u "deg" -m "c" -v 8 burn_ad_ref_guard 811 u08
list add -c "1 - ref_src_vX will be reverted to orig after burn is finished. 0 - ref_src_vX is original" -m "t" -v 8 burn_ad_is_ref_tmp 812 u08
list add -a 4 -c "RTU nodes of the thrusters" -m "c" -v 8 thruster_rtu_nodes 813 u16
list add -c "Init value of the burn wdt for the RTUs" -u "s" -m "c" -v 8 thruster_burn_wdt_init 814 u16
list add -a 4 -c "0 cold standby, 1 hot standby. 2 start thrusting" -m "c" -v 8 thruster_cmd 815 u08
list add -c "Corresponds to the mode in which the thrusters are allowed to burn. 0 means all modes are allowed" -m "c" -v 8 burn_acs_mode 816 u08
list add -a 4 -c "Vector with indices for each thruster with number of io errors with the rtu since startup" -m "e" -v 0 thruster_rtu_io_err 817 u16
list add -c "The primary reference source for thruster burn orientations" -m "c" -v 8 ref_burn_pri_src 818 u08
list add -c "The primary reference target for thruster burn orientations" -m "c" -v 8 ref_burn_pri_tgt 819 u08
list add -c "The secondary reference source for thruster burn orientations" -m "c" -v 8 ref_burn_sec_src 820 u08
list add -c "The secondary reference target for thruster burn orientations" -m "c" -v 8 ref_burn_sec_tgt 821 u08
list add -c "The primary reference source for satelitte charging orientations" -m "c" -v 8 ref_charge_pri_src 822 u08
list add -c "The primary reference target for satelitte charging orientations" -m "c" -v 8 ref_charge_pri_tgt 823 u08
list add -c "The secondary reference source for satelitte charging orientations" -m "c" -v 8 ref_charge_sec_src 824 u08
list add -c "The secondary reference target for satelitte charging orientations" -m "c" -v 8 ref_charge_sec_tgt 825 u08
list add -a 2 -c "[0]: Switch to burn attitude X seconds before the thruster starts burning. [1]: Switch to charging attitude X seconds after the thruster stops burnin" -m "c" -v 8 ref_burn_charge_timers 826 u08
list add -a 4 -c "Accumulated burn time of the thrusters. Increments while thrusting, resets when in cold standby or while heating" -m "t" -v 0 thruster_burn_time 827 u32
list add -a 4 -c "Threshold for the accumulated burn time before cooldown can be executed, in seconds" -u "s" -m "c" -v 8 burn_cooldown_threshold 828 u16
list add -a 4 -c "1 - Enable communication with RTU, 0 - disable" -m "c" -v 8 thruster_rtu_enable 829 u08
list add -c "Consistent valid sun measurements timer" -u "s" -m "t" -v 0 ads_sun_meas_cnt 830 u16
list add -c "Validity of the attitude determination algorithm" -m "t" -v 0 ads_valid 831 u08
list add -c "Binary flag to indicate whether the principal axis tranformation is enabled" -m "c" -v 8 lqr_principal_en 832 u08
list add -a 4 -c "Reference slot 0 [ref_pri_tgt, ref_sec_tgt, ref_pri_src, ref_sec_src]" -m "c" -v 8 ref_slot0 833 u08
list add -a 4 -c "Reference slot 1 [ref_pri_tgt, ref_sec_tgt, ref_pri_src, ref_sec_src]" -m "c" -v 8 ref_slot1 834 u08
list add -a 4 -c "Reference slot 2 [ref_pri_tgt, ref_sec_tgt, ref_pri_src, ref_sec_src]" -m "c" -v 8 ref_slot2 835 u08
list add -a 4 -c "Reference slot 3 [ref_pri_tgt, ref_sec_tgt, ref_pri_src, ref_sec_src]" -m "c" -v 8 ref_slot3 836 u08
list add -a 4 -c "Reference slot 4 [ref_pri_tgt, ref_sec_tgt, ref_pri_src, ref_sec_src]" -m "c" -v 8 ref_slot4 837 u08
list add -a 4 -c "Reference slot 5 [ref_pri_tgt, ref_sec_tgt, ref_pri_src, ref_sec_src]" -m "c" -v 8 ref_slot5 838 u08
list add -c "Select one of the reference slots to be used" -m "c" -v 0 ref_select 839 u08
list add -c "Switch to groundstation pointing when spacecraft is within threshold elevation of groundstation. Switch to fallback pointing when outside" -m "c" -v 8 ref_gnd_auto_elevation 840 flt
list add -a 2 -c "Reference slots to be used during auto groundstation pointing. [0] Groundstation reference slot - [1] Fallback reference slot" -m "c" -v 8 ref_gnd_auto_slots 841 u08
list add -c "Enable (1) or disable (0) the automatic switching between groundstation pointing (ref_gnd_slots[0]) and fallback pointing (ref_gnd_slots[1])" -m "c" -v 8 ref_gnd_auto_enable 842 u08
list add -c "Source vector for the leop sun pointing mode" -m "c" -v 8 ref_leop_sun_src 843 u08
list add -c "Reference angular velocity around the source vector for leop sun pointing mode" -u "rad/s" -m "c" -v 8 ref_leop_sun_w 844 flt
list add -a 6 -c "EKF Innovation (meas - A*model)" -u "[mixed]" -m "t" -v 0 ads_inn 845 dbl
list add -a 6 -c "EKF Innovation Covariance (meas - A*model)" -u "[mixed]" -m "t" -v 0 ads_inn_cov 846 dbl
list add -a 3 -c "Magnetic model estimate of the magnetic field" -u "T" -m "t" -v 0 ephem_mag 847 dbl
