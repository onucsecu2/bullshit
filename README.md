
# IPC Network for Vjudge!
Using BIND in Linux we will make a private DNS server to give access to limited websites.Here this BIND settings is only for giving access to [vjudge.net](https://vjudge.net/) for arranging Internal Programming Contest in a network.
**uva Problemset cant be seen. These problem set is needed to be printed out.But solution can be Submitted and no problem is seen on verdict.**
### SETTING
- install "bind9" in your Linux Machine.
   ```sh
   $ sudo apt-get install bind*
   ```
- Backup following files of the machine 
    >/etc  hosts<br />
    >/etc  hostname<br />
    >/etc resolv.conf<br />
    >/etc/bind named.conf.options<br />
    >/etc/bind named.conf.local<br />
    
- see your machine inet address (mine was 192.168.1.2).
   ```sh
    $ifconfig
   ```
  **It's recommended to set a reserve address for that machine in the router.There are a setting called "Address Reservation" somewhere in the router LAN setup. Reserve the machine MAC address to 192.168.1.2 is recommended**
-  [/etc]() hosts =>  Do commenting to the host 127.0.1.1 server and set up like the given hosts
-  [/etc]() resolv.conf => Do comment the nameserver
-  [/etc/bind]() named.conf.options => setup like here
-  [/etc/bind]() named.conf.local => copy paste it
-  download and paste "zone" folder and place it to [/etc/bind/]()
-  Disable the machines firewall
   ```sh
   $ sudo ufw disable
   ```
-  ```sh
   $ sudo service bind9 start
   ```
-  open another terminal and run 
  ```sh
  $ sudo tail -f /var/log/syslog
  ```
-**You must note down the DNS servers (primary and secondary) which will be needed later. Normally it is 8.8.8.8 and 8.8.4.4 is given which is google's DNS server** 
login to router and set primary DNS to the innet address of the machine (here mine was 192.168.1.2) and as i didnt setup secondary DNS (its not good idea though work) so keep it 192.168.55.55 as random

- block service of udp/tcp for 53 in the router. This setting lies in somewhere in the router (I found it on advance>security>block services in Netgear router).
>If you Dont block it, the DNS will not work for android phones as all sites will be accessible from android phones

### Revert The Network Settings
   -  [/etc]() hosts => uncomment 127.0.1.1
   -  [/etc]() resolv.conf => uncomment that change
   -   ```sh
       $ sudo service bind9 stop
       ```
   -  Login to your router and change the DNS server to previous one and unblock the port tcp/udp 53
