FROM alpine:3.16.2

RUN apk update && apk upgrade && apk add mariadb-client mariadb-server-utils mariadb mariadb-common
COPY conf/my.cnf /etc/mysql/my.cnf
COPY conf/my.cnf /etc/my.cnf
COPY conf/my.cnf /var/lib/mysql/my.cnf

RUN			mkdir -p /run/mysqld
RUN			mkdir -p /var/lib/mysql
RUN         mkfifo /run/mysqld/mysqld.sock
RUN			chown -R 'mysql' /run/mysqld
RUN			chown -R 'mysql' /var/lib/mysql
# RUN         chmod 777 /run/mysqld/mysqld.sock
# RUN         chmod 777 /var/lib/mysql
# WORKDIR .
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql


COPY run.sh .
EXPOSE 3306
USER mysql
CMD ["/bin/sh", "run.sh"]
# CMD ["/bin/sh"]

# sudo mkdir /var/run/mysqld
# sudo mkfifo /var/run/mysqld/mysqld.sock
# sudo chown -R mysql /var/run/mysqld