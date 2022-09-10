source vars.sh

echo "Creating admin account, $ADMIN_USER..."
useradd --create-home --password $(echo $ADMIN_PASSWORD) $ADMIN_USER
usermod -aG sudo $ADMIN_USER

echo "Creating team account, $TEAM_USER..."
useradd --create-home --password $(echo $TEAM_PASSWORD) $TEAM_USER
