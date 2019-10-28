sudo yum -y install tcpdump
sudo yum -y install ipvsadm
sudo echo 'net.ipv4.ip_forward = 1' >> /etc/sysctl.conf
sudo sysctl -p
sudo touch /etc/sysconfig/ipvsadm
sudo systemctl start ipvsadm
sudo systemctl enable ipvsadm
sudo ipvsadm -C
sudo ipvsadm -A -t 192.168.1.1:80 -s wrr
sudo ipvsadm -a -t 192.168.1.1:80 -r 10.0.0.101:80 -w 10 -m