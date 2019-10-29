    yum -y install dnf
    dnf -y upgrade procps
    sudo echo 'net.ipv4.ip_forward = 1' >> /etc/sysctl.conf
    sysctl -p
    sudo systemctl enable firewalld
    sudo systemctl start firewalld
    sudo firewall-cmd --zone=public --remove-interface=eth1 --permanent
    sudo firewall-cmd --zone=public --remove-interface=eth2 --permanent
    sudo firewall-cmd --reload
    sudo firewall-cmd --zone=external --add-interface eth1 --permanent
    sudo firewall-cmd --zone=internal --add-interface eth2 --permanent
    sudo firewall-cmd --zone=external --add-masquerade --permanent
    sudo firewall-cmd --reload