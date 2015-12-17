#!/bin/bash

# Install apache
yum install -y httpd httpd-tools httpd-devel
chkconfig --add httpd
chkconfig httpd on

service httpd stop
rm -rf /var/www/html
ln -s /vagrant /var/www/html
service httpd start

# Install PHP
yum install -y php php-cli  php-devel php-common php-mysql

# Download the Web Content
cd /vagrant
sudo -u vagrant wget -q "https://raw.githubusercontent.com/RSamal/rinku1/master/files/index.html"
sudo -u vagrant wget -q "https://raw.githubusercontent.com/RSamal/rinku1/master/files/info.php"
