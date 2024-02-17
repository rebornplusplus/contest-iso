#!/bin/bash

set -eux

ECLIPSE_VERSION="2023-12"

# download eclipse: https://www.eclipse.org/downloads/packages/
wget -c -O "eclipse.tar.gz" \
	"https://mirror.kakao.com/eclipse/technology/epp/downloads/release/${ECLIPSE_VERSION}/R/eclipse-java-${ECLIPSE_VERSION}-R-linux-gtk-x86_64.tar.gz"

# extract and keep the files in /opt
tar -zxvf eclipse.tar.gz
mv "eclipse" /opt

# remove the tarball
rm eclipse.tar.gz

cat >eclipse.desktop <<EOF
[Desktop Entry]
Name=Eclipse
Type=Application
Exec=/opt/eclipse/eclipse
Terminal=false
Icon=/opt/eclipse/icon.xpm
Comment=Integrated Development Environment
NoDisplay=false
Categories=Development;IDE;
Name[en]=Eclipse
Name[en_US]=Eclipse
EOF

# copy the desktop entry to appropriate location
mv eclipse.desktop /usr/share/applications/
