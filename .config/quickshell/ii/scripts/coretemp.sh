#!/bin/bash
for d in /sys/class/hwmon/hwmon*; do
    if [ "$(cat $d/name)" = "coretemp" ]; then
        ln -sf "$d/temp1_input" "$HOME/.config/quickshell/ii/coretemp"
        exit 0
    fi
done
