sudo yum -y install tcpdump 
sudo echo 'net.ipv4.ip_forward = 1' >> /etc/sysctl.conf 
sudo sysctl -p 
sudo systemctl stop firewalld 
sudo systemctl disable firewalld 
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager

# konfiuracja LVS
# sudo yum -y install ipvsadm 
# sudo ip addr add 192.168.1.100/24 broadcast 192.168.1.255 dev eth1 label eth1:1 
# sudo ip addr add 10.0.0.100/24 broadcast 10.0.0.255 dev eth2 label eth2:1 
# sudo touch /etc/sysconfig/ipvsadm 
# sudo systemctl start ipvsadm 
# sudo systemctl enable ipvsadm 
# sudo ipvsadm -C 
# sudo ipvsadm -A -t 192.168.1.100:80 -s wrr 
# sudo ipvsadm -a -t 192.168.1.100:80 -r 10.0.0.101:80 -w 10 -m 
# sudo ipvsadm -a -t 192.168.1.100:80 -r 10.0.0.102:80 -w 20 -m 
# sudo ipvsadm -a -t 192.168.1.100:80 -r 10.0.0.103:80 -w 10 -m 

# konfiguracja keepalived
sudo yum -y install keepalived
# sudo echo 'net.ipv4.ip_nonlocal_bind = 1' >> /etc/sysctl.conf
sudo sysctl -p 
sudo mv /etc/keepalived/keepalived.conf /etc/keepalived/keepalived.conf.org
sudo cat /vagrant_data/keepalived-master-conf.txt > /etc/keepalived/keepalived.conf
sudo systemctl start keepalived
sudo systemctl enable keepalived