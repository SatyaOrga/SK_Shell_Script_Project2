#!/bin/bash






# To check how efficiently people using 100 EC2 instances using Report Dashboard, using AWS CLI now

#Enabled Debug mode
set -x
set -e
set -o


#S3 Buckets lists
aws s3 ls >resourceTracker

#EC2 Instances List
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#Lamda Lists
aws lambda list-functions

#IAM Users Lists
aws iam list-users >>resourceTracker

