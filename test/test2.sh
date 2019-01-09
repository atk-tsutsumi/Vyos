#!/bin/vbash
${vyatta_sbindir}/my_set interfaces loopback lo address 1.1.1.1/32
${vyatta_sbindir}/my_set protocols ospf area 0 network 10.0.0.0/16
${vyatta_sbindir}/my_set protocols ospf parameters router-id 1.1.1.1
${vyatta_sbindir}/my_commit
