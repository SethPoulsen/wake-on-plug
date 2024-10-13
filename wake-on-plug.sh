#!/bin/bash

# Check if power cable is plugged in
if [ $(cat /sys/class/power_supply/ACAD/online) -eq 1 ]; then
    # Trigger system wake up
    systemctl start systemd-logind.service
fi
