#!/bin/sh

clear
echo "To work!"
echo ""
motivate

# Clean all workspaces

# Mark current window as "keep"
i3-msg '[con_id=__focused__] mark keep' > /dev/null

# Delete all windows but the "keep" window
for id in $(i3-msg -t get_tree | jq '.. | select(.id? and .window?) | select(.marks? | index("keep") | not) | .id'); do
    i3-msg "[con_id=$id] kill" > /dev/null 
done

# Unmark the current window
i3-msg 'unmark keep' > /dev/null

# Execute all necessary processes
i3-msg "workspace 1; exec neovide +'cd ~/occupy/occupy-frontend'" > /dev/null
i3-msg "workspace 2; exec firefox" > /dev/null
i3-msg "workspace 3; exec alacritty --working-directory ~/occupy/occupy-frontend" > /dev/null
i3-msg "workspace 3; exec alacritty --working-directory ~/occupy/occupy-frontend -e zsh -c 'npm run dev -- --host 0.0.0.0'" > /dev/null
i3-msg "workspace 5; exec alacritty -e zsh -c 'nchat'" > /dev/null

i3-msg "workspace 1" > /dev/null
