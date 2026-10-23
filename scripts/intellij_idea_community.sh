#!/bin/bash

set -eux

IDEA_VERSION='2026.2.3'

echo "\nInstalling IntelliJ IDEA $IDEA_VERSION ...\n"

# download pycharm community edition
wget -c "https://download.jetbrains.com/idea/idea-$IDEA_VERSION.tar.gz"

# download sha256sum file and verify the checksum
wget "https://download.jetbrains.com/idea/idea-$IDEA_VERSION.tar.gz.sha256" -O expected_sha256sum.txt
sha256sum "idea-$IDEA_VERSION.tar.gz" >> actual_sha256sum.txt
cat actual_sha256sum.txt | sha256sum -c expected_sha256sum.txt

# extract and keep the files in /opt
mkdir idea-$IDEA_VERSION
tar -zxvf "idea-$IDEA_VERSION.tar.gz" -C idea-$IDEA_VERSION --strip-components 1
mv idea-$IDEA_VERSION /opt

# remove tar and hash files
rm "idea-$IDEA_VERSION.tar.gz" actual_sha256sum.txt expected_sha256sum.txt

# populate desktop entry
cat > jetbrains-idea.desktop << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=IntelliJ IDEA
Icon=/opt/idea-$IDEA_VERSION/bin/idea.svg
Exec=/opt/idea-$IDEA_VERSION/bin/idea
Comment=Capable and Ergonomic IDE for JVM
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-idea
StartupNotify=true
EOF

# copy the desktop entry to appropriate location
mv jetbrains-idea.desktop /usr/share/applications/
