#!/bin/bash
BIN_DIR="$HOME/.local/bin"
SYSTEMD_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/systemd/user"

mkdir -p "$BIN_DIR"
mkdir -p "$SYSTEMD_DIR"

cp -v wallpaper-shuffle "$BIN_DIR"

cp -v wallpaper-shuffle.service "$SYSTEMD_DIR"
cp -v wallpaper-shuffle.timer "$SYSTEMD_DIR"

systemctl --user daemon-reload

echo "Enable the service with:"
echo "$ systemctl --user enable --now wallpaper-shuffle.timer"

echo

echo "Disable the service with:"
echo "$ systemctl --user disable wallpaper-shuffle.timer"
echo "$ systemctl --user stop wallpaper-shuffle.timer"
