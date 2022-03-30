#!/bin/bash

echo "=========== This script create an S3 bucket in a specified region ====== "
sleep 0.5

echo "<<<<<<<< Enter your first name >>>>>"
read first_name
sleep 0.5

echo "<<<<<< Enter your last name >>>>>"
read last_name
sleep 0.5 
echo "<<<<<<< Enter your year of birth >>>>>>"
read year_of_birth
sleep 0.5

echo "<<<<< Enter the specified region >>>>>"
read region
sleep 0.5

if ! grep aws_access_key_id ~/.aws/config; then
   if ! grep aws_access_key_id ~/.aws/credentials; then
        echo "AWS configuration not found. Please install your local AWS CLI"

   fi
fi
aws s3api  create-bucket --bucket $first_name-$last_name-$year_of_birth-bucket --create-bucket-configuration LocationConstraint=$region
