# Kibana configuration

#### Open the file /etc/kibana/kibana.yml and uncomment the following lines:
```yaml
server.port: 5601
```

#### you can also run on private ip or 0.0.0.0, insted of localhost
```yaml
server.host: "localhost"
```

```yaml
elasticsearch.hosts: ["http://localhost:9200"]
```
#### Save and exit.


#### Enable and start the Kibana service in systemd:
```bash
systemctl enable kibana.service
systemctl start kibana.service
```

#### Check the kibana status by:
```bash
systemctl status kibana.service
```

#### if service is running then you can access your kibana dashboard by http://YOUR-IP:5601

#### Or refer to kibana.yml for configuration
