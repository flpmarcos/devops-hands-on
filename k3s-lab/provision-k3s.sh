#/bin/bash

# Cluster
curl -sfL https://get.k3s.io | sh -s - --cluster-init --tls-san 192.168.1.2 --node-ip 192.168.1.2 --node-external-ip 192.168.1.2

# To get K3S_TOKEN, acess /var/lib/rancher/k3s/server/node-token in cluster 

# Worker
curl -sfL https://get.k3s.io | K3S_URL=https://192.168.1.2:6443 K3S_TOKEN=K104a053487cc45871a054ed6b83bf12487fc006edae7feb26bf28d6b5b8d3f3792::server:59b13a151bedf5a22913d0ea5cffdea8 sh -s - --node-ip 192.168.1.3 --node-external-ip 192.168.1.3