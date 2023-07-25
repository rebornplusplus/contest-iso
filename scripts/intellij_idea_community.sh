set -eux

echo "\nInstalling IntelliJ IDEA Community Edition ...\n"
snap install intellij-idea-community --classic
echo "\nPrinting IntelliJ IDEA version ...\n"
intellij-idea-community --version
