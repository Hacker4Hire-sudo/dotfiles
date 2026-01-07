#!/bin/bash
# Kill already running bar instances
killall -q polybar
# Launch Polybar
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown
