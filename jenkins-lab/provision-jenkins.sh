#/bin/bash
echo "Installing Jenkins and dependencies..."
yum install epel-release wget git -y
sudo wget --no-check-certificate -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install java-11-openjdk-devel -y
yum install jenkins -y 
systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl enable jenkins
