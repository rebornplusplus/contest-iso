set -eux

echo "\nInstalling Geany ...\n"
apt install -y geany
echo "\nPrinting Geany version ...\n"
geany --version
