sysbench /usr/share/sysbench/oltp_write_only.lua \
--threads=$threads \
--mysql-socket=/disk1/mysql/mysql.sock \
--mysql-user=$user \
--mysql-password=$password \
--mysql-db=$database \
--mysql_storage_engine=$engine \
--percentile=99 \
--tables=1 \
--range_selects=off \
--table_size=100000 \
--sum_ranges=0 \
--simple_ranges=0 \
--point_selects=0 \
--non_index_updates=0 \
--index_updates=0 \
--distinct_ranges=0 \
--delete_inserts=1 \
run

