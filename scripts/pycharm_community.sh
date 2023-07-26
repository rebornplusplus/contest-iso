#!/bin/bash

set -eux

PYCHARM_VERSION="2023.1.4"

echo "Install Pycharm Community $PYCHARM_VERSION .."

# download pycharm community edition
# wget "data.services.jetbrains.com/products/download?code=PCC&platform=linux" -O pycharm.tar.gz
wget -c "https://download.jetbrains.com/python/pycharm-community-${PYCHARM_VERSION}.tar.gz"

# extract and keep the files in /opt
tar -zxvf "pycharm-community-${PYCHARM_VERSION}.tar.gz"
mv "pycharm-community-${PYCHARM_VERSION}" /opt

# populate desktop entry
cat > jetbrains-pycharm.desktop << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=PyCharm Community Edition
Icon=/opt/pycharm/bin/pycharm.svg
Exec="/opt/pycharm/bin/pycharm.sh" %f
Comment=Python IDE for Developers
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-pycharm
StartupNotify=true
EOF

# copy the desktop entry to appropriate location
mv jetbrains-pycharm.desktop /usr/share/applications/
