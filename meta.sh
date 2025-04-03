use auxiliary/scanner/portscan/tcp
show options
set PORTS 22,25,80,110,21
set threads 3
set RHOSTS google.com
show options
run
db_nmap -sV -A -p 80,22,110,25 142.250.77.174
hosts
services
vulns
