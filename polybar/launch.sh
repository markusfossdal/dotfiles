# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#launch on all monitors
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload --config=${HOME}/dotfiles/polybar/config.ini -q mybar &
  done
else
  polybar --reload --config=${HOME}/dotfiles/polybar/config.ini -q mybar &
fi
