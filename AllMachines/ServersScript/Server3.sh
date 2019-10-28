ip a > /vagrant_data/adresacja_s2.txt
ip r > /vagrant_data/tablica_routingu_s2.txt
hostname > /vagrant_data/hostname_s2.txt
sudo systemctl status httpd > /vagrant_data/status_httpd_s2.txt
sudo httpd -S > /vagrant_data/konfiguracja_httpd_s2.txt
sudo curl localhost > /vagrant_data/wynik_curl_s2.txt