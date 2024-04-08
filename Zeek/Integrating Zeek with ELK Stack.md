# Collecting and analyzing Zeek data with Elastic Security


## Software requirements:

### installing Prerequisites for Zeek for all servers:
```bash
sudo apt-get install cmake make gcc g++ flex libfl-dev bison libpcap-dev libssl-dev python3 python3-dev swig zlib1g-dev
```

### Download and install Zeek
    - Download latest version from github
 
```bash
git clone --recursive https://github.com/zeek/zeek

cd zeek /
./configure
make
make install
```

#### Other method of installing

```bash
echo 'deb http://download.opensuse.org/repositories/security:/zeek/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/security:zeek.list

curl -fsSL https://download.opensuse.org/repositories/security:zeek/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/security_zeek.gpg > /dev/null

sudo apt update

sudo apt install zeek-lts
```

### Enable the zeek module:
```bash
sudo filebeat modules enable zeek
```

### Add Zeek log path to zeek.yml:
#### Navigate to this directory: 
      - and add this configuration
```bash
/etc/filebeat/modules.d/zeek.yml
```

### restart the filebeat:
```bash
sudo systemctl restart filebeat
```

### Then navigate to this directory:
```bash
/usr/local/zeek/share/zeek/site/local.zeek
```

### Add the following line at the end of the configuration file:
```yaml
@load policy/tuning/json-logs.zeek
```

### navigate to bin folder of /etc and find the node.cnf
#### change the ip address and the network adpater


#### Navigate to bin directory of zeek:
```bash
sudo zeekctl deploy 
sudo zeekctl stop 
sudo zeekctl status
```