# wallpaper-shuffle
Shuffles wallpapers

## Features

* Randomly sets a wallpaper from a folder (GNOME or KDE)
* Can use a different folder for dark mode wallpapers (GNOME only)
* Can run on a timer (systemd or cron)

## Configuration

### `wallpaper-shuffle`

`WALLPAPER_PATH` contains a path to a folder containing the wallpapers you want to shuffle. Default is `~/Pictures/Wallpapers/Shuffle`.

`WALLPAPER_PATH_DARK` contains path to a folder containing the wallpapers you want to shuffle in dark mode. Default is same as `WALLPAPER_PATH`.

You can customize the path by setting the environment variables.

### `wallpaper-shuffle.timer`

`OnCalendar` is the interval between triggering. Defaults to hourly.

### `wallpaper-shuffle.service`

`ExecStart` is the full path to the `wallpaper-shuffle` script. Defaults to `%h/.local/bin/wallpaper-shuffle`

## Installation

`./wallpaper-shuffle` should be placed at `~/.local/bin/wallpaper-shuffle`.

The systemd service files (`./wallpaper-shuffle.service` and `./wallpaper-shuffle.timer`) need to be placed in your systemd user folder, `~/.config/systemd/user/`

`./install.sh` will copy the files to these locations for you.

## Usage

Running `wallpaper-shuffle` will change the current wallpaper to one randomly chosen from the wallpaper path.

To enable automatic shuffling, you need to activate the systemd timer:

```sh
systemctl --user enable --now wallpaper-shuffle.timer
```

To disable automatic shuffling, you can simply stop and/or disable the systemd timer:

```sh
systemctl --user stop wallpaper-shuffle.timer
systemctl --user disable wallpaper-shuffle.timer
```

To change the interval between shuffles, you can update the `OnCalendar` option in the systemd timer. You will need to reload the daemon for your change to take effect:

```sh
systemctl --user daemon-reload
```

Of course, you can also use cron (or any other method of running the script) if you would prefer not to use a systemd timer.
