#!/usr/bin/bash 

#Copyright © 2021, SAS Institute Inc., Cary, NC, USA.  All Rights Reserved.
#SPDX-License-Identifier: Apache-2.0

source ./env_vars
#
#   This changes the message retention period to 1000 second.  
#  After 1 second old messages will be deleted.  
#  Make sure to reset the retention period after msg purge
#

echo $1

if [[ "$#" != 1                  ]] ;  then 
   echo "Usage: $0 topic_name"
   exit 1 
fi

$BPATH/kafka-configs.sh --alter \
--zookeeper localhost:2181 \
--entity-type topics \
--add-config retention.ms=1000000 \
--entity-name $1
