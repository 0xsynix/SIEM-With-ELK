# Custom Index :

### filebeat.yml conf:
```yaml
output.elasticsearch:
  # Array of hosts to connect to.
  hosts: ["localhost:9200"]
  index: "custom-index"
setup.template.name: "custom-index"
setup.template.pattern: "custom-index-*"
setup.ilm.enabled: false
```

#### Check indicies:
```bash
curl -XGET 'SERVER IP/_cat/indices?pretty'
```