#!/bin/sh
for i in `seq 1 4`
do
  #vyosコンテナスタート
  docker run -d --name vyos$i --privileged --net=none -v /lib/modules:/lib/modules vyos$i /sbin/init
  sudo ovs-vsctl add-br switch$i
done

sudo ovs-vsctl add-br switch0
#sudo ovs-vsctl add-br switch1
#docker run -d --name vyos1 --privileged --net=testnet -v /lib/modules:/lib/modules vyos1 /sbin/init
