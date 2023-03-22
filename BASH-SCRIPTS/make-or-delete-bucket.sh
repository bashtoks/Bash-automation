Description: Make or delete s3 buckets using for loops and static and dynamic variable.



#/bin/bash

NAMES='karimutokosi karimusallam'
for x in $NAMES
do
aws s3 $1 s3://$x
done

