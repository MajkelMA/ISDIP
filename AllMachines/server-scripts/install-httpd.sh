sudo yum install httpd -y
sudo systemctl enable httpd 
sudo systemctl start httpd
sudo mkdir -p /mnt/glusterfs/www/page.ex1.gr4/html
sudo chmod -R 775 /mnt/glusterfs/www/page.ex1.gr4/html
page="<html><head><title>Zad 1</title><body>Strona na </body></head> </html>"
echo "$page" > /mnt/glusterfs/www/page.ex1.gr4/html/index.html
sudo sudo mkdir /etc/httpd/sites
echo "IncludeOptional sites/*.conf" >> /etc/httpd/conf/httpd.conf
echo "<VirtualHost *:80>
    ServerName www.server1.ex1.gr4
    ServerAlias server1.ex1.gr4
    DocumentRoot /mnt/glusterfs/www/page.ex1.gr4/html
    ErrorLog /var/log/httpd/error_example.log
    CustomLog /var/log/request_example.log combined
<Directory \"/mnt/glusterfs/www/page.ex1.gr4/html\">
        Require all granted
</Directory>
</VirtualHost>" > /etc/httpd/sites/server1.ex1.gr4.conf


sudo systemctl restart httpd
sudo yum install curl -y
sudo yum install tcpdump -y
sudo yum install nano -y

echo "# This file controls the state of SELinux on the system.
# SELINUX= can take one of these three values:
#     enforcing - SELinux security policy is enforced.
#     permissive - SELinux prints warnings instead of enforcing.
#     disabled - No SELinux policy is loaded.
SELINUX=disabled
# SELINUXTYPE= can take one of three values:
#     targeted - Targeted processes are protected,
#     minimum - Modification of targeted policy. Only selected processes are protected.
#     mls - Multi Level Security protection.
SELINUXTYPE=targeted" > /etc/selinux/config

sudo ip route del default
sudo ip r add default via 10.0.0.100