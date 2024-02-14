#!/bin/bash

mkdir -p ~/.local/bin

cp wallpaper-shuffle ~/.local/bin/wallpaper-shuffle
echo "Copied script to ~/.local/bin/wallpaper-shuffle"

mkdir -p ~/.config/systemd/user

cp wallpaper-shuffle.service ~/.config/systemd/user/wallpaper-shuffle.service
echo "Copied systemd service to ~/.config/systemd/user/wallpaper-shuffle.service"

cp wallpaper-shuffle.timer ~/.config/systemd/user/wallpaper-shuffle.timer
echo "Copied systemd timer to ~/.config/systemd/user/wallpaper-shuffle.timer"

echo

echo "To enable service, run the following commands:"
echo "$ systemctl --user enable wallpaper-shuffle.timer"
echo "$ systemctl --user start wallpaper-shuffle.timer"

echo

echo "If the service was previously enabled, you will need to reload the systemd daemon"
echo "$ systemctl --user daemon-reload"
