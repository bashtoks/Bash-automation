Description: Creates IAM User using for loops



#!/bin/bash

USER='Testing'

for x in $USER
do
aws iam $1-user --user-name $x
done
