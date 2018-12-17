#!/bin/bash

cd
cd ~/workspace/elastic-stack/stack-download

# Ceate Symlinks
ln -s kibana-${ES_STACK_VERSION}-darwin-x86_64 kibana
ln -s elasticsearch-${ES_STACK_VERSION} elasticsearch
ln -s logstash-${ES_STACK_VERSION} logstash
ln -s filebeat-${ES_STACK_VERSION}-darwin-x86_64 filebeat
ln -s metricbeat-${ES_STACK_VERSION}-darwin-x86_64 metricbeat
ln -s packetbeat-${ES_STACK_VERSION}-darwin-x86_64 packetbeat
ln -s auditbeat-${ES_STACK_VERSION}-darwin-x86_64 auditbeat
ln -s heartbeat-${ES_STACK_VERSION} heartbeat
ln -s journalbeat-${ES_STACK_VERSION}-linux-x86_64 journalbeat

cd ..

# Remove `current` symlink
rm current
# Move stack downloaded to the verion folder
mv stack-download $ES_STACK_VERSION
# Create new `current` symlink
ln -s $ES_STACK_VERSION current
