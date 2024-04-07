#/bin/bash

echo " 
########:'##:::::::'##:::'##:
###.....:: ##::::::: ##::'##::
###::::::: ##::::::: ##:'##:::
#######::: ##::::::: #####::::
###...:::: ##::::::: ##. ##:::
###::::::: ##::::::: ##:. ##::
#########: ########: ##::. ##:
"


#for starting elasticsearch
echo "[+] Starting elasticsearch...."
systemctl start elasticsearch
echo " "
echo "Elasticsearch started succesfully!!"
echo " "

# Check status of Elasticsearch service
echo "Checking Elasticsearch service status...."
echo " "
if systemctl is-active elasticsearch --quiet; then
  echo "Elasticsearch is running"
else
  echo "Failed to start Elasticsearch."
fi
echo " "
echo " "


# Start Kibana service
echo "[+] Starting kibana...."
systemctl start kibana
echo " "
echo "kibana started succesfully!!"
echo " "

# Check status of Kibana service
echo "Checking kibana service status...."
echo " "
if systemctl is-active --quiet kibana; then
  echo "Kibana is running"
else
  echo "Failed tp start kibana."
fi
echo " "
echo " "


# Start filebeat service
echo "[+] Starting filebeat...."
echo " "
systemctl start filebeat
echo "filebeat started succesfully!!"
echo " "

# Check status of filebeat service
echo "Checking filebeat service status...."
echo " "
if systemctl is-active --quiet filebeat; then
  echo "filebeat started succesfully!!"
else
  echo "Failed to start filebeat."
fi
echo " "
echo " "


# Start packetbeat service
echo "[+] Starting packetbeat...."
echo " "
systemctl start packetbeat
echo "packetbeat started succesfully!!"
echo " "

# Check status of packetbeat service
echo "Checking packebeat service status...."
echo " "
if systemctl is-active --quiet packetbeat; then
  echo "packetbeat started succesfully!!"
else
  echo "Failed to start packetbeat."
fi
echo " "
echo " "


# Start metricbeat service
echo "[+] Starting metricbeat...."
echo " "
systemctl start metricbeat
echo "metricbeat started succesfully!!"
echo " "


# Check status of metricbeat service
echo "Checking metricbeat service status...."
echo " "
if systemctl is-active --quiet metricbeat; then
  echo "metricbeat started succesfully!!"
else
  echo "Failed tp start metricbeat."
fi
echo " "
echo "All service started please check the status for the failed service!!"
echo " "