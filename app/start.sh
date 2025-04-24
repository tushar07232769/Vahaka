#!/bin/bash

if ! ip link show vcan0 > /dev/null 2>&1; then
    echo "Creating virtual CAN interface vcan0..."
    modprobe vcan
    ip link add dev vcan0 type vcan
    ip link set up vcan0
    echo "vcan0 interface created."
else
    echo "vcan0 already exists."
fi

node server.js
