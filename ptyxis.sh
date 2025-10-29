#!/bin/bash

# These keybinds are by default prefixed by shift as they represent shell signals, but I
# don't regularly use them, so I save myself from the inconvenience.
gsettings set org.gnome.Ptyxis.Shortcuts search "'<ctrl>f'"
gsettings set org.gnome.Ptyxis.Shortcuts close-tab "'<ctrl>w'"
gsettings set org.gnome.Ptyxis.Shortcuts new-tab "'<ctrl>t'"
gsettings set org.gnome.Ptyxis.Shortcuts new-window "'<ctrl>n'"
gsettings set org.gnome.Ptyxis.Shortcuts close-window "'<ctrl>q'"
