#!/bin/bash

# 1. SETUP
DIRS="$HOME/Videos $HOME/Downloads"

# 2. GENERATE LIST (Display filenames only)
# We use 'awk' to strip the path for the menu, but we keep the list sorted.
SELECTED=$(find $DIRS -type f \( -iname "*.mp4" -o -iname "*.mkv" -o -iname "*.webm" -o -iname "*.avi" \) -printf "%f\n" | sort | rofi -dmenu -i -p "🎬 Watch" -no-custom -width 1000)

# 3. EXIT IF CANCELLED
if [ -z "$SELECTED" ]; then
    exit 0
fi

# 4. RECOVER FULL PATH (The Fix)
# We use 'grep -F' (Fixed String) to find the file ending in "/Filename".
# This prevents crashing on brackets [] or parenthesis ().
FULL_PATH=$(find $DIRS -type f | grep -F "/$SELECTED" | head -n 1)

# 5. PLAY
if [ -n "$FULL_PATH" ]; then
    notify-send -u low "Popcorn Time" "Playing: $SELECTED"
    mpv "$FULL_PATH" > /dev/null 2>&1 &
else
    notify-send -u critical "Error" "Could not find file path!"
fi
