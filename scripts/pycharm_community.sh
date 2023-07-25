set -eux

echo "Installing PyCharm Community Edition ..."
snap install pycharm-community --classic
echo "Priniting PyCharm version ..."
pycharm-community --version