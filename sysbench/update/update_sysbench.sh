sysbench /usr/share/sysbench/oltp_update_non_index.lua \
--mysql-socket=/disk1/mysql/mysql.sock \
--mysql-user=root \
--mysql-password= \
--mysql-db=bm \
--percentile=100 \
--mysql_storage_engine=innodb \
run

