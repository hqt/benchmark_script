mysql -uroot -Dbm -e 'drop table sbtest1';

sysbench /usr/share/sysbench/bulk_insert.lua \
--mysql-socket=/disk1/mysql/mysql.sock \
--mysql-user=$user \
--mysql-password=$password \
--mysql-db=$database \
--create_secondary=off \
--mysql_storage_engine=$engine \
prepare
