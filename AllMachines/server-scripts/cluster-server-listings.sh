sudo echo "sudo df -Th | grep gluster" >> /vagrant_data/10-task-BM/cluster-client-server.txt
sudo df -Th | grep gluster >> /vagrant_data/10-task-BM/cluster-client-server.txt

sudo echo "sudo ls -l /mnt/glusterfs/www/page.ex1.gr4/html" >> /vagrant_data/10-task-BM/cluster-client-server.txt
sudo ls -l /mnt/glusterfs/www/page.ex1.gr4/html >> /vagrant_data/10-task-BM/cluster-client-server.txt