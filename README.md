1.use  " sudo apt-get install bind* " to install "bind9" in your Linux Machine.

2.Backup following files of the machine 

/etc  hosts
/etc  hostname
/etc resolv.conf
/etc/bind named.conf.options
/etc/bind named.conf.local
3. "ifconfig" command and see your machine inet address (mine was 192.168.1.2).
  *** It's recommended to set a fixed ip address for that machine in the router.There are a setting called "fixed ip address set"       somewhere in the router***
4.  hosts =>  Do commenting to the host 127.0.1.1 server and set up like the given hosts
5.  resolv.conf => Do comment the nameserver
6.  named.conf.options => setup like here
7.  named.conf.local => copy paste it
8.  download and paste "zone" folder
9.  sudo service bind9 start
10.  open another terminal and run => sudo tail -f /var/log/syslog
11. login to router and set primary DNS to the address (here mine was 192.168.1.2) and as i didnt setup secondary DNS (its not wise decision) so keep it 192.168.55.55 as random 
12. block service of udp/tcp for 53 in the router. This setting lies in somewhere in the router
