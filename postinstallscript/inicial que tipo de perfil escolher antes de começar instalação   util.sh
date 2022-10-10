#!/bin/bash

echo "*************** selecione a operação ***************"
echo "  1)Clear & Reboot"
echo "  2)Clear & Shutdown"
echo "  3)Update"
echo "  4)Start IntelliJ" 
echo "  5)Start Dbeaver" 
echo "  6)Start SpringToolSuite" 
echo "  7)Start VPN"
echo "  0)Sair" 
read option

case $option in
  1) sudo apt-get clean;sudo apt-get autoclean;sudo rm -v /var/log/*.log* /var/log/syslog*;reboot;;
  2) sudo apt-get clean;sudo apt-get autoclean;sudo rm -v /var/log/*.log* /var/log/syslog*;shutdown -h now;;
  3) sudo apt-get update;;
  4) sudo sh /opt/idea/bin/idea.sh;;
  5) sudo /usr/share/dbeaver-ce/dbeaver;;
  6) sudo /home/gustavo/developer/eclipse/sts-4.8.1.RELEASE/SpringToolSuite4;;
  7) sudo openfortivpn;;
  0) exit;;
esac
