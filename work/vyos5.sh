#!/bin/vbash
${vyatta_sbindir}/my_set interfaces loopback lo address 5.5.5.5/32
${vyatta_sbindir}/my_set protocols ospf area 0 network 10.0.0.0/16
${vyatta_sbindir}/my_set protocols ospf parameters router-id 5.5.5.5
${vyatta_sbindir}/my_commit
