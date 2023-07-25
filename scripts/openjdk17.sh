set -eux

echo "Installing OpenJDK 17 ..."
apt install -y openjdk-17-jdk openjdk-17-jre
echo "Priniting Java version ..."
java --version
echo "Priniting Java compiler version ..."
javac --version