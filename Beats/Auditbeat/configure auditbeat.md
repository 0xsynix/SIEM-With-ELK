# Auditbeat configuration

#### For configure auditbeat follow this steps:


#### Search for output.elasticsearch and comment-out the lines as follows:
```yaml
[...]
output.elasticsearch:
  # Array of hosts to connect to.
  hosts: ["YOUR-IP:9200"]
[...]
```

#### or change any other config. according to your need!

##### After that start auditbeat:
```bash
systemctl start auditbeat
systemctl stop auditbeat
systemctl restart auditbeat
systemctl status auditbeat
```
