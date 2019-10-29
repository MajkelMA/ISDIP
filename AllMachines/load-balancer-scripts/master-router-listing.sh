sudo sysctl -p > /vagrant_data/2-task-MB/master-router/konfiguracja-jako-router.txt
sudo ip a > /vagrant_data/2-task-MB/master-router/adresacja-sieci.txt
sudo ip r > /vagrant_data/2-task-MB/master-router/tablica-routingu.txt
sudo ipvsadm -l > /vagrant_data/2-task-MB/master-router/lvs-conf.txt