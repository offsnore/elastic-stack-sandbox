# Elastic Stack aliases, environment variables, and symlinks created along the way to make things easier.

# Edit Configs, Directory Manipulation, tailing logs, process check

alias vilogstashconf="vi ~/workspace/elastic-stack/current/logstash/config/logstash-current.conf"
alias startlogstash="~/workspace/tesla-stack/ingest-ops/start-logstash.sh"
export LOGSTASH_CONF=/Users/andrew/workspace/tesla-stack/logstash-configs
alias taillogstash="tail -F ~/workspace/tesla-stack/logs/logstash/logstash.out"
alias tailelasticsearch="tail -F ~/workspace/tesla-stack/logs/elasticsearch/*.log"
alias tailkibana="tail -F ~/workspace/tesla-stack/logs/kibana/kibana.out"
export STACK_DIR="~/workspace/tesla-stack/"
alias pselastic="ps -ef | grep elasticsearch"
alias pskibana="ps -ef | grep kibana"
alias pslogstash="ps -ef | grep logstash"
export ES_STACK_VERSION=6.5.2
alias psfilebeat="ps -ef | grep filebeat"
alias dc="cd $1"
export FILEBEAT_CONFIG_CURRENT="~/workspace/tesla-stack/filebeat-configs/filebeat-current.yml"
alias tailelasticsearch=' tail -F /var/log/elasticsearch/node*/elasticsearch.log'


# ES HOST env variables and status API calls
export ES_HOST="localhost"
export ES_PORT="9200"
alias cathealth="curl '${ES_HOST}:${ES_PORT}/_cluster/health?pretty'"
alias catnodes="curl '${ES_HOST}:${ES_PORT}/_cat/nodes?v'"
alias jvmstats="curl '${ES_HOST}:${ES_PORT}/_nodes/stats/jvm?pretty'"


export FILEBEAT_LOG_DIR=~/workspace/tesla-stack/logs/filebeat
export FILEBEAT_CONFIG_DIR=~/workspace/tesla-stack/filebeat-configs
alias tailfilebeat="tail -F ~/workspace/tesla-stack/logs/filebeat/filebeat.out"
export LOGSTASH_CONFIG_DIR="~/workspace/tesla-stack/logstash-configs"
export LOGSTASH_LOG_DIR="~/worksace/tesla-stack/logs/logstash"

# Aliases to start, stop, and check processes in the stack

alias stopescluster="~/workspace/tesla-stack/dev-ops/stop-es-cluster.sh"
alias stoplogstash="~/workspace/tesla-stack/ingest-ops/stop-logstash.sh"
alias stopescluster="~/workspace/tesla-stack/dev-ops/stop-es-cluster.sh"
alias startescluster="~/workspace/tesla-stack/dev-ops/start-es-cluster.sh"
alias startelasticsearch="~/workspace/tesla-stack/dev-ops/start-es-cluster.sh"
alias checkespids="ls -al /var/run/elasticsearch/pid*"
alias checkelasticsearchpids="ls -al /var/run/elasticsearch/pid*"
alias checklspids="ls -al /var/run/logstash/pid*"
alias checklogstashpids="ls -al /var/run/logstash/pid*"
alias checkfbpids="ls -al /var/run/filebeat/pid*"
alias checkfilebeatpids="ls -al /var/run/filebeat/pid*"



# Miscellaneous - Minio, Logstash
alias vilogstash="vi ~/workspace/tesla-stack/logstash-configs/logstash-current.conf"
alias psminio="ps -ef | grep minio"
export MINIO_DATA_DIR="/data/data_drive/minio"
export MINIO_LOGS_DIR="/data/data_drive/logs/minio"
export LOGSTASH_CONFIG_FILE="logstash-quickpivot.conf"
alias checklogstashconfig="~/workspace/elastic-stack/current/logstash/bin/logstash -t"
alias checklogstashqueuesize="du -sh ~/workspace/elastic-stack/current/logstash/data"
export LOGSTASH_QUEUE_DATA_DIR="~/workspace/elastic-stack/current/logstash/data"
export LOGSTASH_DIR="~/workspace/elastic-stack/current/logstash"
alias catindices="curl $ES_HOST:$ES_PORT/_cat/indices"
alias tailelasticsearchdatadrive=' tail -F /var/log/elasticsearch/data_drive-node*/elasticsearch.log'
#export ES_STACK_VERSION=6.6.0
export ES_STACK_VERSION=$ES_STACK_VERSION
alias setcurrent='ln -s $ES_STACK_VERSION current'
alias setcurrent='ln -s $ES_STACK_VERSION ~/workspace/elastic-stack/current'
alias catnodes='curl  '\''localhost:9200/_cat/nodes?v'\'
