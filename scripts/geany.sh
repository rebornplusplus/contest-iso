set -eux

echo "Installing Geany ..."
apt update
apt -y dist-upgrade
apt install -y geany
echo "Priniting Geany version ..."
geany --version