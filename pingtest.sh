#!/bin/bash

while true; do

# General Synopsis:
#
# 1. Ping an openDNS IP address a few times
# 2. Print the average ping time
# 3. Wait a minute and do it again

TIME=$(ping -c 4 208.67.222.222 | sed '$!d;s|.*/\([0-9.]*\)/.*|\1|')

echo "$TIME"
sleep 60

done


