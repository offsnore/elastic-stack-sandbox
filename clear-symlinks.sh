# Script to clear directory of Elastic Stack symlinks..

echo "Removing stack symlinks.."
cd
cd ~/workspace/elastic-stack/stack-download-$ES_STACK_VERSION
rm -f elasticsearch
rm -f logstash
rm -f kibana
rm -f filebeat
rm -f auditbeat
rm -f heartbeat
rm -f journalbeat
rm -f metricbeat
rm -f packetbeat
cd ..
rm -f current
echo "Finished removing symlnks: `ls -al`"
