sudo mkfs.xfs -i size=512 /dev/sdb1
sudo echo "/dev/sdb1 /bricks/disk_brisk$1 xfs defaults 0 0" >> /etc/fstab
sudo mkdir -p /bricks/disk_brick$1/brick$1
sudo mount /dev/sdb1 /bricks/disk_brick$1/brick$1