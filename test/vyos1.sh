
#インターフェース設定 これいる？？
${vyatta_sbindir}/my_set interfaces ethernet eth2 description 'private'
${vyatta_sbindir}/my_set interfaces ethernet eth2 address '10.10.1.1/22'
#ホスト名設定
${vyatta_sbindir}/my_set system host-name 'gateway1'
${vyatta_sbindir}/my_set system domain-name 'foo.bar.hoge.jp'
#PPPoEでISPに接続(?)
${vyatta_sbindir}/my_set interfaces ethernet eth2 pppoe 1 mtu '1414'
${vyatta_sbindir}/my_set interfaces ethernet eth2 pppoe 1 user-id 'ispb@bar.net'
${vyatta_sbindir}/my_set interfaces ethernet eth2 pppoe 1 password 'hogehoge'
${vyatta_sbindir}/my_set interfaces ethernet eth2 pppoe 1 name-server 'auto'
#NAT設定
${vyatta_sbindir}/my_set nat source rule 30 description 'private to ISP B'
${vyatta_sbindir}/my_set nat source rule 30 outbound-interface 'pppoe1'
${vyatta_sbindir}/my_set nat source rule 30 source address '10.10.1.1/22'
${vyatta_sbindir}/my_set nat source rule 30 translation address 'masquerade'
#DHCPサーバ設定
${vyatta_sbindir}/my_set service dhcp-server shared-network-name private-pool authoritative 'enable'
${vyatta_sbindir}/my_set service dhcp-server shared-network-name private-pool subnet 10.10.1.0/22 default-router '10.10.1.1'
${vyatta_sbindir}/my_set service dhcp-server shared-network-name private-pool subnet 10.10.1.0/22 dns-server '10.10.1.1'
${vyatta_sbindir}/my_set service dhcp-server shared-network-name private-pool subnet 10.10.1.0/22 lease '86400'
${vyatta_sbindir}/my_set service dhcp-server shared-network-name private-pool subnet 10.10.1.0/22 start 10.10.1.230 stop '10.10.1.250'
#DNS設定
${vyatta_sbindir}/my_set service dns forwarding cache-size '5000'
${vyatta_sbindir}/my_set service dns forwarding listen-on 'eth2'
${vyatta_sbindir}/my_set service dns forwarding listen-on 'lo'
${vyatta_sbindir}/my_set service dns forwarding 'system'
