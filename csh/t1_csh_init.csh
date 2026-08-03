csp init --host=t1

set -n 0 csp_print_packet 1

run $(__FILE_DIR__)/cfg/mission_base_init.csh

csp add zmq -d $(ZMQ_ENCRYPTED_CFG) 4098 $(ZMQ_PROXY)
