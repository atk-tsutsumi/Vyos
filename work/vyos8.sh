#!/bin/vbash
${vyatta_sbindir}/my_set interfaces loopback lo address 8.8.8.8/32
${vyatta_sbindir}/my_set protocols ospf area 0 network 10.0.0.0/16
${vyatta_sbindir}/my_set protocols ospf parameters router-id 8.8.8.8
${vyatta_sbindir}/my_commit
