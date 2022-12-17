#/bin/bash

NAMES= 'bact22 jola2022'
for x in $NAMES
do
aws s3 $1 s3://$x
done
