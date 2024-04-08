⚠️ **Important Notice:** 
> This repository is no longer actively maintained and may contain outdated versions and configurations. While the provided documentation and configuration files may still serve as valuable references, it is recommended to verify compatibility with the latest versions of Elasticsearch, Kibana, Beats modules, and Zeek before proceeding with any implementations.

# LogOps-Toolkit

This repository contains configurations and guides for setting up Elasticsearch, Kibana, Beats modules, Zeek, and automated installation scripts.

## Table of Contents

- [Installation](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/elk_installation.md)
- Configuration
  - [Elasticsearch](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Elasticsearch/elasticsearch%20configuration.md)
  - [Kibana](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Kibana/kibana%20configuration.md)
  - [Beats Modules](https://github.com/5yn1x08/LogOps-Toolkit/tree/main/Beats)
  - [Custom Index Configuration](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Custom_index.md)
  - [Minimal Security](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Configure_minimal_security.md)
  - [Zeek](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Zeek/Integrating%20Zeek%20with%20ELK%20Stack.md)
- [Automated Installation Script](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/elasticInstaller.sh)

## Introduction

Welcome to our comprehensive repository designed to streamline the setup and configuration of Elasticsearch, Kibana, Beats modules, and Zeek, along with an automated installation script for seamless deployment.

Managing and analyzing large volumes of data efficiently is crucial for modern businesses and organizations. Elasticsearch and Kibana serve as powerful tools for storing, searching, and visualizing this data, while Beats modules enable the collection of various types of operational data. Additionally, Zeek (formerly known as Bro) provides network security monitoring capabilities, enhancing overall system security.

This project aims to simplify the deployment and configuration process for these essential components by providing clear documentation, configuration files, and an automated installation script. Whether you're setting up a new environment or optimizing an existing one, our repository offers a step-by-step guide and pre-configured files to accelerate your workflow.

Through detailed explanations, best practices, and customizable options such as custom index configurations and minimal security settings, we strive to empower users to tailor their setups according to their specific needs. Additionally, our automated installation script eliminates manual installation steps, reducing the time and effort required to get your environment up and running.

## Installation

Step-by-step guide on how to install the required components.

1. [Install Elasticsearch](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Elasticsearch/elasticsearch%20configuration.md)
2. [Install Kibana](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Kibana/kibana%20configuration.md)
3. [Install Beats](https://github.com/5yn1x08/LogOps-Toolkit/tree/main/Beats)
4. [Install Zeek](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Zeek/Integrating%20Zeek%20with%20ELK%20Stack.md)

## Configuration

### Elasticsearch

Explanation of Elasticsearch configuration and its setup.

- [Elasticsearch](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Elasticsearch/elasticsearch%20configuration.md) - Explanation of key configurations.
- [custom-index-template](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Custom_index.md) - Custom index template setup.

### Kibana

Explanation of Kibana configuration and its setup.

- [kibana.yml](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Kibana/kibana%20configuration.md) - Explanation of key configurations.

### Beats Modules

Explanation of Beats modules configuration.

- [Filebeat](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Beats/Filebeat/filebeat%20configuration.md) - Explanation of Filebeat configurations.
- [Metricbeat](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Beats/Metricbeat/metricbeat%20configuration.md) - Explanation of Metricbeat configurations.
- [Packetbeat](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Beats/Packetbeat/Configure%20packetbeat.md) - Explanation of Packetbeat configurations.
- [Auditbeat](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Beats/Auditbeat/configure%20auditbeat.md) - Explanation of Packetbeat configurations.
- [winlogbeat](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Beats/Winlogbeat/winlogbeat_configuration.md) - Explanation of Packetbeat configurations.
- [Heartbeat](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Beats/Heartbeat/configure%20heartbeat.md) - Explanation of Packetbeat configurations.
  
### Custom Index Configuration

Explanation of setting up a custom index in Elasticsearch.

- [custom-index-configuration.md](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Custom_index.md) - Guide on creating and configuring a custom index.

### Minimal Security

Guide on configuring minimal security measures.

- [security-setup.md](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Configure_minimal_security.md) - Explanation of minimal security configurations.

### Zeek

Explanation of Zeek configuration.

- [zeek](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/Zeek/Integrating%20Zeek%20with%20ELK%20Stack.md) - Zeek configuration files and explanations.

## Automated Installation Script

A automated shellscript for installing and managing the services of all components

- [elasticInstaller.sh](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/elasticInstaller.sh) - Shell script for automated installation of all components.
- [serviceManager.sh](https://github.com/5yn1x08/LogOps-Toolkit/blob/main/serviceManager.sh) - Shell script for managing all the components and its services.
