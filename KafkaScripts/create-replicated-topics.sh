#!/usr/bin/bash 

#Copyright © 2021, SAS Institute Inc., Cary, NC, USA.  All Rights Reserved.
#SPDX-License-Identifier: Apache-2.0

source ./env_vars

# meta topic for coordination between ESP servers and Kafka
$BPATH/kafka-topics.sh --create \
--zookeeper localhost:2181 \
--replication-factor 3  \
--partitions 1 \
--topic HAtopic1_31415.M   

# HA topic that feeds ESP source window
$BPATH/kafka-topics.sh --create \
--zookeeper localhost:2181 \
--replication-factor 3  \
--partitions 1 \
--topic HAtopic1_31415.ESP_Project_HA_Kafka.ESP_CQ.ESP_incoming_source_window.I

# HA topic that ESP publishes to
$BPATH/kafka-topics.sh --create \
--zookeeper localhost:2181 \
--replication-factor 3  \
--partitions 1 \
--topic HAtopic1_31415.ESP_Project_HA_Kafka.ESP_CQ.ESP_outgoing_window.O

# Used for Adapter fail over
$BPATH/kafka-topics.sh --create \
--zookeeper localhost:2181 \
--replication-factor 3  \
--partitions 1 \
--topic ESPAdapterMetapub

# Used for Adapter fail over
$BPATH/kafka-topics.sh --create \
--zookeeper localhost:2181 \
--replication-factor 3  \
--partitions 1 \
--topic ESPAdapterMetasub
 

 
