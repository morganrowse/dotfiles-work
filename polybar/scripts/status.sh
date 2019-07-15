#!/bin/bash

curl -s 'https://status.jemstep.com/api/v2/status.json' | /opt/jemstep/code/stormsend/bin/jq -r .status.description | awk '{print tolower($0)}'
