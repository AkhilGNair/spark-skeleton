#!/bin/bash

# Stops spark standalone and workers

msg() { printf "\033[1;32m :: %s\n\033[0m" "$1" ;}

msg "Stopping spark"
# Tear down spark
$SPARK_HOME/sbin/stop-slave.sh
$SPARK_HOME/sbin/stop-master.sh
