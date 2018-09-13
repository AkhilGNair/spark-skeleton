#!/bin/bash

# Starts spark standalone with 3 small workers
msg() { printf "\033[1;32m :: %s\n\033[0m" "$1"; }

msg "Starting spark"
# Start spark master
$SPARK_HOME/sbin/start-master.sh
# Start spark slaves
$SPARK_HOME/sbin/start-slave.sh spark://$HOSTNAME:7077
