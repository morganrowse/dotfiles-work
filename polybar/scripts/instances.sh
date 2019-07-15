#!/usr/bin/env bash
aws --profile production configservice get-discovered-resource-counts | jq '.resourceCounts[] | select(.resourceType=="AWS::EC2::Instance").count'
