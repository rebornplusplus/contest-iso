#!/bin/bash

set -eux

IDEA_VERSION='2025.2.5'

echo "\nInstalling IntelliJ IDEA Community Edition $IDEA_VERSION ...\n"

# download pycharm community edition
wget -c "https://download.jetbrains.com/idea/ideaIC-$IDEA_VERSION.tar.gz"

# download sha256sum file and verify the checksum
wget "https://download.jetbrains.com/idea/ideaIC-$IDEA_VERSION.tar.gz.sha256" -O expected_sha256sum.txt
sha256sum ideaIC-$IDEA_VERSION.tar.gz >> actual_sha256sum.txt
cat actual_sha256sum.txt | sha256sum -c expected_sha256sum.txt

# extract and keep the files in /opt
mkdir idea-ce-$IDEA_VERSION
tar -zxvf "ideaIC-$IDEA_VERSION.tar.gz" -C idea-ce-$IDEA_VERSION --strip-components 1
mv idea-ce-$IDEA_VERSION /opt

# remove tar and hash files
rm "ideaIC-$IDEA_VERSION.tar.gz" actual_sha256sum.txt expected_sha256sum.txt

# populate desktop entry
cat > jetbrains-idea-ce.desktop << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=IntelliJ IDEA Community Edition
Icon=/opt/idea-ce-$IDEA_VERSION/bin/idea.svg
Exec="/opt/idea-ce-$IDEA_VERSION/bin/idea.sh" %f
Comment=Capable and Ergonomic IDE for JVM
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-idea-ce
StartupNotify=true
EOF

# copy the desktop entry to appropriate location
mv jetbrains-idea-ce.desktop /usr/share/applications/
