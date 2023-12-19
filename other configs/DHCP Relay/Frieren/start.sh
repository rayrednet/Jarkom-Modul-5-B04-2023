 echo '
 SERVERS="192.180.14.146"
 INTERFACES="eth0 eth1 eth2"
 OPTIONS=
 ' > /etc/default/isc-dhcp-relay

 echo 'net.ipv4.ip_forward=1' > /etc/sysctl.conf

 service isc-dhcp-relay restart