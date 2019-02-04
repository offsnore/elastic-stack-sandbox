# Script to clear directory of Elastic Stack symlinks..

echo "Removing stack symlinks.."
cd
cd ~/workspace/elastic-stack/stack-download
rm -f elasticsearch
rm -f logstash
rm -f kibana
rm -f filebeat
rm -f auditbeat
rm -f journalbeat
rm -f metricbeat
rm -f packetbeat
echo "Finished removing symlnks: `ls -al`"
