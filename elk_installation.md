# For elasticsearch version 7.17

## Installing the ELK stack:


### Install Java. In this tutorial, we use the OpenJDK package.
```bash
apt install -y openjdk-8-jdk
```


### Install the Elastic GPG Key to validate the packages.
```bash
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
```

### Install HTTPS transport to download the packages over a secure connection.
```bash
apt install -y apt-transport-https
```


### Add the Elastic repository to the APT configuration. 
```bash
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list
```


### Install Kibana:
```bash
apt install -y kibana
```

### Install Filebeat:
```bash
apt install -y filebeat
```

### Only for proxy-pass if you use
#### Install nginx as a proxy to Kibana:
```bash
apt install -y nginx
```

### Install metricbeat:
```bash
apt install -y metricbeat
```

### Install packetbeat:
```bash
apt install -y packetbeat
```

### Install heartbeat:
```bash
apt install -y heartbeat
```

### Install auditbeat:
```bash
apt install -y auditbeat
```
> [!TIP]
> If you dont want to go through all this installation stuff then just run the dwn_elk.sh it will automatically install all the stuff!! 


> --------------------: REFERENCE LINKS : -----------------

[how-to-gather-infrastructure-metrics-with-metricbeat](https://www.digitalocean.com/community/tutorials/
how-to-gather-infrastructure-metrics-with-metricbeat-on-ubuntu-18-04)

[collecting-visualizing-logs-elastic-stack](https://www.scaleway.com/en/docs/tutorials/collecting-visualizing-logs-elastic-stack/)

[install-ELK-stack](https://gitlab.com/xavki/devopsland/-/blob/master/elk/02-install-ELK-stack/slides.md)
