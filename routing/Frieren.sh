 #Routing for Frieren's eth2 paths
  #A10
  route add -net 192.180.12.0 netmask 255.255.254.0 gw 192.180.14.142

  #A7
  route add -net 192.180.14.0 netmask 255.255.255.128 gw 192.180.14.142

  #A8
  route add -net 192.180.14.144 netmask 255.255.255.252 gw 192.180.14.142

  #A9
  route add -net 192.180.14.148 netmask 255.255.255.252 gw 192.180.14.142
