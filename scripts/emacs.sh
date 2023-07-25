set -eux

echo "Installing Emacs ..."
apt install -y emacs
echo "Priniting Emacs version ..."
emacs --version