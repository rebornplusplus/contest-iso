set -eux

# https://www.cyberithub.com/how-to-install-sublime-text-4-on-ubuntu-20-04-lts-focal-fossa/
echo "Installing Sublime Text 4 ..."
apt update
apt -y dist-upgrade
apt install -y wget gpg
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor >> /etc/apt/trusted.gpg.d/sublimehq-archive.gpg
echo "deb https://download.sublimetext.com/ apt/stable/" >> /etc/apt/sources.list.d/sublime-text.list
apt update
apt install -y sublime-text

echo "Priniting Sublime Text version ..."
subl --version