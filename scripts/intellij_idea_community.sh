#!/bin/bash

set -eux

echo "\nInstalling IntelliJ IDEA Community Edition 2023.2 ...\n"

# download pycharm community edition
wget -c "https://download.jetbrains.com/idea/ideaIC-2023.2.tar.gz"

# download sha256sum file and verify the checksum
wget "https://download.jetbrains.com/idea/ideaIC-2023.2.tar.gz.sha256" -O expected_sha256sum.txt
sha256sum ideaIC-2023.2.tar.gz >> actual_sha256sum.txt
cat actual_sha256sum.txt | sha256sum -c expected_sha256sum.txt

# extract and keep the files in /opt
tar -zxvf "ideaIC-2023.2.tar.gz"
mv "idea-IC-232.8660.185" /opt

# remove tar and hash files
rm "ideaIC-2023.2.tar.gz" actual_sha256sum.txt expected_sha256sum.txt

# populate desktop entry
cat > jetbrains-idea-ce.desktop << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=IntelliJ IDEA Community Edition
Icon=/opt/idea-IC-232.8660.185/bin/idea.svg
Exec="/opt/idea-IC-232.8660.185/bin/idea.sh" %f
Comment=Capable and Ergonomic IDE for JVM
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-idea-ce
StartupNotify=true
EOF

# copy the desktop entry to appropriate location
mv jetbrains-idea-ce.desktop /usr/share/applications/
