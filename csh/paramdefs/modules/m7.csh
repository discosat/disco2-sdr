list add -m "r" -v 0 GPC__SLPCR 1 u32
list add -m "r" -v 0 GPC__LPCR_A53_BSC 2 u32
list add -m "r" -v 0 GPC__LPCR_A53_AD 3 u32
list add -m "r" -v 0 GPC__LPCR_M7 4 u32
list add -m "r" -v 0 GPC__MLPCR 5 u32
list add -m "r" -v 0 GPC_PGC__A53SCU_PUPSCR 6 u32
list add -m "r" -v 0 GPIO1__DR 7 u32
list add -m "r" -v 0 GPIO1__GDIR 8 u32
list add -m "r" -v 0 GPIO2__DR 9 u32
list add -m "r" -v 0 GPIO2__GDIR 10 u32
list add -m "r" -v 0 GPIO3__GDIR 11 u32
list add -m "r" -v 0 GPIO4__GDIR 12 u32
list add -m "r" -v 0 GPIO5__GDIR 13 u32
list add -m "r" -v 0 MUB__SR 14 u32
list add -m "r" -v 0 RDC__STAT 15 u32
list add -m "r" -v 0 TMU__TSCR 16 u32
list add -m "r" -v 0 TMU__TRITSR 17 u32
list add -m "r" -v 0 TMU__TRATSR 18 u32
list add -c "Send wake signal to A53 peer core" -m "c" -v 1 wake_a53 21 u08
list add -c "A53 peer core status" -m "r" -v 1 a53_status 22 u08
list add -c "TMU temperature reading" -u "K" -m "r" -v 1 tmu_reading 23 u16
list add -c "GNSS latitude" -m "r" -v 1 gnss_lat 24 flt
list add -c "GNSS longitude" -m "r" -v 1 gnss_lon 25 flt
list add -c "GNSS fix age" -u "s" -m "r" -v 1 gnss_age 26 u32
list add -c "GNSS date" -m "r" -v 1 gnss_date 27 u32
list add -c "GNSS time" -m "r" -v 1 gnss_time 28 u32
list add -c "GNSS speed" -u "m/s" -m "r" -v 1 gnss_speed 29 flt
list add -c "GNSS altitude" -u "m" -m "r" -v 1 gnss_alt 30 flt
list add -c "GNSS course" -u "deg" -m "r" -v 1 gnss_course 31 flt
list add -a 32 -c "uint8 array (32)" -m "c" -v 0 p_uint8 41 u08
list add -a 32 -c "uint16 array (32)" -m "c" -v 0 p_uint16 42 u16
list add -a 32 -c "uint32 array (32)" -m "c" -v 0 p_uint32 43 u32
list add -a 32 -c "uint64 array (32)" -m "c" -v 0 p_uint64 44 u64
list add -a 32 -c "int8 array (32)" -m "c" -v 0 p_int8 45 i08
list add -a 32 -c "int16 array (32)" -m "c" -v 0 p_int16 46 i16
list add -a 32 -c "int32 array (32)" -m "c" -v 0 p_int32 47 i32
list add -a 32 -c "int64 array (32)" -m "c" -v 0 p_int64 48 i64
list add -a 32 -c "float array (32)" -m "c" -v 0 p_float 49 flt
list add -a 16 -c "double array (16)" -m "c" -v 0 p_double 50 dbl
list add -m "h" -v 0 serial0 61 i32
