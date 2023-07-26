set -eux

PYCHARM_VERSION="2023.1.4"
PYCHARM_NAME="pycharm-community-$PYCHARM_VERSION"
SOURCE_URL="https://download.jetbrains.com/python/$PYCHARM_NAME.tar.gz"
SOURCE_SHA256_URL="$SOURCE_URL.sha256"

echo "\nInstalling PyCharm Community Edition $PYCHARM_VERSION ...\n"

apt install -y wget
wget $SOURCE_URL -O $PYCHARM_NAME.tar.gz

wget $SOURCE_SHA256_URL -O expected_sha256sum.txt
sha256sum $PYCHARM_NAME.tar.gz >> actual_sha256sum.txt

cat actual_sha256sum.txt | sha256sum -c expected_sha256sum.txt
tar xzf $PYCHARM_NAME.tar.gz -C /opt/

rm actual_sha256sum.txt expected_sha256sum.txt
rm $PYCHARM_NAME.tar.gz

# TODO: configure pycharm

echo "\nPrinting PyCharm version ...\n"
