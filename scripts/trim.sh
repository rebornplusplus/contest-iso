#!/bin/bash

set -eux

# This script trims down the base Ubuntu 22.04 rootfs.
# It removes unnecessary (for our purposes) packages like
# thunderbird, libreoffice, rhythmbox, aisleriot etc.

apt remove -y --purge \
	aisleriot \
	gnome-mahjongg \
	gnome-mines \
	gnome-sudoku \
	'libreoffice*' \
	rhythmbox \
	shotwell \
	thunderbird \
	zsys

# remove unused packages
apt autoremove -y
