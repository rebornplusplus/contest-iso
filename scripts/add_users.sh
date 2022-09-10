ADMIN_USER="admin"
ADMIN_PASSWORD='$1$qOaJpMTn$udSLvrlWWiT43He1M2wy5.'
# encrypted with $(openssl passwd -1 PLAINTEXTPASSWORD)

echo "Creating admin account, $ADMIN_USER..."
useradd --create-home --password $(echo $ADMIN_PASSWORD) $ADMIN_USER
usermod -aG sudo $ADMIN_USER

TEAM_USER="contestant"
TEAM_PASSWORD='$1$92hYmWFk$qPeMP85ThFuzlKbdgh3cu0'
# encrypted with $(openssl passwd -1 PLAINTEXTPASSWORD)

echo "Creating team account, $TEAM_USER..."
useradd --create-home --password $(echo $TEAM_PASSWORD) $TEAM_USER
