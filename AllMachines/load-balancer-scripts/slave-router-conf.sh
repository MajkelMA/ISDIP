sudo yum -y install tcpdump 
sudo echo 'net.ipv4.ip_forward = 1' >> /etc/sysctl.conf 
sudo sysctl -p 
sudo systemctl start firewalld 
sudo systemctl enable firewalld
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager

# konfiguracja keepalived
sudo yum -y install ipvsadm
sudo yum -y install keepalived
sudo sysctl -p 
sudo mv /etc/keepalived/keepalived.conf /etc/keepalived/keepalived.conf.org
sudo cat /vagrant_data/keepalived-slave-conf.txt > /etc/keepalived/keepalived.conf
sudo systemctl start keepalived
sudo systemctl enable keepalived

firewall-cmd --direct --permanent --add-rule ipv4 filter INPUT 0 -p vrrp -s 192.168.1.0/24 -d 224.0.0.0/24 -j ACCEPT
firewall-cmd --direct --permanent --add-rule ipv4 filter INPUT 0 -p vrrp -s 10.0.0.0/24 -d 224.0.0.0/24 -j ACCEPT
firewall-cmd --direct --permanent --add-rule ipv4 filter INPUT 0 -p udp -s 192.168.1.0/25 -d 224.0.0.0/24 -j ACCEPT
firewall-cmd --reload
