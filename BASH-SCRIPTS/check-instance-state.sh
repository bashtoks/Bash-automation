
Description: Checks if your instance is running using if statements and creates instance if not running.



#!/bin/bash

Instance=$(aws ec2 describe-instances --instance-ids i-064386ba218d11568 | grep running | cut -c34-40)

if [ $Instance = running ]
then
echo "your instance is running"
else
echo "your instance  isn't running, starting instance in 3..2...1"
aws ec2 start-instances --instance-ids i-064386ba218d11568
fi

