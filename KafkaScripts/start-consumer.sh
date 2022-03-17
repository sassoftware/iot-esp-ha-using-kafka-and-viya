#!/usr/bin/bash 

#Copyright © 2021, SAS Institute Inc., Cary, NC, USA.  All Rights Reserved.
#SPDX-License-Identifier: Apache-2.0

source ./env_vars

echo $1

if [[ "$#" != 1                  ]] ;  then 
   echo "Usage: $0 topic_name"
   exit 1 
fi


$BPATH/kafka-console-consumer.sh \
--bootstrap-server $KBROKER0,$KBROKER1,$KBROKER2 \
--topic $1 \
--from-beginning

 
