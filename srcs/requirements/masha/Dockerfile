FROM alpine:3.16.2

ARG MARIADB_DATABASE \
    MARIADB_USER \
    MARIADB_PASSWORD \
    MARIADB_ROOT_PASSWORD

RUN apk update && apk upgrade && apk add mariadb-client mariadb-server-utils mariadb mariadb-common
COPY conf/my.cnf /etc/mysql/my.cnf
COPY conf/my.cnf /etc/my.cnf
COPY conf/my.cnf /var/lib/mysql/my.cnf

RUN			mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld
RUN			mkdir -p /var/lib/mysql && chown -R mysql:mysql /var/lib/mysql
RUN         chmod 777 /var/lib/

WORKDIR .
COPY run.sh .
EXPOSE 3306
CMD ["/bin/sh", "run.sh"]