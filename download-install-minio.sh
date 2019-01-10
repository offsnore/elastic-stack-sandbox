# Minio
cd
cd ~/workspace/elastic-stack/
wget https://dl.minio.io/server/minio/release/darwin-amd64/minio
chmod +x minio


cd ..
sudo mkdir /var/run/filebeat/
sudo chown -Rf andrew:staff /var/run/filebeat

# Minio
cd
cd ~/workspace/tesla-stack/
wget https://dl.minio.io/server/minio/release/darwin-amd64/minio
chmod +x minio
# to-run
# ./minio server /data/minio
