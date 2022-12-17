#!/bin/bash

Instance=$(aws ec2 describe-instances --instance-ids i-0365d0a557572cee9 | grep running | cut -c34-40)

if [ $Instance = running ]
then
echo "your instance is running"
else
echo "your instance  isn't running, starting instance in 3..2...1"
aws ec2 start-instances --instance-ids i-0365d0a557572cee9
fi

