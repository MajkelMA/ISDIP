    yum -y install dnf
    dnf -y upgrade procps
    yum -y install httpd-tools
    sudo echo 'net.ipv4.ip_forward = 1' >> /etc/sysctl.conf
    sysctl -p