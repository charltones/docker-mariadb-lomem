FROM mariadb
# Change the innodb-buffer-pool-size to 64M (default is 256M).
# This should make it friendlier to run on low memory servers.
RUN sed -i -e 's/^innodb_buffer_pool_size\s*=.*/innodb_buffer_pool_size = 64M/' /etc/mysql/my.cnf
