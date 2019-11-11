sudo modprobe fuse
sudo yum -y install centos-release-gluster
sudo sudo yum -y install openssh-server wget fuse fuse-libs openib libibverbs
sudo firewall-cmd --add-service=glusterfs 
sudo firewall-cmd --add-service=glusterfs --permanent
sudo yum -y install glusterfs
sudo yum -y install glusterfs-fuse
sudo mkdir -p /mnt/glusterfs
sudo mount -t glusterfs 172.16.0.4:/cluster_volume_1 /mnt/glusterfs
sudo ip route del default