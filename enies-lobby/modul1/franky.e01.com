;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	franky.e01.com. root.franky.e01.com. (
		     	4		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	franky.e01.com.
@	IN	A	192.200.2.4
www	IN	CNAME	franky.e01.com. 
super	IN	A	192.200.2.4
www.super IN 	CNAME 	super.franky.e01.com.
mecha 	IN	NS	ns1 	
