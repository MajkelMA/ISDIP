sudo ip a >> /vagrant_data/8-task-BM/adresacja-sieci.txt
sudo systemctl status glusterd >> /vagrant_data/8-task-BM/glusterfs.txt
sudo hostname >> /vagrant_data/8-task-BM/hostname_gluster.txt
sudo cat /etc/hosts >> /vagrant_data/8-task-BM/etc_hostnames.txt

sudo ip route del default   