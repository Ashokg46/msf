c="y"
echo "Find the IP address"
ifconfig
echo "Enter IP address"
read adr
while [ $c = "y" ];
do
echo "Identifying open ports using NMAP tool "
echo "1.Version "
echo "2.Domain Scan "
echo "3.Port 80 Scan"
echo "4.Port 1-200 Scan"
echo "5.All Ports Scan"
read ch
case $ch in
1) echo "Version"
nmap --version
;;
2) echo "Domain Scan "
echo "Enter Domain Name: "
read dn
nmap $dn
;;
3) echo "Port Scan"
nmap -p 80 $adr
;;
4) echo "Scan ports 1 through 200"
nmap -p 1-200 $adr
;;
5) echo "To scan all ports(1-65535)"
nmap -p- $adr
;;
esac
echo "Do you want to continue(Y/N):"
read c
done
