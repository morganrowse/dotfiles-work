#!/usr/bin/env bash

curl -s GET https://sentry.io/api/0/organizations/jemstepcom/stats/ -H 'Authorization: Bearer 35cf9a3ccec24439b4e5d4d2e33a1cd5f13bab5b1b414bb79a18983cce1090ef' -H 'Content-Type: application/json' -H 'Host: sentry.io' -H 'cache-control: no-cache' | /usr/local/bin/jq -r .[1][1]
