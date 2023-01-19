#/bin/bash
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo systemctl start docker
sudo systemctl enable


# Exec prometheus docker
# docker run -d -p 9090:9090 -v /vagrant/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus

# Exec Grafana docker
# docker run -d -p 3000:3000 --name grafana grafana:grafana:latest

# Acessar o link do dashboard do grafata que chama node exporter


# Teste de stress
# • Validar consumo dos dados via agent
# • Instalar pacote epel: yum install epel-release
# • Instalar pacote stress: yum install stress
# • Executar teste: stress --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 30s
# • Validar o dashboard
