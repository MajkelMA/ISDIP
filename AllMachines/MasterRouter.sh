sudo ip route add 10.0.1.0/24 via 192.168.1.3
sudo ip route add 10.0.2.0/24 via 192.168.1.3
sudo yum -y install tcpdump
sudo yum -y install ipvsadm
sudo touch /etc/sysconfig/ipvsadm
sudo systemctl start ipvsadm
sudo systemctl enable ipvsadm
sudo ipvsadm -C
sudo ipvsadm -A -t 192.168.1.1:80 -s wrr
sudo ipvsadm -a -t 192.168.1.1:80 -r 10.0.0.101:80 -w 10 -m