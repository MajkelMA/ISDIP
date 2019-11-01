sudo sysctl -p > /vagrant_data/4-task-MM/konfiguracja-jako-router.txt
sudo ip a > /vagrant_data/4-task-MM/adresacja-sieci.txt
sudo ip r > /vagrant_data/4-task-MM/tablica-routingu-client-router.txt
sudo systemctl status firewalld > /vagrant_data/4-task-MM/status-firewall.txt
sudo firewall-cmd --zone=external --list-all > /vagrant_data/4-task-MM/konfiguracja-firewall-external.txt
sudo firewall-cmd --zone=internal --list-all > /vagrant_data/4-task-MM/konfiguracja-firewall-internal.txt