sysbench /usr/share/sysbench/bulk_insert.lua \
--mysql-socket=/disk1/mysql/mysql.sock \
--mysql-user=$user \
--mysql-password=$password \
--mysql-db=$database \
--percentile=100 \
--mysql_storage_engine=$engine \
run

