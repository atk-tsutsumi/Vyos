#!/bin/sh
#ルーター同士の接続
#sudo ovs-docker add-port switch1 eth0 vyos1 --ipaddress=10.0.1.1/24
#sudo ovs-docker add-port switch2 eth1 vyos1 --ipaddress=10.0.2.1/24
#sudo ovs-docker add-port switch1 eth0 vyos2 --ipaddress=10.0.1.2/24
#sudo ovs-docker add-port switch3 eth1 vyos2 --ipaddress=10.0.3.1/24
#sudo ovs-docker add-port switch2 eth0 vyos3 --ipaddress=10.0.2.2/24
#sudo ovs-docker add-port switch4 eth1 vyos3 --ipaddress=10.0.4.1/24
#sudo ovs-docker add-port switch3 eth0 vyos4 --ipaddress=10.0.3.2/24
#sudo ovs-docker add-port switch4 eth1 vyos4 --ipaddress=10.0.4.2/24

#仮想マシンとの接続用

#sudo ovs-docker add-port switch0 eth2 vyos1 --ipaddress=10.10.1.1/22
  #ここに仮想マシンのなんか色々
  #sudo ovs-docker add-port switch0 eth0 testubuntu --ipaddress=10.100.1.1/24
sudo ovs-docker add-port switch1 eth0 vyos1 --ipaddress=10.0.1.1/24
for i in `seq 2 4`
do
  x=`expr $i - 1`
  sudo ovs-docker add-port switch$x eth1 vyos$i --ipaddress=10.0.$x.2/24
  sudo ovs-docker add-port switch$i eth0 vyos$i --ipaddress=10.0.$i.1/24
done
sudo ovs-docker add-port switch$i eth1 vyos1 --ipaddress=10.0.$i.2/24
