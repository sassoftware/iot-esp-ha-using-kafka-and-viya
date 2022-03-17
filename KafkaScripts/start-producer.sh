#!/usr/bin/bash 

#Copyright © 2021, SAS Institute Inc., Cary, NC, USA.  All Rights Reserved.
#SPDX-License-Identifier: Apache-2.0

source ./env_vars

# write messages into topic for testing purposes

$BPATH/kafka-console-producer.sh \
--bootstrap-server $KBROKER0,$KBROKER1,$KBROKER2 \
--topic HAtopic1_31415.ESP_Project_HA_Kafka.ESP_CQ.ESP_incoming_source_window.I
