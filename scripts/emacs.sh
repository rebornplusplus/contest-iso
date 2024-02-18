#!/bin/bash

set -eux

echo "\nInstalling Emacs ...\n"
apt install -y emacs
echo "\nPrinting Emacs version ...\n"
emacs --version
