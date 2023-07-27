#!/bin/bash

set -eux

PYCHARM_VERSION="2023.1.4"

echo "\nInstall Pycharm Community $PYCHARM_VERSION ..\n"

# download pycharm community edition
# wget "data.services.jetbrains.com/products/download?code=PCC&platform=linux" -O pycharm.tar.gz
wget -c "https://download.jetbrains.com/python/pycharm-community-${PYCHARM_VERSION}.tar.gz"

# download sha256sum file and verify the checksum
wget "https://download.jetbrains.com/python/pycharm-community-${PYCHARM_VERSION}.tar.gz.sha256" -O expected_sha256sum.txt
sha256sum pycharm-community-${PYCHARM_VERSION}.tar.gz >> actual_sha256sum.txt
cat actual_sha256sum.txt | sha256sum -c expected_sha256sum.txt

# extract and keep the files in /opt
tar -zxvf "pycharm-community-${PYCHARM_VERSION}.tar.gz"
mv "pycharm-community-${PYCHARM_VERSION}" /opt

# remove tar and hash files
rm "pycharm-community-${PYCHARM_VERSION}.tar.gz" actual_sha256sum.txt expected_sha256sum.txt

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
