c="y"
while [ $c = "y" ];
do
echo "WHOIS COMMAND "
echo "1.Getting Information on Domain Name "
echo "2.Getting Information of IP Address."
echo "3.Getting Information about some specific WHOIS server"
echo "Enter your choice: "
read ch
case $ch in
1) echo "Get Info on Domain name "
echo "Enter Domain Name: "
read dn
whois $dn
;;
2) echo "Get Info on IP Address(8.8.8.8)"
echo "Enter the IP Address"
read adr
whois $adr
;;
3) echo "Get Info on specific whois server "
read dn
whois -h whois.verisign-grs.com $dn
;
esac
echo "Do you want to continue(y/n):"
read c
done
