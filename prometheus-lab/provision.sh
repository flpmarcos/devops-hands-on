#/bin/bash
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo systemctl start docker
sudo systemctl enable


# Exec prometheus docker
# docker run -d -p 9090:9090 -v /vagrant/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus


