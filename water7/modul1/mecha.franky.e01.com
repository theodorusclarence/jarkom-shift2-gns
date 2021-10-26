;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	mecha.franky.e01.com. root.mecha.franky.e01.com. (
			      2021100401		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	mecha.franky.e01.com.
@	IN	A	192.200.2.4
www 	IN	CNAME	mecha.franky.e01.com.	
general IN 	A	192.200.2.4
www.general IN 	CNAME  	general.mecha.franky.e01.com.	
