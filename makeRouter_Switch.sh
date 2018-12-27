#!/bin/sh
for i in `seq 1 4`
do
  #vyosコンテナスタート
  docker run -d --name vyos$i --privileged --net=none -v /lib/modules:/lib/modules eveatk/vyos /sbin/init
  sudo ovs-vsctl add-br switch$i
done
#docker run -d --name vyos$i --privileged -v /lib/modules:/lib/modules eveatk/vyos /sbin/init
#sudo ovs-vsctl add-br switch-host
