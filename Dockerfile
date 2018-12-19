FROM eveatk/vyos
ENV LOOPBACK_ADDRESS 1.1.1.1/32
ENV ROUTER_ID 1.1.1.1
CMD ["/sbin/init","/bin/vbash","su - vyos","configure","set interfaces loopback lo address $LOOPBACK_ADDRESS","set protocols ospf area 0 network 10.0.0.0/16","set protocols ospf parameters router-id $ROUTER_ID","commit","save","exit","exit","/bin/vbash"]
