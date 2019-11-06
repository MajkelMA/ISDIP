ip a > /vagrant_data/1-task-RL/adresacja_s3.txt
ip r > /vagrant_data/1-task-RL/tablica_routingu_s3.txt
hostname > /vagrant_data/1-task-RL/hostname_s3.txt
sudo systemctl status httpd > /vagrant_data/1-task-RL/status_httpd_s3.txt
sudo httpd -S > /vagrant_data/1-task-RL/konfiguracja_httpd_s3.txt
sudo curl localhost > /vagrant_data/1-task-RL/wynik_curl_s3.txt

sudo firewall-cmd --get-active-zones > /vagrant_data/firewall-zones-s3.txt
sudo firewall-cmd --list-all-zones > /vagrant_data/firewall-list-zones-s3.txt
sudo iptables -L > /vagrant_data/iptables-s3.txt

