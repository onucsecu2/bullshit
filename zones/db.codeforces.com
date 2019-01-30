;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns2.dns2.com. admin.example.com. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
; Name servers
codeforces.com.    IN      NS      ns2.dns2.com.
codeforces.com.    IN      NS      ns3.dns3.com.
; A records for name servers
ns2             IN      A       8.8.8.8
ns3             IN      A       8.8.4.4
; Other A records
@               IN      A       212.193.33.27
www             IN      A       212.193.33.27

