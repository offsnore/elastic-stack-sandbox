#!/bin/bash
# Elastic Stack install script

cd 
#TODO set environment variable ELASTIC_INSTALL_DIR
ELASTIC_STACK_DIR=~/workspace/elastic-stack
echo $ELASTIC_STACK_DIR
cd $ELASTIC_STACK_DIR

#cd ~/workspace/elastic-stack

if [ ! -f stack-download  ]; then
       mkdir stack-download
fi
cd stack-download

wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-${ES_STACK_VERSION}.tar.gz

# Kibana
wget https://artifacts.elastic.co/downloads/kibana/kibana-${ES_STACK_VERSION}-darwin-x86_64.tar.gz
#tar xvfz kibana-${ES_STACK_VERSION}-darwin-x86_64.tar.gz
#ln -s kibana-${ES_STACK_VERSION}-darwin-x86_64 kibana

# Logstash
# Check if already exists/downloaded, don't wget if so
wget https://artifacts.elastic.co/downloads/logstash/logstash-${ES_STACK_VERSION}.tar.gz

# Beats
# Filebeat
wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${ES_STACK_VERSION}-darwin-x86_64.tar.gz

# Packetbeat
wget https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-${ES_STACK_VERSION}-darwin-x86_64.tar.gz

# Metricbeat

wget https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-${ES_STACK_VERSION}-darwin-x86_64.tar.gz

# Heartbeat
wget https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-${ES_STACK_VERSION}-darwin-x86_64.tar.gz

# Auditbeat
wget https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-${ES_STACK_VERSION}-darwin-x86_64.tar.gz

# Functionbeat
wget https://artifacts.elastic.co/downloads/beats/x-pack/functionbeat/functionbeat-${ES_STACK_VERSION}-darwin-x86_64.tar.gz

# Journalbeat 
if [ "$OS" = "linux" ]; then
  wget https://artifacts.elastic.co/downloads/beats/journalbeat/journalbeat-${ES_STACK_VERSION}-linux-x86_64.tar.gz
fi
