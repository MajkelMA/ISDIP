sudo yum install httpd -y
sudo systemctl enable httpd 
sudo systemctl start httpd
sudo mkdir -p /mnt/glusterfs/www/page.ex1.gr4/html
sudo chmod -R 775 /mnt/glusterfs/www/page.ex1.gr4/html
sudo mkdir -p /mnt/glusterfs/www/page.ex1.gr4/html/upload
sudo chmod 777 /mnt/glusterfs/www/page.ex1.gr4/html/upload
sudo cp -n /vagrant_data/index.html /mnt/glusterfs/www/page.ex1.gr4/html/index.html
sudo cp -n /vagrant_data/upload.php /mnt/glusterfs/www/page.ex1.gr4/html/upload.php
sudo mkdir -p /etc/httpd/sites



echo "IncludeOptional sites/*.conf" >> /etc/httpd/conf/httpd.conf
echo "<VirtualHost *:80>
    ServerName www.server1.ex1.gr4
    ServerAlias server1.ex1.gr4
    DocumentRoot /mnt/glusterfs/www/page.ex1.gr4/html
<Directory \"/mnt/glusterfs/www/page.ex1.gr4/html\">
        Require all granted
</Directory>
</VirtualHost>" > /etc/httpd/sites/server1.ex1.gr4.conf

echo "# This file controls the state of SELinux on the system.
# SELINUX= can take one of these three values:
#     enforcing - SELinux security policy is enforced.
#     permissive - SELinux prints warnings instead of enforcing.
#     disabled - No SELinux policy is loaded.
SELINUX=permissive
# SELINUXTYPE= can take one of three values:
#     targeted - Targeted processes are protected,
#     minimum - Modification of targeted policy. Only selected processes are protected.
#     mls - Multi Level Security protection.
SELINUXTYPE=targeted" > /etc/selinux/config
sudo systemctl restart httpd