#!/bin/bash

set -eux

echo "Installing Google Chrome.."

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
rm -v google-chrome-stable_current_amd64.deb
