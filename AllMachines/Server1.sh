ip a > /vagrant_data/adresacja_s1.txt
hostname > /vagrant_data/hostname_s1.txt
sudo yum install curl -y
sudo systemctl status httpd > /vagrant_data/status_httpd_s1.txt
sudo httpd -S > /vagrant_data/konfiguracja_httpd_s1.txt
sudo curl localhost > /vagrant_data/wynik_curl_s1.txt