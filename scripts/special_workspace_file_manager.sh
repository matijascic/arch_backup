if [[ $(hyprctl monitors -j | jq '.[] | .specialWorkspace.id') == -98 ]]
then
    hyprctl dispatch exec "[tile]" dolphin
else 
    hyprctl dispatch exec "[float; size 1920 1080; center]" dolphin
fi
