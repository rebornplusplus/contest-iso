set -eux

# https://linuxhint.com/install-code-blocks-ubuntu/
echo "Installing Codeblocks ..."

add-apt-repository universe -y
apt install -y codeblocks codeblocks-contrib
