#!/bin/bash

PORTS='22 80 443 8080 23'
for x in $PORTS
do
aws ec2 $1-security-group-ingress --group-name launch-wizard-1 --protocol tcp --port $x --cidr 0.0.0.0/0
done


