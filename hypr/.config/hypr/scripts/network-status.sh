# !/bin/zsh

wifi_device=$(ip link | awk -F: '/^[0-9]+: wl/{print $2}' | xargs)
ethernet_device=$(ip link | awk -F: '/^[0-9]+: en/{print $2}' | xargs)

if [[ -n $wifi_device ]] && iwgetid -r > /dev/null; then
    ssid=$(iwgetid -r)
    signal=$(awk '/^\s*w/ {print int($3 * 100 / 70)}' /proc/net/wireless)
    echo "  $ssid"
elif [[ -n $ethernet_device ]] && ip link show $ethernet_device | grep -q "state UP"; then
    echo "  Ethernet"
else
    echo " No network"
fi
