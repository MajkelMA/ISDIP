ip a > /vagrant_data/1-task-RL/adresacja_s1.txt
ip r > /vagrant_data/1-task-RL/tablica_routingu_s1.txt
hostname > /vagrant_data/1-task-RL/hostname_s1.txt
sudo systemctl status httpd > /vagrant_data/1-task-RL/status_httpd_s1.txt
sudo httpd -S > /vagrant_data/1-task-RL/konfiguracja_httpd_s1.txt
sudo curl localhost > /vagrant_data/1-task-RL/wynik_curl_s1.txt

sudo firewall-cmd --get-active-zones > /vagrant_data/5-task-RL/firewall-zones-s1.txt
sudo firewall-cmd --list-all-zones > /vagrant_data/5-task-RL/firewall-list-zones-s1.txt
sudo iptables -L > /vagrant_data/5-task-RL/iptables-s1.txt