#!/bin/bash

#Install MqSQL server
yum install mysql mysql-server mysql-devel
chkconfig --add mysql-devel
chkconfig mysqld on
service mysqld start
mysql -u root -e "SHOW DATABASES";
