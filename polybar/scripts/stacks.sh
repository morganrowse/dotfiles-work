aws --profile production configservice get-discovered-resource-counts | jq '.resourceCounts[] | select(.resourceType=="AWS::CloudFormation::Stack").count'
