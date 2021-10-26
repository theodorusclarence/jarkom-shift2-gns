echo "nameserver 192.168.122.1" > /etc/resolv.conf

apt-get update
apt-get install bind9 -y 
echo "# nameserver 192.168.122.1
nameserver 192.200.2.2
nameserver 192.200.2.3" > /etc/resolv.conf

# buat slave & delegate
cp modul1/named.conf.local /etc/bind/named.conf.local
cp modul1/named.conf.options /etc/bind/named.conf.options

mkdir /etc/bind/sunnygo
cp modul1/mecha.franky.e01.com /etc/bind/sunnygo/mecha.franky.e01.com
service bind9 restart


