#/bin/bash
curl -sfL https://get.k3s.io | sh -s - --cluster-init --tls-san 192.168.1.2 --node-ip 192.168.1.2 --node-external-ip 192.168.1.2
