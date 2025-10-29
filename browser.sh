#!/bin/bash

sudo dnf install -y firefox

# Disable <alt> opening the menu-bar of Firefox
echo "pref(\"ui.key.menuAccessKeyFocuses\", false);" | sudo tee /usr/lib64/firefox/defaults/pref/no-menu-access-key.js
