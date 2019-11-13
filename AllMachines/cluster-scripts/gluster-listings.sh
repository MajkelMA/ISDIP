sudo echo "sudo ip a" >> /vagrant_data/8-task-BM/adresacja-sieci.txt
sudo ip a >> /vagrant_data/8-task-BM/adresacja-sieci.txt

sudo echo "sudo systemctl status glusterd" >> /vagrant_data/8-task-BM/glusterfs.txt
sudo systemctl status glusterd >> /vagrant_data/8-task-BM/glusterfs.txt

sudo echo "sudo hostname" >> /vagrant_data/8-task-BM/hostname_gluster.txt
sudo hostname >> /vagrant_data/8-task-BM/hostname_gluster.txt

sudo echo "sudo cat /etc/hosts" >> /vagrant_data/8-task-BM/etc_hostnames.txt
sudo cat /etc/hosts >> /vagrant_data/8-task-BM/etc_hostnames.txt


sudo echo "sudo gluster volume status wol_grupa4 detail" >> /vagrant_data/9-task-BM/cluster_bricks.txt
sudo gluster volume status wol_grupa4 detail  >> /vagrant_data/9-task-BM/cluster_bricks.txt

sudo echo "sudo ls - l /bricks/gluster_brick" >> /vagrant_data/9-task-BM/cluster_bricks_mounted.txt
sudo ls - l /bricks/gluster_brick  >> /vagrant_data/9-task-BM/cluster_bricks_mounted.txt

sudo echo "sudo df -Th | grep gluster" >> /vagrant_data/9-task-BM/cluster_bricks_mounted.txt 
sudo df -Th | grep gluster  >> /vagrant_data/9-task-BM/cluster_bricks_mounted.txt     