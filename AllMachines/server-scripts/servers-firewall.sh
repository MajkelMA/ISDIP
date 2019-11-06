sudo systemctl enable firewalld
sudo systemctl start firewalld
sudo firewall-cmd --zone=public --remove-interface=eth1 --permanent
sudo firewall-cmd --zone=public --remove-interface=eth2 --permanent
sudo firewall-cmd --zone=dmz --add-interface=eth1 --permanent
sudo firewall-cmd --zone=dmz --add-interface=eth2 --permanent
sudo firewall-cmd --reload
sudo firewall-cmd --zone=dmz --add-service=http --permanent
sudo firewall-cmd --reload