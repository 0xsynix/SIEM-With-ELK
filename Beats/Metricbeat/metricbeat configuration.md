# metricbeat configuration

#### For configure metricbeat follow this steps:


##### Search for output.elasticsearch and comment-out the lines as follows:
```yaml
[...]
output.elasticsearch:
  # Array of hosts to connect to.
  hosts: ["YOUR-IP:9200"]
[...]
```

#### or change any other config according to your need!

#### After that start metricbeat :
```bash
systemctl start metricbeat
systemctl stop metricbeat
systemctl restart metricbeat
systemctl status metricbeat
```