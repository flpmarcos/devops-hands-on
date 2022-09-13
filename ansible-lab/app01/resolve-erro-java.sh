# Instalando o java-11 no centros
sudo yum install java-11-openjdk-devel
 
# Confirmar a versão
java -version
 
# Download Apache Maven última versão (3.8.6 até o momento) e provisionamento do mesmo
wget http://www-us.apache.org/dist/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz tar -zxvf apache-maven-3.8.6-bin.tar.gz
 
# descompactar na pasta opt o Maven
sudo tar xf /tmp/apache-maven-3.8.6-bin.tar.gz -C /opt
 
# Editar o maven.sh e colar os exports abaixo
sudo vi /etc/profile.d/maven.sh
 
# cole os expors dentro do maven.sh
export JAVA_HOME=/usr/lib/jvm/jre-11-openjdk
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}
 
# deixar o mavin.sh como executável
sudo chmod +x /etc/profile.d/maven.sh
 
# ativar os exports do maven
source /etc/profile.d/maven.sh
 
# Conformar a versão do Maven 
mvn -version