echo "Installing Python 3.10..."

apt install -y software-properties-common
add-apt-repository -y ppa:deadsnakes/ppa
apt install -y python3.10
