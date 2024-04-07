# Filebeat configuration
```bash
vi /etc/filebeat/filebeat.yml
```

#### Search for output.elasticsearch and comment-out the lines as follows:
```yaml
[...]
output.elasticsearch:
  # Array of hosts to connect to.
  hosts: ["YOUR-IP:9200"]
[...]
```


#### Enable the system plugin to handle generic system log files with Filebeat. Enable the plugin:
```bash
filebeat modules enable system
```


#### Check the filebeat configuration by:
```bash
filebeat test config 
```

##### or

#### First you have to move to this directory: /usr/share/filebeat/bin

##### for Test config:

```bash 
./filebeat test config -c /etc/filebeat/filebeat.yml --path.home /usr/share/filebeat/ --path.data /var/lib/filebeat/
```


##### for Test output:

```bash 
./filebeat test output -c /etc/filebeat/filebeat.yml --path.home /usr/share/filebeat/ --path.data /var/lib/filebeat/
```

##### for Setup:

```bash 
./filebeat setup -c /etc/filebeat/filebeat.yml --path.home /usr/share/filebeat/ --path.data /var/lib/filebeat/
```


##### Then start the filebeat:
```bash
systemctl start filebeat
systemctl stop filebeat
systemctl restart filebeat
systemctl status filebeat
```