set -eux

echo "Installing Vim ..."
apt update
apt -y dist-upgrade
apt install -y vim
echo "Priniting Vim version ..."
vim --version