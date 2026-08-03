# NOTE: Assumes usage of init file in $(MISSION_ROOT)/csh_inits/*.csh
#var set MISSION_ROOT "$(__FILE_DIR__)/../.."

var set MISSION_ROOT "$(__FILE_DIR__)/../"
# NOTE: Mission specific
var set FIRST_CAN_CSP_ID "5376"
vat set MISSION_ADDR "127.0.0.1"
#var set MISSION_ADDR "10.6.0.167"
var set LOKI_CFG "-p 3000 $(MISSION_ADDR)"
var set VM_CFG "$(MISSION_ADDR)"
var set ZMQ_PROXY "$(MISSION_ADDR)"

var set ZMQ_AUTH_KEY "~/zmqproxy.key"
#var set ZMQ_ENCRYPTED_CFG "-a $(ZMQ_AUTH_KEY) -S 6001 -P 7001"
