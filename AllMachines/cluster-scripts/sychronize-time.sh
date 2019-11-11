sudo yum install -y ntp 
sudo yum install -y ntpdate
sudo systemctl enable ntpd 
sudo systemctl start nptd 
sudo ntpdate -u -s 0.centos.pool.ntp.org 1.centos.pool.ntp.org 2.centos.pool.ntp.org ntp.ics.p.lodz.pl
sudo systemctl restart ntpd