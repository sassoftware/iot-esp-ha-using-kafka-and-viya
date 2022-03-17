#!/usr/bin/bash 

#Copyright © 2021, SAS Institute Inc., Cary, NC, USA.  All Rights Reserved.
#SPDX-License-Identifier: Apache-2.0

source ./env_vars

$BPATH/kafka-topics.sh --list --zookeeper localhost:2181
