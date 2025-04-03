c="y"
echo "Find the IP address"
ifconfig
echo "Enter IP address"
read adr
while [ $c = "y" ];
do
echo "NIKTO TOOL "
echo "1.Identifying list of Options "
echo "2.Domain Scan using nikto tool "
echo "3.Scan domain with ssl enabled"
echo "4.IP Address Scan"
echo "5.Export Scan to Text File"
echo "Enter your choice: "
read ch
case $ch in
1) echo "List of Options"
nikto -help
;;
2) echo "Domain Scan "
echo "Enter Domain Name: "
read dn
nikto -h $dn
;;
3) echo "Domain Scan with SSL Enabled"
echo "Enter the domain with https "
read dn
nikto -h $dn -ssl
;;
4) echo "IP Address Scan"
nikto -h $adr
;;
5) echo "Enter the File Name with .txt extension"
read fn
echo "Export Scan to Text File"
nikto -h $adr -o $fn
;;
esac
echo "Do you want to continue(y/n):"
read c
done
