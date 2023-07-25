set -eux

echo "Installing IntelliJ IDEA Community Edition ..."
snap install intellij-idea-community --classic
echo "Priniting IntelliJ IDEA version ..."
intellij-idea-community --version