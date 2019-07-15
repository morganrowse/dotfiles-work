#!/usr/bin/env bash

status=$(minikube status 2>&1)
working_status=$(cat ~/.config/polybar/scripts/minikube.status 2>&1)

if [[ $status -eq $working_status ]]; then
    echo "Good"
else
    echo "Bad"
fi