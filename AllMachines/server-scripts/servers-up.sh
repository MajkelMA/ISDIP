sudo modprobe fuse

sudo yum install nano -y

sudo yum install centos-release-gluster -y
sudo yum install openssh-server wget fuse fuse-libs openib libibverbs -y 
sudo yum install curl -y
sudo yum install tcpdump -y
sudo yum install php php-opcache -y



sudo yum -y install glusterfs
sudo yum -y install glusterfs-fuse


sudo firewall-cmd --add-service=glusterfs 
sudo firewall-cmd --add-service=glusterfs --permanent


sudo mkdir -p /mnt/glusterfs
sudo mount -t glusterfs 172.16.0.4:/wol_grupa4 /mnt/glusterfs
sudo echo "172.16.0.4:/wol_grupa4 /mnt/glusterfs glusterfs defaults, _netdev 0 0" >> /etc/fstab