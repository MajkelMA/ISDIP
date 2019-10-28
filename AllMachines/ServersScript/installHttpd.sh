sudo yum install httpd -y
sudo systemctl enable httpd 
sudo systemctl start httpd
sudo mkdir -p /var/www/page.ex1.gr4/html
sudo chmod -R 775 /var/www
page="<html><head><title>Zad 1</title><body>Strona na {$1}</body></head> </html>"
echo "$page" > /var/www/page.ex1.gr4/html/index.html
sudo sudo mkdir /etc/httpd/sites
echo "IncludeOptional sites/*.conf" >> /etc/httpd/conf/httpd.conf
echo "<VirtualHost *:80>
    ServerName www.server1.ex1.gr4
    ServerAlias server1.ex1.gr4
    DocumentRoot /var/www/page.ex1.gr4/html
</VirtualHost>" > /etc/httpd/sites/server1.ex1.gr4.conf
sudo systemctl restart httpd
