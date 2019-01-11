#!/bin/bash
set -e
BUCKET=$1
REGION=$2
echo "parameters : $BUCKET, $REGION"
aws s3 rm s3://$BUCKET --recursive
aws s3 cp ./ s3://$BUCKET --region $REGION --recursive
