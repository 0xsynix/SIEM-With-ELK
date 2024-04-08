# packetbeat configuration

#### For configure packetbeat follow this steps:


##### Search for output.elasticsearch and comment-out the lines as follows:
```yaml
[...]
output.elasticsearch:
  #Array of hosts to connect to.
  hosts: ["YOUR-IP:9200"]
[...]
```

#### or change any other config. according to your need!

#### After that start packetbeat:
```bash
systemctl start packetbeat
systemctl stop packetbeat
systemctl restart packetbeat
systemctl status packetbeat
```