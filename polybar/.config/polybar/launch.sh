DIR="$HOME/.config/polybar"
killall -q polybar
while pgrep -u "$UID" -x polybar >/dev/null; do
  sleep 0.1
done

polybar -q ws -c "$DIR/config.ini" &
polybar -q date -c "$DIR/config.ini" &
polybar -q laptop -c "$DIR/config.ini" &
polybar -q hw -c "$DIR/config.ini" &
