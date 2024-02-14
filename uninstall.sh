#!/bin/bash

rm ~/.local/bin/wallpaper-shuffle
echo "Deleted ~/.local/bin/wallpaper-shuffle"

systemctl --user stop wallpaper-shuffle.timer
systemctl --user disable wallpaper-shuffle.timer
echo "Stopped systemd timer"

rm ~/.config/systemd/user/wallpaper-shuffle.service
echo "Deleted ~/.config/systemd/user/wallpaper-shuffle.service"

rm ~/.config/systemd/user/wallpaper-shuffle.timer
echo "Deleted ~/.config/systemd/user/wallpaper-shuffle.timer"
