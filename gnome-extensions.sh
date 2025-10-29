#!/bin/bash

sudo dnf install -y python3-pip
pip3 install --upgrade git+https://github.com/essembeh/gnome-extensions-cli

# Dash To Panel
gnome-extensions-cli install 1160

dconf write /org/gnome/shell/extensions/hidetopbar/show-in-overlay false
dconf write /org/gnome/shell/extensions/hidetopbar/enable-active-window false
dconf write /org/gnome/shell/extensions/hidetopbar/enable-intellihide false
dconf write /org/gnome/shell/extensions/hidetopbar/shortcut-delay 2.0
dconf write /org/gnome/shell/extensions/hidetopbar/shortcut-keybind "['<Super>p']"

# Hide Top Bar
gnome-extensions-cli install 545

# Setup keybinds used to move windows around
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/ignore-top-panel "true"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-corner-nw "['<Super>u']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-corner-ne "['<Super>i']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-corner-sw "['<Super>j']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-corner-se "['<Super>k']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-side-n "['']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-side-e "['<Super>l']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-side-s "['']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-side-w "['<Super>h']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-center "['<Super>Return']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-left-screen "['']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-right-screen "['']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-previous-screen "['']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/put-to-next-screen "['']"
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/center-width 100
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/center-height 100
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/center-width-1 100
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/center-height-1 100
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/center-width-2 100
dconf write /org/gnome/shell/extensions/org-lab21-putwindow/center-height-2 100

# I'm only using quadrants and don't need 33%/66%
for i in {0..2}; do
  dconf write /org/gnome/shell/extensions/org-lab21-putwindow/north-height-$i 50
  dconf write /org/gnome/shell/extensions/org-lab21-putwindow/south-height-$i 50
  dconf write /org/gnome/shell/extensions/org-lab21-putwindow/left-side-widths-$i 50
  dconf write /org/gnome/shell/extensions/org-lab21-putwindow/right-side-widths-$i 50
done
