#!/usr/bin/bash

#Copyright © 2021, SAS Institute Inc., Cary, NC, USA.  All Rights Reserved.
#SPDX-License-Identifier: Apache-2.0

LOGTIME=$(date +%s)
echo "Starting 1 zookeeper and 3 brokers"
echo log location /tmp/${LOGTIME}xxxxxxx.log

echo Starting Zookeeper 
nohup ./run-zookeeper.sh > /tmp/${LOGTIME}zookeeper.log 2>&1 &
sleep 19

echo "Starting Broker0" 

nohup ./run-server0.sh > /tmp/${LOGTIME}server0.log 2>&1 &
sleep 2
echo "Starting Broker1" 

nohup ./run-server1.sh > /tmp/${LOGTIME}server1.log 2>&1 &
sleep 2

echo "Starting Broker2" 

nohup ./run-server2.sh > /tmp/${LOGTIME}server2.log 2>&1 &



