#!/bin/bash

IP=`ifconfig | grep inet | cut -d " " -f2 | grep "[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*" | awk 'NR==2'`
sed -e "s/LOCAL_IP_ADDR/$IP/g" docker-compose.yml.template > docker-compose.yml
