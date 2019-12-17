#!/bin/bash

sleep 10
echo "Checking if farm server is up"
 

farm_url=http://192.168.0.108:8080/my-farm/index.jsp

# save the status in some variable 

status=`curl $farm_url -k -s -f -o /dev/null && echo "FARM SERVER IS UP" || echo "SOMETHING WENT BAD - ERROR"`    

# print results

echo "MONITORING : $status"
