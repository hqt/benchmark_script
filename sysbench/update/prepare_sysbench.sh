mysql -uroot -Dbm -e 'drop table sbtest1';

sysbench /usr/share/sysbench/oltp_update_non_index.lua \
--mysql-socket=/disk1/mysql/mysql.sock \
--mysql-user=root \
--mysql-password= \
--mysql-db=bm \
--create_secondary=off \
--mysql_storage_engine=innodb \
prepare
