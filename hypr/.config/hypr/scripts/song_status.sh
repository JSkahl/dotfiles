# !/bin/zsh

# Get tje song artist and title
song_info=$(playerctl metadata --format '{{ title }} 󰝚 {{ artist }}')

# Output it
echo $song_info
