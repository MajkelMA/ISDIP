sudo mkfs.xfs -i size=512 /dev/sdb1
sudo echo "/dev/sdb1 /bricks/gluster_brick xfs defaults 0 0" >> /etc/fstab
sudo mkdir -p /bricks/gluster_brick/brick1
sudo mount -a /dev/sdb1 /bricks/gluster_brick
