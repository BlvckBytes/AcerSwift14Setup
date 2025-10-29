#!/bin/bash

gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver '[]'
gsettings set org.gnome.settings-daemon.plugins.media-keys logout '[]'
gsettings set org.gnome.shell.keybindings focus-active-notification '[]'
gsettings set org.gnome.shell.keybindings toggle-message-tray '[]'
gsettings set org.gnome.shell.keybindings toggle-application-view '[]'
gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog '[]'
gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts '[]'

# The additional "AI"-key on my keyboard - let's get some use out of it! :)
gsettings set org.gnome.shell.keybindings show-screenshot-ui "['<Shift><Super>TouchpadOff']"
gsettings set org.gnome.shell.keybindings screenshot "['']"
gsettings set org.gnome.shell.keybindings screenshot-window "['']"

gsettings set org.gnome.desktop.wm.preferences focus-mode 'sloppy'
gsettings set org.gnome.desktop.wm.preferences auto-raise 'true'
gsettings set org.gnome.desktop.wm.preferences auto-raise-delay 0
gsettings set org.gnome.mutter overlay-key ''
gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>space']"
gsettings set org.gnome.desktop.interface enable-animations 'false'
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.mutter edge-tiling false
