echo "nameserver 192.168.122.1" > /etc/resolv.conf

apt-get update
apt-get install bind9 -y

mkdir /etc/bind/kaizoku

cp modul1/named.conf.local /etc/bind/named.conf.local
cp modul1/franky.e01.com /etc/bind/kaizoku/franky.e01.com
cp modul1/2.200.192.in-addr.arpa /etc/bind/kaizoku/2.200.192.in-addr.arpa
cp modul1/named.conf.options /etc/bind/named.conf.options

service bind9 restart

