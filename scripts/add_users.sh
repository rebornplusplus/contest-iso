source vars.sh

echo "Creating admin account, $ADMIN_USER..."
useradd --create-home --password $(echo $ADMIN_PASSWORD) --shell /bin/bash --comment "Admin User" $ADMIN_USER
usermod -aG sudo $ADMIN_USER

echo "Creating team account, $TEAM_USER..."
useradd --create-home --password $(echo $TEAM_PASSWORD) --shell /bin/bash --comment "Main Round" $TEAM_USER

echo "Creating mock account, $MOCK_USER..."
useradd --create-home --password $(echo $MOCK_PASSWORD) --shell /bin/bash --comment "Mock Contest" $MOCK_USER

chmod -R -v 750 /home/*
