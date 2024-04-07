# Heartbeat configuration 

### Install heartbeat :

```bash
sudo apt-get update && sudo apt-get install heartbeat-elastic
```

#### Configure heartbeat monitors
```yaml
heartbeat.monitors:
- type: icmp
  schedule: '*/5 * * * * * *' 
  hosts: ["myhost"]
  id: my-icmp-service
  name: My ICMP Service
- type: tcp
  schedule: '@every 5s' 
  hosts: ["myhost:12345"]
  mode: any 
  id: my-tcp-service
- type: http
  schedule: '@every 5s'
  urls: ["http://example.net"]
  service.name: apm-service-name 
  id: my-http-service
  name: My HTTP Service
```

#### Setup-assets:

```bash
./heartbeat setup -e
```

#### Start Heartbeat:
```bash
sudo service heartbeat-elastic start
```

#### Enable heartbeat on boot:
```bash
sudo systemctl enable heartbeat-elastic
```

#### Check your data in kibana