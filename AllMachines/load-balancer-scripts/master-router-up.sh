sudo systemctl start firewalld
sudo ip addr add 192.168.1.100/24 broadcast 192.168.1.255 dev eth1 label eth1:1
sudo ip addr add 10.0.0.100/24 broadcast 10.0.0.255 dev eth2 label eth2:1