#!/bin/bash

# Globally remap CAPSLOCK (scancode 3a) to ESC
echo -e 'evdev:input:b*\n KEYBOARD_KEY_3a=esc' | sudo tee /etc/udev/hwdb.d/90-custom-keyboard.hwdb
