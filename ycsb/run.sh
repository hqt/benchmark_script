file=$(date +%F_%I)

$YCSB_HOME/bin/ycsb run jdbc -P config.properties \
-s -threads 20 >> ${file}-status
