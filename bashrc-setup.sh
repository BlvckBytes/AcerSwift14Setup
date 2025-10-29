#!/bin/bash

mkdir -p ~/.bashrc.d
echo -e 'alias ll="ls -la"\nset -o vi' > ~/.bashrc.d/basic-setup
source ~/.bashrc.d/basic-setup
