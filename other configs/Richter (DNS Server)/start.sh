 echo '
 options {
 	directory "/var/cache/bind";
 	forwarders {
 		192.168.122.1;
 	};
 	// dnssec-validation auto;
 	allow-query{any;};
 	auth-nxdomain no;
 	listen-on-v6 { any; };
 };
 ' > /etc/bind/named.conf.options

 service bind9 start