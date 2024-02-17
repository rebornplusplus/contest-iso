#!/bin/bash

set -eux

echo "Installing gcc-12, g++-12..."

apt install -y gcc-12 g++-12

update-alternatives \
	--install /usr/bin/gcc gcc /usr/bin/gcc-12 80 \
	--slave /usr/bin/g++ g++ /usr/bin/g++-12 \
	--slave /usr/bin/gcov gcov /usr/bin/gcov-12
