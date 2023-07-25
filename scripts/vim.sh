set -eux

echo "\nInstalling Vim ...\n"
apt install -y vim-gtk3
echo "\nPrinting Vim version ...\n"
vim --version
