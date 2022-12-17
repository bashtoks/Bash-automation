#!/bin/bash

USER='Ariyo'

for x in $USER
do
aws iam $1-user --user-name $x
done
