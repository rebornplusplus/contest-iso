set -eux

echo "Installing Emacs ..."
apt update
apt -y dist-upgrade
apt install -y emacs
echo "Priniting Emacs version ..."
emacs --version