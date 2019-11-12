sudo ip a >> /vagrant_data/8-task-BM/adresacja-sieci.txt
sudo systemctl status glusterd >> /vagrant_data/8-task-BM/glusterfs.txt
sudo hostname >> /vagrant_data/8-task-BM/hostname_gluster.txt
sudo cat /etc/hosts >> /vagrant_data/8-task-BM/etc_hostnames.txt
sudo gluster volume status wol_grupa4 detail  >> /vagrant_data/9-task-BM/cluster_bricks.txt
sudo ls - l /bricks/gluster_brick  >> /vagrant_data/9-task-BM/cluster_bricks_mounted.txt
sudo df -Th | grep gluster  >> /vagrant_data/9-task-BM/cluster_bricks_mounted.txt

sudo ip route del default       