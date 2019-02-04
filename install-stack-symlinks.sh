#!/bin/bash

~/workspace/elastic-stack/clear-symlinks.sh

cd

#TODO Prompt for ES_STACK_VERSION if not set
if [ ! -z $1 ]; then
  ES_STACK_VERSION=$1
fi
if [ -z "$ES_STACK_VERSION" ]; then
  read -p  "Enter stack version (latest from http://elastic.co/downloads): " ES_STACK_VERSION
fi
echo ES Stack version to install: $ES_STACK_VERSION
OS=linux
BUILD=x86_64
cd ~/workspace/elastic-stack/stack-download-$ES_STACK_VERSION

# Ceate Symlinks
ln -s kibana-${ES_STACK_VERSION}-$OS-$BUILD kibana
ln -s elasticsearch-${ES_STACK_VERSION} elasticsearch
ln -s logstash-${ES_STACK_VERSION} logstash
ln -s filebeat-${ES_STACK_VERSION}-$OS-$BUILD filebeat
ln -s metricbeat-${ES_STACK_VERSION}-$OS-$BUILD metricbeat
ln -s packetbeat-${ES_STACK_VERSION}-$OS-$BUILD packetbeat
ln -s auditbeat-${ES_STACK_VERSION}-$OS-$BUILD auditbeat
ln -s heartbeat-${ES_STACK_VERSION}-$OS-$BUILD heartbeat
ln -s journalbeat-${ES_STACK_VERSION}-$OS-$BUILD journalbeat

cd ..

# Remove `current` symlink
rm current
# Move stack downloaded to the verion folder
#mv stack-download stack-download-$ES_STACK_VERSION
# Create new `current` symlink
ln -s stack-download-$ES_STACK_VERSION current
