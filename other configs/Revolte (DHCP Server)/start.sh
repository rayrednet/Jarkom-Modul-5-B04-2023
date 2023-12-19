 rm /var/run/dhcpd.pid

 echo 'INTERFACESv4="eth0"' > /etc/default/isc-dhcp-server

 echo '
 #A1
 subnet 192.180.14.128 netmask 255.255.255.252 {
 }

 #A2
 subnet 192.180.0.0 netmask 255.255.248.0 {
    range 192.180.0.2 192.180.7.254;
 		option routers 192.180.0.1;
 		option broadcast-address 192.180.7.255;
 		option domain-name-servers 192.180.14.150;
 		default-lease-time 3600;
 		max-lease-time 5760;
 }

 #A3
 subnet 192.180.8.0 netmask 255.255.252.0 {
    range 192.180.8.3 192.180.11.254;
 		option routers 192.180.8.1;
 		option broadcast-address 192.180.11.255;
 		option domain-name-servers 192.180.14.150;
 		default-lease-time 3600;
 		max-lease-time 5760;
 }

 #A4
 subnet 192.180.14.132 netmask 255.255.255.252 {
 }

 #A5
 subnet 192.180.14.136 netmask 255.255.255.252 {
 }

 #A6
 subnet 192.180.14.140 netmask 255.255.255.252 {
 }

 #A7
 subnet 192.180.14.0 netmask 255.255.255.128 {
    range 192.180.14.3 192.180.14.126;
 		option routers 192.180.14.1;
 		option broadcast-address 192.180.14.127;
 		option domain-name-servers 192.180.14.150;
 		default-lease-time 3600;
 		max-lease-time 5760;
 }

 #A8
 subnet 192.180.14.144 netmask 255.255.255.252 {
 }

 #A9
 subnet 192.180.14.148 netmask 255.255.255.252 {
 }

 #A10
 subnet 192.180.12.0 netmask 255.255.254.0 {
    range 192.180.12.2 192.180.13.254;
 		option routers 192.180.12.1;
 		option broadcast-address 192.180.13.255;
 		option domain-name-servers 192.180.14.150;
 		default-lease-time 3600;
 		max-lease-time 5760;
 }
 ' > /etc/dhcp/dhcpd.conf

 service isc-dhcp-server stop
 service isc-dhcp-server start