list add -c "Turn on capture by setting a value other than 0." -m "c" -v 7 capture_param 1 u08
list add -a 128 -c "The id of the camera to capture with" -m "c" -v 7 camera_id_param 2 str
list add -c "The camera type to capture with, by default VMB" -m "c" -v 7 camera_type_param 3 u08
list add -c "Camera state: 1=on, 0=off (uses camera_id_param to determine which camera)" -m "c" -v 7 camera_state_param 4 u08
list add -c "Current camera temperature in degrees Celsius" -m "r" -v 7 camera_temperature_param 5 dbl
list add -c "Exposure in microseconds. If value is not set, then exposure is estimated." -m "c" -v 7 exposure_param 6 u32
list add -c "ISO or gain. By default 1." -m "c" -v 7 iso_param 7 dbl
list add -c "Number of images to capture. By default 1." -m "c" -v 7 num_images_param 8 u32
list add -c "Delay between images in microseconds (not including exposure). By default 0." -m "c" -v 7 interval_param 9 u32
list add -c "Observation identifier. No default. Is required." -m "c" -v 7 obid_param 10 u32
list add -c "Pipeline identifier" -m "c" -v 7 pipeline_id_param 11 u32
list add -c "Latest error code" -m "r" -v 7 error_log 12 u16
list add -c "Write any value to trigger camera temperature read" -m "c" -v 7 camera_temp_read_param 13 u08
list add -m "h" -v 0 serial0 31 i32
