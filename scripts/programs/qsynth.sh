#!/bin/bash

echo "Installing qsynth & things"

sudo apt install -y qsynth qjackctl

sudo cp lib/10-local.rules /etc/udev/rules.d
sudo cp lib/piano_control.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/piano_control.sh