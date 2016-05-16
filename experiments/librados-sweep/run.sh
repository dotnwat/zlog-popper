#!/bin/bash

reset=soft
data_dev=sdb
journal_dev=sdc
noop_dev=sdc

name=vanilla_firefly_disk_ssd
runtime=3600
pg_nums="128"
stripe_widths="32"
queue_depths="32"
entry_sizes="1024"
pool=zlog
rest=120
ceph_version=firefly

# workloads
wl_11="map_11 bytestream_11"
wl_n1="map_n1 bytestream_n1_write bytestream_n1_append"
workloads="$wl_11 $wl_n1"

# i/o interfaces
map_n1_if="vanilla"
bytestream_n1_write_if="vanilla"
bytestream_n1_append_if="vanilla"

. $ZLOG_ROOT/docker/physical-design/runner.sh
run_pd
