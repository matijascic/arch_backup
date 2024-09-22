
if [[ $(cat ~/.config/hypr/.touchpad_status) == 1 ]]
then
    hyprctl keyword 'device[dell0b09:00-06cb:ce81-touchpad]:enabled' 0
    echo 0 > ~/.config/hypr/.touchpad_status
    cat ~/.config/hypr/.touchpad_status
else
    hyprctl keyword 'device[dell0b09:00-06cb:ce81-touchpad]:enabled' 1
    echo 1 > ~/.config/hypr/.touchpad_status
    cat ~/.config/hypr/.touchpad_status
fi
