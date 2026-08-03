#apm load

run $(__FILE_DIR__)/environment.csh  # NOTE: Assumes usage of init file in $(MISSION_ROOT)/csh_inits/*.csh
run $(MISSION_ROOT)/paramdefs/list_load.csh

timeout 3000

# TODO: Loki logging will complain quite a bit if the server isn't running.
#   So we can revisit it when the mission server has been more established.
#loki start $(LOKI_CFG)

# half duplex upload settings
#rdp opt -w 20 -p 6000 -c 120000 -a 20 -k 12000
