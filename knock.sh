c="y"
while [ $c = "y" ];
do
echo "FINDING SUB DOMAINS USING KNOCK TOOL "
echo "1.Getting Info of a Knock Tool "
echo "2.Getting version of knock Tool."
echo "3.Scanning a Domain Name"
echo "4. Scanning a Sub Domain "
echo "Enter your choice: "
read ch
case $ch in
1) echo "Get Info of Knock tool "
python knockpy.py -h
;;
2) echo "To find the version of Knock Tool"
python knockpy.py -v
;;
3) echo "To scan the domain name "
read dn
python knockpy.py -d $dn
;;
4) echo " To Scan Sub Domain "
read dn
python knockpy.py -d $dn --recon --bruteforce
esac
echo "Do you want to continue(y/n):"
read c
done
