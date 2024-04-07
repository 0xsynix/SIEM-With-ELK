#/bin/bash

echo "

MMMMMMMMMMMM MMMMMMMMMMM MMMMMMMMMMM 
MM  mmmmmmmM M  MMMMMMMM M  MMMM .MM
MM      MMMM M  MMMMMMMM M       .MM 
MM  MMMMMMMM M  MMMMMMMM M  MMMb. YM 
MM  MMMMMMMM M  MMMMMMMM M  MMMMb  M 
MM        .M M         M M  MMMMM  M 
MMMMMMMMMMMM MMMMMMMMMMM MMMMMMMMMMM 

echo "MADE BY 5YN1X"
"

echo " "
echo "[+] Installing the ELK stack"

echo "Installing OpenJDK package..."
apt install -y openjdk-8-jdk
echo " "

echo "Installing the Elastic GPG Key to validate the packages..."
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
echo " "

echo "Installing HTTPS transport to download the packages over a secure connection..."
apt install -y apt-transport-https
echo " "

echo "Adding the Elastic repository to the APT configuration... "
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list
echo " "

#----------------Elasticsearch installation----------- #
echo "Updating APT and install Elasticsearch... "
apt update && apt install -y elasticsearch
echo " "
echo "Elasticsearch succssfully installed!"


#----------------kibana installation----------- #
echo "[+] Installing Kibana..."
apt install -y kibana
echo " "
echo "kibana successfully installed!"
echo " "

#----------------Beats installation----------- #
#Filebeat
echo "[+] Installing Filebeat..."
apt install -y filebeat
echo " "
echo "filebeat successfully installed!"
echo " "

#Metricbeat
echo "[+] Installing Metricbeat..."
apt install -y metricbeat
echo " "
echo "metricbeat successfully installed!"
echo " "

#Packetbeat
echo "[+] Installing Packetbeat..."
apt install -y packetbeat
echo " "
echo "packetbeat successfully installed!"
echo " "

#Heartbeat
echo "[+] Installing heartbeat..."
apt install -y heartbeat
echo " "
echo "heartbeat successfully installed!"
echo " "

#Auditbeat
echo "[+] Installing Auditbeat..."
apt install -y auditbeat
echo " "
echo "heartbeat successfully installed!"
echo " "