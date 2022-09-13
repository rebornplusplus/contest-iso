source vars.sh

echo "Creating admin account, $ADMIN_USER..."
useradd --create-home --password $(echo $ADMIN_PASSWORD) --shell /bin/bash $ADMIN_USER
usermod -aG sudo $ADMIN_USER

echo "Creating team account, $TEAM_USER..."
useradd --create-home --password $(echo $TEAM_PASSWORD) --shell /bin/bash $TEAM_USER

echo "Creating mock account, $MOCK_USER..."
useradd --create-home --password $(echo $MOCK_PASSWORD) --shell /bin/bash $MOCK_USER

chmod -R -v 750 /home/*
