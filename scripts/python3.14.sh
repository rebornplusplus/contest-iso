#!/bin/bash

set -eux

echo "Installing Python 3.14..."

add-apt-repository ppa:deadsnakes/ppa -y
apt update
apt install -y python3.14-full
