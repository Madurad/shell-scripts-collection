#!/bin/bash

END_POINT="internal-ordering-service-LB-1901313476.us-east-1.elb.amazonaws.com:9096/incentivio-ordering-service/"

echo "Enter number of hits : "
read number

load_test() {
    for ((n=0;n<$number;n++)); do
    echo $n
    curl $END_POINT
    done 
}

load_test


