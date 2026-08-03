list add -c "CAN interface address" -m "C" -v 7 can_addr 21 u16
list add -c "CAN interface netmask" -m "C" -v 7 can_netmask 22 u16
list add -c "DIPP KISS interface baudrate" -m "C" -v 7 dipp_kiss_baudrate 24 u32
list add -c "DIPP KISS interface netmask" -m "C" -v 7 dipp_kiss_netmask 25 u16
list add -c "STOP A53 cores (suspend linux)" -m "c" -v 0 suspend_a53 31 u08
list add -c "Install Vimba drivers" -m "c" -v 0 vimba_install 32 u08
list add -c "Start camera control as this node number (0 kills it)" -m "c" -v 0 mng_camera_control 33 u16
list add -c "Start DIPP as this node number (0 kills it)" -m "c" -v 0 mng_dipp 34 u16
list add -c "Switch Cortex-M7 binaries" -m "r" -v 0 switch_m7_bin 35 u08
list add -c "DIPP interface type (0=CAN, 1=KISS)" -m "c" -v 0 mng_dipp_interface 36 u08
list add -a 128 -c "DIPP vmem directory path" -m "rC" -v 7 mng_dipp_vmem_path 37 str
list add -c "Camera interface type (0=CAN, 1=KISS)" -m "c" -v 0 mng_camera_interface 38 u08
list add -a 128 -c "Camera vmem directory path" -m "rC" -v 7 mng_camera_vmem_path 39 str
list add -a 111 -c "Standard output buffer" -m "r" -v 0 stdout_buf 41 str
list add -c "Uploader Client Address (0=Stop)" -m "c" -v 7 mng_util 42 u16
list add -c "Uploader interface (0=CAN, 1=KISS)" -m "c" -v 0 mng_util_interface 44 u08
list add -a 128 -c "A53 vmem directory path" -m "rC" -v 7 a53_vmem_path 45 str
list add -c "Uploader Server Address" -m "c" -v 7 mng_util_server 46 u16
list add -c "Recovery Client Address (0=Stop)" -m "c" -v 7 mng_util_rec 47 u16
list add -c "Recovery Server Address" -m "c" -v 7 mng_util_rec_server 48 u16
