Description: Creates S3 bucket using dynamic variables and dynamic lists




#!/bin/bash

NAMES="$2 $3 $4"

for x in $NAMES
do
aws s3api $1 --bucket $x --region us-east-1
done

