#!/bin/bash
yum install -y httpd php
wget https://github.com/rbapst-tamedia/web/archive/master.zip
unzip master.zip
cp web-master/www/index.php /var/www/html
cp web-master/www/.check.html /var/www/html
chkconfig --add httpd
chkconfig httpd on
service httpd start
rm -f master.zip
rm -rf web-master
