#install glusterfs
sudo yum install wget
sudo yum install centos-release-gluster -y
sudo yum install epel-release -y
sudo yum install glusterfs-server -y 
#enable glusterfs
sudo systemctl start glusterd
sudo systemctl enable glusterd