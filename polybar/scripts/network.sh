#!/usr/bin/env bash

code=$(curl -LI http://www.example.org -o /dev/null -w '%{http_code}\n' -s)
if [[ $code -eq 200 ]]; then
        echo "up"
else
        echo "down"
fi
