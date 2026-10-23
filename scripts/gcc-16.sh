#!/bin/bash

set -eux

echo "Installing gcc-16, g++-16..."

add-apt-repository ppa:ubuntu-toolchain-r/test -y
apt update

apt install -y gcc-16 g++-16

update-alternatives \
	--install /usr/bin/gcc gcc /usr/bin/gcc-16 80 \
	--slave /usr/bin/g++ g++ /usr/bin/g++-16 \
	--slave /usr/bin/gcov gcov /usr/bin/gcov-16
