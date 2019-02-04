#!/bin/bash
# Elastic Stack install script

source ~/workspace/tesla-stack/dev-ops/cluster-vars.source
echo "OS: $OS"
echo "BUILD: $BUILD"
cd 
#TODO set environment variable ELASTIC_INSTALL_DIR

ELASTIC_STACK_DIR=~/workspace/elastic-stack
echo $ELASTIC_STACK_DIR
cd $ELASTIC_STACK_DIR


#cd ~/workspace/elastic-stack

if [ ! -f stack-download-$ES_STACK_VERSION  ]; then
       mkdir stack-download-$ES_STACK_VERSION
fi
cd stack-download-$ES_STACK_VERSION

wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-${ES_STACK_VERSION}.tar.gz

# Kibana
wget https://artifacts.elastic.co/downloads/kibana/kibana-${ES_STACK_VERSION}-$OS-$BUILD.tar.gz
#tar xvfz kibana-${ES_STACK_VERSION}-$OS-$BUILD.tar.gz
#ln -s kibana-${ES_STACK_VERSION}-$OS-$BUILD kibana

# Logstash
# Check if already exists/downloaded, don't wget if so

wget https://artifacts.elastic.co/downloads/logstash/logstash-${ES_STACK_VERSION}.tar.gz

# Beats
# Filebeat
wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${ES_STACK_VERSION}-$OS-$BUILD.tar.gz

# Packetbeat
wget https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-${ES_STACK_VERSION}-$OS-$BUILD.tar.gz

# Metricbeat

wget https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-${ES_STACK_VERSION}-$OS-$BUILD.tar.gz

# Heartbeat
wget https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-${ES_STACK_VERSION}-$OS-$BUILD.tar.gz

# Auditbeat
wget https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-${ES_STACK_VERSION}-$OS-$BUILD.tar.gz

# Functionbeat
wget https://artifacts.elastic.co/downloads/beats/x-pack/functionbeat/functionbeat-${ES_STACK_VERSION}-$OS-$BUILD.tar.gz

# Journalbeat 
if [ "$OS" = "linux" ]; then
  wget https://artifacts.elastic.co/downloads/beats/journalbeat/journalbeat-${ES_STACK_VERSION}-$OS-$BUILD.tar.gz
fi
