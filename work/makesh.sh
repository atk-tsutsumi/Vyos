#!/bin/bash
for i in `seq 1 4`
do
  touch vyos$i.sh
  echo "#!/bin/vbash" > vyos$i.sh
  echo -e "\${vyatta_sbindir}/my_set interfaces loopback lo address $i.$i.$i.$i/32" >> vyos$i.sh
  echo -e "\${vyatta_sbindir}/my_set protocols ospf area 0 network 10.0.0.0/16" >> vyos$i.sh
  echo -e "\${vyatta_sbindir}/my_set protocols ospf parameters router-id $i.$i.$i.$i" >> vyos$i.sh
  echo -e "\${vyatta_sbindir}/my_commit" >> vyos$i.sh
done
