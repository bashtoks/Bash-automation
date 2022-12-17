#!/bin/bash

NAMES="$2 $3 $4"

for x in $NAMES
do
aws s3api $1-bucket --bucket $x --region us-east-1 
done
