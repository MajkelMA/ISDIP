#install glusterfs
sudo yum install wget
sudo yum install centos-release-gluster -y
sudo yum install epel-release -y
sudo yum install glusterfs-server -y 
#enable glusterfs
sudo systemctl enable glusterd
sudo systemctl start glusterd