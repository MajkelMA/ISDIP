#install glusterfs
sudo yum install ifconfig -y
sudo yum install wget -y
sudo yum install centos-release-gluster -y
sudo yum install epel-release -y
sudo yum install glusterfs-server -y 

#enable glusterfs
sudo systemctl enable glusterd
sudo systemctl start glusterd
sudo 
#synchronize time
sudo yum install -y ntp 
sudo yum install -y ntpdate
sudo systemctl enable ntpd 
sudo systemctl start ntpd 
sudo ntpdate -u -s 0.centos.pool.ntp.org 1.centos.pool.ntp.org 2.centos.pool.ntp.org 
sudo timedatectl set-timezone Europe/Warsaw
sudo hwclock -w
# ntp.ics.p.lodz.pl
sudo systemctl restart ntpd

#write to name to etc/hosts
echo "172.16.0.1 ClusterMachine1.ex1.gr4" >> /etc/hosts
echo "172.16.0.2 ClusterMachine2.ex1.gr4" >> /etc/hosts
echo "172.16.0.3 ClusterMachine3.ex1.gr4" >> /etc/hosts
echo "172.16.0.4 ClusterMachine4.ex1.gr4" >> /etc/hosts
echo "172.16.0.11 ServerMachine1.ex1.gr4" >> /etc/hosts
echo "172.16.0.12 ServerMachine2.ex1.gr4" >> /etc/hosts
echo "172.16.0.13 ServerMachine3.ex1.gr4" >> /etc/hosts