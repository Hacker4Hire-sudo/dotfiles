#!/bin/bash

# 1. THE HACKER MOVIE DATABASE (Local & Fast)
# No more broken web links. Add your favorites here.
MOVIES=(
    "Hackers (1995)"
    "The Matrix (1999)"
    "Sneakers (1992)"
    "WarGames (1983)"
    "Mr. Robot (Series)"
    "Who Am I (2014)"
    "Tron: Legacy (2010)"
    "Ghost in the Shell (1995)"
    "Ex Machina (2014)"
    "Blade Runner 2049"
    "Snowden (2016)"
    "The Social Network"
)

# Pick a random one
MOVIE=${MOVIES[$RANDOM % ${#MOVIES[@]}]}

# 2. HANDLING CLICKS
case "$1" in
    --stremio)
        # Copy to Clipboard
        echo -n "$MOVIE" | xclip -selection clipboard
        # Send Notification
        notify-send -u low "Stremio" "Copied: $MOVIE"
        # Launch Stremio (Flatpak)
        flatpak run com.stremio.Stremio &
        ;;
    --kodi)
        # Copy to Clipboard
        echo -n "$MOVIE" | xclip -selection clipboard
        # Send Notification
        notify-send -u low "Kodi" "Copied: $MOVIE"
        # Launch Kodi (Flatpak)
        flatpak run tv.kodi.Kodi &
        ;;
    *)
        # 3. POLYBAR OUTPUT
        # Just print the movie name
        echo "🎬 $MOVIE"
        ;;
esac
