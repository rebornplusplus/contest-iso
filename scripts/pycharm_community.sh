#!/bin/bash

set -eux

PYCHARM_VERSION="2026.2.3"
PYCHARM_NAME="pycharm-${PYCHARM_VERSION}"

echo "\nInstall Pycharm $PYCHARM_VERSION ..\n"

# download pycharm edition
# wget "data.services.jetbrains.com/products/download?code=PCC&platform=linux" -O pycharm.tar.gz
wget -c "https://download.jetbrains.com/python/${PYCHARM_NAME}.tar.gz"

# download sha256sum file and verify the checksum
wget "https://download.jetbrains.com/python/${PYCHARM_NAME}.tar.gz.sha256" -O expected_sha256sum.txt
sha256sum ${PYCHARM_NAME}.tar.gz >> actual_sha256sum.txt
cat actual_sha256sum.txt | sha256sum -c expected_sha256sum.txt

# extract and keep the files in /opt
tar -zxvf "${PYCHARM_NAME}.tar.gz"
mv "${PYCHARM_NAME}" /opt

# remove tar and hash files
rm "${PYCHARM_NAME}.tar.gz" actual_sha256sum.txt expected_sha256sum.txt

# populate desktop entry
cat > jetbrains-pycharm.desktop << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=PyCharm
Icon=/opt/$PYCHARM_NAME/bin/pycharm.svg
Exec=/opt/$PYCHARM_NAME/bin/pycharm
Comment=Python IDE for Developers
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-pycharm
StartupNotify=true
EOF

# copy the desktop entry to appropriate location
mv jetbrains-pycharm.desktop /usr/share/applications/
