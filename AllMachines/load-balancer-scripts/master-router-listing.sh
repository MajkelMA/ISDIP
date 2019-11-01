sudo sysctl -p > /vagrant_data/2-task-MB/master-router/konfiguracja-jako-router.txt
sudo ip a > /vagrant_data/2-task-MB/master-router/adresacja-sieci.txt
sudo ip r > /vagrant_data/2-task-MB/master-router/tablica-routingu.txt
sudo ipvsadm -v > /vagrant_data/2-task-MB/master-router/lvs-version.txt
sudo ipvsadm -l > /vagrant_data/2-task-MB/master-router/lvs-conf.txt


# sudo systemctl status ipvsadm > /vagrant_data/2-task-MB/master-router/lvs-change-servers-number.txt
# sudo ipvsadm -l >> /vagrant_data/2-task-MB/master-router/lvs-change-servers-number.txt
# sudo ipvsadm -d -t 192.168.1.100:80 -r 10.0.0.102:80 >> /vagrant_data/2-task-MB/master-router/lvs-change-servers-number.txt
# sudo ipvsadm -l >> /vagrant_data/2-task-MB/master-router/lvs-change-servers-number.txt
# sudo systemctl status ipvsadm >> /vagrant_data/2-task-MB/master-router/lvs-change-servers-number.txt
# sudo ipvsadm -a -t 192.168.1.100:80 -r 10.0.0.102:80 -w 20 -m >> /vagrant_data/2-task-MB/master-router/lvs-change-servers-number.txt
# sudo ipvsadm -l >> /vagrant_data/2-task-MB/master-router/lvs-change-servers-number.txt
# sudo systemctl status ipvsadm >> /vagrant_data/2-task-MB/master-router/lvs-change-servers-number.txt