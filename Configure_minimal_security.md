# configure X-pack security

### 1. stop kibana and elasticsearch

  ```bash
  sudo systemctl stop elasticsearch && sudo systemctl stop kibana
  ```


### 2. enable xpack in elasticsearch.yml

  ```bash
  vi /etc/elasticsearch/elasticsearch.yml
  ```
  ```yaml
  xpack.security.enabled: true
  ```

### 3. setup default password

  ```bash
  cd /usr/share/elasticsearch/bin
  ./elasticsearch-setup-password auto
  ```
 
  
  
## system passwords

```bash
Changed password for user apm_system
PASSWORD apm_system = HfFSClmzjp2BTyyn4lqY

Changed password for user kibana_system
PASSWORD kibana_system = BUOaY103gv21upDD229y

Changed password for user kibana
PASSWORD kibana = BUOaY103gv21upDD229y

Changed password for user logstash_system
PASSWORD logstash_system = EuXRtswGs5n0y1wu8KnG

Changed password for user beats_system
PASSWORD beats_system = oSwEA0njXoL6tLsCA0GC

Changed password for user remote_monitoring_user
PASSWORD remote_monitoring_user = QY5m0Du5kiQQUzMF0LdB

Changed password for user elastic
PASSWORD elastic = FtDTdv3ujVCYK5Eb2TZk
```

### 4. configure kibana.yml

```yaml
  Elasticsearch authentication
  elasticsearch.username: "kibana"
  elasticsearch.password: "FtDTdv3ujVCYK5Eb2TZk"
  ```

### Login through the credential and create the admin with superuser role