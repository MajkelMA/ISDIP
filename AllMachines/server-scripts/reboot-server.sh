sudo su
echo "default via 10.0.0.100 dev eth1" >> route-eth1
service network reboot
reboot