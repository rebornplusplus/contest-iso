#!/bin/bash

set -eux

# https://askubuntu.com/questions/593433/error-sudo-add-apt-repository-command-not-found
apt update && apt install -y software-properties-common

echo "Enabling universe repo.."
add-apt-repository -y universe

echo "Enabling multiverse repo.."
add-apt-repository -y multiverse
