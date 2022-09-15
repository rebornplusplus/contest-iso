echo "Enable and start <ssh> in systemctl"
sudo systemctl enable ssh
sudo systemctl start ssh

echo "Enable firewall"
sudo ufw enable
sudo ufw allow ssh
