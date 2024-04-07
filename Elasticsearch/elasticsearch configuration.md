#Change the following settings 

Uncomment and edit the following lines in the /etc/elasticsearch/elasticsearch.yml file to reflect the example below. 
#This will limit the Elasticsearch connection to localhost.
network.host: 127.0.0.1 

#or you can access without proxy pass or nginx
network.host: 0.0.0.0

#or can use your private ip
network.host: 192.168.XXX.XXX

http.port:9200


Run the following command to verify whether Elasticsearch is running:
curl -X GET "YOUR-IP:9200"


The output should be similar to this example:
{
  "name" : "elastic-stack",
  "cluster_name" : "elasticsearch",
  "cluster_uuid" : "LiIyk5P1TMuR6MqOWcs_DQ",
  "version" : {
    "number" : "7.8.0",
    "build_flavor" : "default",
    "build_type" : "deb",
    "build_hash" : "757314695644ea9a1dc2fecd26d1a43856725e65",
    "build_date" : "2020-06-14T19:35:50.234439Z",
    "build_snapshot" : false,
    "lucene_version" : "8.5.1",
    "minimum_wire_compatibility_version" : "6.8.0",
    "minimum_index_compatibility_version" : "6.0.0-beta1"
  },
  "tagline" : "You Know, for Search"
}

Start the elasticsearch:
systemctl start elasticsearch
systemctl stop elasticsearch
systemctl status elasticsearch
systemctl restart elasticsearch

###########################################################  With Nginx Proxy-Pass  ##################################################################

Install nginx as a proxy to Kibana:
apt install -y nginx


Use OpenSSL to create a user and password for the Elastic Stack interface. This command 
generates a htpasswd file, containing the user kibana and a password you are prompted to create.
echo "kibana:`openssl passwd -apr1`" | tee -a /etc/nginx/htpasswd.users


Edit the /etc/nginx/sites-available/elastic.local file and paste the following content to create a proxy to Kibana.
 Important:

Replace elastic.local with the domain name of your Instance:

    server {
      listen 80;
      server_name elastic.local;

      auth_basic "Restricted Access";
      auth_basic_user_file /etc/nginx/htpasswd.users;

      location / {
        proxy_pass         http://localhost:5601;
        proxy_redirect     off;

        proxy_set_header   Host              $host;
        proxy_set_header   X-Forwarded-For   $proxy_add_x_forwarded_for;
        proxy_set_header   X-Forwarded-Proto $scheme;
      }

    }


Create a symbolic link to enable the site in nginx:
ln -s /etc/nginx/sites-available/elastic.local /etc/nginx/sites-enabled/elastic.local


Reload the nginx configuration to activate the proxy: 
systemctl restart nginx

You can now access your Elastic Dashboard using your domain name, for example http://elastic.local:


##############################################################################################################################################

Or you can just refer to the config file that i attached!
