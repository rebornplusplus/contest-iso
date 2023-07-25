set -eux

echo "\nInstalling PyCharm Community Edition ...\n"
snap install pycharm-community --classic
echo "\nPrinting PyCharm version ...\n"
pycharm-community --version
