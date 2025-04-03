echo "CHANGING MANAGED MODE TO MONITOR MODE OF WIFI ADAPTER"
echo "Change the settings under devices-> Network Devices and USB Settings"
echo "To Check weather adapter is connected or not"
ifconfig
echo "To Check mode of wifi Adapter"
iwconfig
echo " Chage the mode to monitor"
ifconfig wlan0 down
iwconfig wlan0 mode monitor
ifconfig wlan0 up
echo "Check the mode "
iwconfig
