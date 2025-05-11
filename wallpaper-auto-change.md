# 🌄 Auto-Changing Wallpaper with `feh` on Fedora (Every 30 Minutes)

## ✅ Step 1: Install `feh`

    sudo dnf install feh

## ✅ Step 2: Create a Folder for Wallpapers

    mkdir -p ~/Pictures/walls

Put your `.jpg`, `.png`, or `.webp` wallpapers inside this folder.

## ✅ Step 3: Create a Script to Set a Random Wallpaper

    mkdir -p ~/.local/bin
    nano ~/.local/bin/random-wall.sh

Paste the following into `random-wall.sh`:

    #!/bin/bash
    feh --bg-scale "$(find ~/Pictures/walls -type f | shuf -n 1)"

Then make it executable:

    chmod +x ~/.local/bin/random-wall.sh

## ✅ Step 4: Create systemd Service and Timer

### 🔧 Wallpaper Change Service

    mkdir -p ~/.config/systemd/user
    nano ~/.config/systemd/user/wallpaper-change.service

Paste into `wallpaper-change.service`:

    [Unit]
    Description=Change wallpaper using feh

    [Service]
    Type=oneshot
    ExecStart=%h/.local/bin/random-wall.sh

### 🕒 Wallpaper Timer (Every 30 Minutes)

    nano ~/.config/systemd/user/wallpaper-change.timer

Paste into `wallpaper-change.timer`:

    [Unit]
    Description=Run wallpaper change every 30 minutes

    [Timer]
    OnBootSec=1min
    OnUnitActiveSec=30min
    Unit=wallpaper-change.service

    [Install]
    WantedBy=default.target

## ✅ Step 5: Enable and Start the Timer

    systemctl --user daemon-reexec
    systemctl --user daemon-reload
    systemctl --user enable --now wallpaper-change.timer

## ✅ Useful Commands

- **Start wallpaper change manually:**

      systemctl --user start wallpaper-change.service

- **Check next run time:**

      systemctl --user list-timers | grep wallpaper-change

- **Check logs of past runs:**

      journalctl --user -u wallpaper-change.service --since "1 hour ago"

- **Edit interval later:**

      nano ~/.config/systemd/user/wallpaper-change.timer

- **Reload systemd if any file is changed:**

      systemctl --user daemon-reload
