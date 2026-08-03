list add -c "Set the pipeline to execute according to the value" -m "c" -v 0 pipeline_run 1 u08
list add -c "Latest error code" -m "c" -v 7 log_status 2 u32
list add -c "Radio CSP node ID" -m "c" -v 7 radio_node_id 3 u08
list add -c "Module timeout in seconds" -m "c" -v 7 module_timeout 4 u32
list add -a 188 -m "c" -v 7 pipeline_config_1 10 dat
list add -a 188 -m "c" -v 7 pipeline_config_2 11 dat
list add -a 188 -m "c" -v 7 pipeline_config_3 12 dat
list add -a 188 -m "c" -v 7 pipeline_config_4 13 dat
list add -a 188 -m "c" -v 7 pipeline_config_5 14 dat
list add -a 188 -m "c" -v 7 pipeline_config_6 15 dat
list add -a 188 -m "c" -v 7 module_param_1 30 dat
list add -a 188 -m "c" -v 7 module_param_2 31 dat
list add -a 188 -m "c" -v 7 module_param_3 32 dat
list add -a 188 -m "c" -v 7 module_param_4 33 dat
list add -a 188 -m "c" -v 7 module_param_5 34 dat
list add -a 188 -m "c" -v 7 module_param_6 35 dat
list add -a 188 -m "c" -v 7 module_param_7 36 dat
list add -a 188 -m "c" -v 7 module_param_8 37 dat
list add -a 188 -m "c" -v 7 module_param_9 38 dat
list add -a 188 -m "c" -v 7 module_param_10 39 dat
list add -a 188 -m "c" -v 7 module_param_11 40 dat
list add -a 188 -m "c" -v 7 module_param_12 41 dat
list add -a 188 -m "c" -v 7 module_param_13 42 dat
list add -a 188 -m "c" -v 7 module_param_14 43 dat
list add -a 188 -m "c" -v 7 module_param_15 44 dat
list add -a 188 -m "c" -v 7 module_param_16 45 dat
list add -a 188 -m "c" -v 7 module_param_17 46 dat
list add -a 188 -m "c" -v 7 module_param_18 47 dat
list add -a 188 -m "c" -v 7 module_param_19 48 dat
list add -a 188 -m "c" -v 7 module_param_20 49 dat
list add -m "h" -v 0 serial0 99 i32
