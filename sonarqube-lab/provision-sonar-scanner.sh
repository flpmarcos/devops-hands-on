#/usr/bin/bash
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
sudo unzip sonar-scanner-cli-4.6.2.2472-linux.zip -d /opt
sudo mv sonar-scanner-4.6.2.2472-linux sonar-scanner
chown -R sonar:sonar /opt/sonar-scanner
echo 'export PATH=$PATH:/opt/sonar-scanner/bin' | sudo tee -a /etc/profile



