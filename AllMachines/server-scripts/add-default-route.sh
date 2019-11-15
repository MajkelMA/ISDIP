sudo su
echo "192.168.1.0/24 via 10.0.0.100" >> /etc/sysconfig/network-scripts/route-eth1
service network restart