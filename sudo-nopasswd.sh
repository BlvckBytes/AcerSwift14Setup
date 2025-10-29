#!/bin/bash

# Allow the use of sudo without a password-prompt
echo 'blvckbytes ALL=(ALL) NOPASSWD:ALL' | sudo tee /etc/sudoers.d/blvckbytes-nopasswd
sudo chmod 0440 /etc/sudoers.d/blvckbytes-nopasswd
