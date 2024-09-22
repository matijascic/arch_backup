
if [[ $(cat /sys/class/leds/dell::kbd_backlight/brightness) == 1 ]]
then
    brightnessctl --device='dell::kbd_backlight' set 0
else
    brightnessctl --device='dell::kbd_backlight' set 1
fi
