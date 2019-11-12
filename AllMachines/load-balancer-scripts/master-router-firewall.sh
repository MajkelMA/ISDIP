sudo systemctl enable firewalld
sudo systemctl start firewalld
sudo firewall-cmd --zone=public --remove-interface=eth1 --permanent
sudo firewall-cmd --zone=public --remove-interface=eth2 --permanent
sudo firewall-cmd --zone=external --add-interface=eth1 --permanent
sudo firewall-cmd --zone=internal --add-interface=eth2 --permanent
sudo firewall-cmd --reload
sudo firewall-cmd --add-masquerade --zone=external --permanent
sudo firewall-cmd --add-service=http --zone=external --permanent
sudo firewall-cmd --direct --permanent --add-rule ipv4 filter FORWARD 0 -i eth2 -o eth1 -j ACCEPT 
sudo firewall-cmd --reload
