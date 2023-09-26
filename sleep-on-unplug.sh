#!/bin/bash

# Check if power cable is unplugged
if [ $(cat /sys/class/power_supply/AC/online) -eq 0 ]; then
    # Trigger system sleep
    systemctl suspend
fi
