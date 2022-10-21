#/bin/bash
# Kubens
yum install git unzip telnet net-tools -y
git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

# Auto complete kubeclt
yum install bash-completion –y
echo 'source <(kubectl completion bash)' >> ~/.bashrc
kubectl completion bash >/etc/bash_completion.d/kubectl
echo 'alias k=kubectl' >> /etc/profile
echo 'complete -F __start_kubectl k' >> ~/.bashrc
