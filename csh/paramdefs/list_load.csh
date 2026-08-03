
node 5378
node add mppt0-a
run $(__FILE_DIR__)/modules/mppt-p4.csh
node 5379
node add mppt0-b
run $(__FILE_DIR__)/modules/mppt-p4.csh


node 5380
node add bat0-a
run $(__FILE_DIR__)/modules/bat.csh
node 5381
node add bat0-b
run $(__FILE_DIR__)/modules/bat.csh


node 5382
node add pdu0-a
run $(__FILE_DIR__)/modules/pdup4.csh
node 5383
node add pdu0-b
run $(__FILE_DIR__)/modules/pdup4.csh

node 5384
node add pdu1-a
run $(__FILE_DIR__)/modules/pdup4.csh
node 5385
node add pdu1-b
run $(__FILE_DIR__)/modules/pdup4.csh


node 5386
node add -p 5384 -c 6 hk
run $(__FILE_DIR__)/modules/obcp4-hk.csh
node 5387
node add -p 5384 -c 6 adcs
run $(__FILE_DIR__)/modules/adcs.csh


node 5388
node add -p 5382 -c 1 fss0
run $(__FILE_DIR__)/modules/fss.csh

node 5389
node add -p 5382 -c 1 fss1
run $(__FILE_DIR__)/modules/fss.csh

node 5390
node add -p 5382 -c 1 fss2
run $(__FILE_DIR__)/modules/fss.csh

node 5391
node add -p 5382 -c 2 fss3
run $(__FILE_DIR__)/modules/fss.csh

node 5392
node add -p 5382 -c 1 fss4
run $(__FILE_DIR__)/modules/fss.csh

node 5393
node add -p 5382 -c 2 fss5
run $(__FILE_DIR__)/modules/fss.csh


node 5394
node add -p 5382 -c 0 mt0
run $(__FILE_DIR__)/modules/mtp4.csh

node 5395
node add -p 5384 -c 1 mt1
run $(__FILE_DIR__)/modules/mtp4.csh


node 5396
node add -p 5384 -c 7 imu-b
run $(__FILE_DIR__)/modules/imu-p4.csh


node 5397
node add -p 5382 -c 7 whl0
run $(__FILE_DIR__)/modules/rewl.csh

node 5398
node add -p 5382 -c 6 whl1
run $(__FILE_DIR__)/modules/rewl.csh

node 5399
node add -p 5382 -c 5 whl2
run $(__FILE_DIR__)/modules/rewl.csh

node 5400
node add -p 5382 -c 4 whl3
run $(__FILE_DIR__)/modules/rewl.csh


node 5401
node add -p 5384 -c 0 hdrm1
run $(__FILE_DIR__)/modules/hdrm.csh

node 5402
node add -p 5384 -c 2 hdrm2
run $(__FILE_DIR__)/modules/hdrm.csh

node 5403
node add -p 5382 -c 1 hdrm_fss
run $(__FILE_DIR__)/modules/hdrm.csh


node 5404
node add -p 5384 -c 3 sttc0
run $(__FILE_DIR__)/modules/sttc.csh 


node 5405
node add -p 5384 -c 2 ttc-a
run $(__FILE_DIR__)/modules/com.csh

node 5406
node add -p 5384 -c 0 ttc-b
run $(__FILE_DIR__)/modules/com.csh

# the ground station
node 4032
node add ttc-gnd
run $(__FILE_DIR__)/modules/ttc-gnd.csh


# TODO: Payload nodes should also be added here at some point.

# PAYLOAD 1

node 5439
node add can-broadcast0

node 5420
node add -p 5384 -c 4 m7
run $(__FILE_DIR__)/modules/m7.csh

node 5421
node add -p 5384 -c 4 a53
run $(__FILE_DIR__)/modules/a53.csh

node 5422
node add -p 5384 -c 4 cc
run $(__FILE_DIR__)/modules/camera_control.csh

node 5423
node add -p 5384 -c 4 dipp
run $(__FILE_DIR__)/modules/dipp.csh

node 5424
node add -p 5384 -c 4 util

# PAYLOAD 2

node 5487
node add can-broadcast1

node 5474
node add -p 5384 -c 5 m7
run $(__FILE_DIR__)/modules/m7.csh

node 5475
node add -p 5384 -c 5 a53
run $(__FILE_DIR__)/modules/a53.csh

node 5476
node add -p 5384 -c 5 cc
run $(__FILE_DIR__)/modules/camera_control.csh

node 5477
node add -p 5384 -c 5 dipp
run $(__FILE_DIR__)/modules/dipp.csh

node 5478
node add -p 5384 -c 5 util

