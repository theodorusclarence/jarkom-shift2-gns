echo "nameserver 192.168.122.1" > /etc/resolv.conf
apt-get install apache2 -y
apt-get install php -y
apt-get install libapache2-mod-php7.0 -y

service apache2 start

cp modul1/franky.e01.com.conf /etc/apache2/sites-available/franky.e01.com.conf
cp -r file-www/franky.e01.com /var/www/

# config untuk super.franky.e01.com
cp modul1/super.franky.e01.com.conf /etc/apache2/sites-available/super.franky.e01.com.conf
cp -r file-www/super.franky.e01.com /var/www/

# config untuk general.mecha.franky.e01.com
cp modul1/general.mecha.e01.com-15000.conf /etc/apache2/sites-available/general.mecha.franky.e01.com-15000.conf
cp modul1/general.mecha.e01.com-15500.conf /etc/apache2/sites-available/general.mecha.franky.e01.com-15500.conf
cp modul1/ports.conf /etc/apache2/ports.conf
cp modul1/.htpasswd /etc/apache2/.htpasswd

cp -r file-www/general.mecha.franky.e01.com /var/www/

# Turn on all sites
cd /etc/apache2/sites-available
a2ensite franky.e01.com
a2ensite super.franky.e01.com
a2ensite general.mecha.franky.e01.com-15000
a2ensite general.mecha.franky.e01.com-15500
cd /root

# 16 17 rewrite
a2enmod rewrite


cp modul1/000-default.conf /etc/apache2/sites-available/000-default.conf
cp modul1/franky.htaccess /var/www/franky.e01.com/.htaccess
cp modul1/super.htaccess /var/www/super.franky.e01.com/.htaccess

service apache2 restart

