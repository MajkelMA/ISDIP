sudo su
ip r delete default
echo "default via 10.0.0.100 dev eth1" >> /etc/sysconfig/network-scripts/route-eth1
service network restart