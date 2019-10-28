    yum -y install dnf
    dnf -y upgrade procps
    sudo echo 'net.ipv4.ip_forward = 1' >> /etc/sysctl.conf
    sysctl -p