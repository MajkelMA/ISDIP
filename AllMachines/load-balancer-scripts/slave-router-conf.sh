sudo yum -y install tcpdump 
sudo echo 'net.ipv4.ip_forward = 1' >> /etc/sysctl.conf 
sudo sysctl -p 
sudo systemctl stop firewalld 
sudo systemctl disable firewalld 
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager

# konfiguracja keepalived
sudo yum -y install keepalived
sudo sysctl -p 
sudo mv /etc/keepalived/keepalived.conf /etc/keepalived/keepalived.conf.org
sudo cat /vagrant_data/keepalived-slave-conf.txt > /etc/keepalived/keepalived.conf
sudo systemctl start keepalived
sudo systemctl enable keepalived

# firewall-cmd --direct  --add-rule ipv4 filter INPUT 0 --in-interface eth1 --destination 224.0.0.18 --protocol vrrp -j ACCEPT
# firewall-cmd --direct --add-rule ipv4 filter OUTPUT 0 --out-interface eth1 --destination 224.0.0.18 --protocol vrrp -j ACCEPT

# firewall-cmd --direct  --add-rule ipv4 filter INPUT 0 --in-interface eth2 --destination 224.0.0.18 --protocol vrrp -j ACCEPT
# firewall-cmd --direct --add-rule ipv4 filter OUTPUT 0 --out-interface eth2 --destination 224.0.0.18 --protocol vrrp -j ACCEPT