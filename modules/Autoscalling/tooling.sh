### tooling userdata

#!/bin/bash
mkdir /var/www/
sudo mount -t efs -o tls,accesspoint=fsap-059fb9b0214742c05 fs-00e875e0aa3feb6e3:/ /var/www/
sudo yum install -y httpd 
sudo systemctl start httpd
sudo systemctl enable httpd
sudo yum module reset php -y
sudo yum module enable php:remi-7.4 -y
sudo yum install -y php php-common php-mbstring php-opcache php-intl php-xml php-gd php-curl php-mysqlnd php-fpm php-json
sudo systemctl start php-fpm
sudo systemctl enable php-fpm
git clone https://github.com/adaanene/tooling-1.git
mkdir /var/www/html
cp -R /tooling-1/html/*  /var/www/html/
cd /tooling-1
mysql -h project-15-database.cmpdna6xtofl.eu-west-2.rds.amazonaws.com -u admin -p toolingdb < tooling-db.sql
cd /var/www/html/
touch healthstatus
sed -i "s/$db = mysqli_connect('mysql.tooling.svc.cluster.local', 'admin', 'admin', 'tooling');/$db = mysqli_connect('project-15-database.cmpdna6xtofl.eu-west-2.rds.amazonaws.com', 'admin', 'admin12345', 'toolingdb');/g" functions.php
sudo chcon -t httpd_sys_rw_content_t /var/www/html/ -R
sudo systemctl restart httpd
