
# IPC Network for Vjudge!
Using BIND in Linux we will make a private DNS server to give access to limited websites.Here this BIND settings is only for giving access to "vjudge.net" for arranging Internal Programming Contest in a network.

### SETTING
- install "bind9" in your Linux Machine.
   ```sh
   $ sudo apt-get install bind*
   ```
- Backup following files of the machine 
    /etc  hosts
    /etc  hostname
    /etc resolv.conf
    /etc/bind named.conf.options
    /etc/bind named.conf.local
    
- see your machine inet address (mine was 192.168.1.2).
   ```sh
    $ifconfig
   ```
  **It's recommended to set a fixed ip address for that machine in the router.There are a setting called "fixed ip address set" somewhere in the router**
-  hosts =>  Do commenting to the host 127.0.1.1 server and set up like the given hosts
-  resolv.conf => Do comment the nameserver
-  named.conf.options => setup like here
-  named.conf.local => copy paste it
-  download and paste "zone" folder and place it to [/etc/bind/]
-  ```sh
   $ sudo service bind9 start
   ```
-  open another terminal and run 
  ```sh
  $ sudo tail -f /var/log/syslog
  ```
- login to router and set primary DNS to the address (here mine was 192.168.1.2) and as i didnt setup secondary DNS (its not wise decision) so keep it 192.168.55.55 as random 
- block service of udp/tcp for 53 in the router. This setting lies in somewhere in the router
