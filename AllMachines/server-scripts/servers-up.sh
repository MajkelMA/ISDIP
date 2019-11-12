sudo modprobe fuse
sudo yum -y install centos-release-gluster
sudo sudo yum -y install openssh-server wget fuse fuse-libs openib libibverbs
sudo yum install curl -y
sudo yum install tcpdump -y
sudo yum install nano -y
sudo firewall-cmd --add-service=glusterfs 
sudo firewall-cmd --add-service=glusterfs --permanent
sudo yum -y install glusterfs
sudo yum -y install glusterfs-fuse
sudo yum install -y nano
sudo yum install -y php php-opcache
sudo mkdir -p /mnt/glusterfs
sudo mount -t glusterfs 172.16.0.4:/cluster_volume_1 /mnt/glusterfs
sudo echo "172.16.0.4:/cluster_volume_1 /mnt/glusterfs glusterfs defaults, _netdev 0 0" >> /etc/fstab
# sudo ip route del default
sudo ip r add 192.168.1.0/24 via 10.0.0.100
