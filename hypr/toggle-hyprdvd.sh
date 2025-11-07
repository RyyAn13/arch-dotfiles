#!/bin/bash

SIZE="800x450"

# Check if hyprdvd is running
if pgrep -x "hyprdvd" > /dev/null; then
	pkill -x "hyprdvd"
	notify-send "HyprDVD" "Stopped"
else
	hyprdvd --size "$SIZE" & disown
	notify-send "HyprDVD" "Started"
fi
