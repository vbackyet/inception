# FROM alpine:3.16

# ARG MARIADB_DATABASE \
#     MARIADB_USER \
#     MARIADB_PASSWORD \
#     MARIADB_ROOT_PASSWORD

# RUN apk update && apk add --no-cache mariadb mariadb-client

# RUN mkdir /var/run/mysqld; \
#     chmod 777 /var/run/mysqld; \
#     { echo '[mysqld]'; \
#     echo 'user = mysql'; \
#     echo 'datadir = /var/lib/mysql'; \
#     echo 'socket = /run/mysqld/mysqld.sock'; \
#       echo 'skip-host-cache'; \
#       echo 'skip-name-resolve'; \
#       echo 'bind-address=0.0.0.0'; \
#     } | tee  /etc/my.cnf.d/docker.cnf; \
#     sed -i "s|skip-networking|skip-networking=0|g" \
#       /etc/my.cnf.d/mariadb-server.cnf

# RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

# EXPOSE 3306

# COPY run.sh .
# RUN sh run.sh && rm run.sh
# USER mysql
# CMD ["/usr/bin/mysqld", "--skip-log-error"]




FROM alpine:3.16.2

ARG MARIADB_DATABASE \
    MARIADB_USER \
    MARIADB_PASSWORD \
    MARIADB_ROOT_PASSWORD

RUN apk update && apk upgrade && apk add mariadb-client mariadb-server-utils mariadb mariadb-common
COPY conf/my.cnf /etc/mysql/my.cnf
COPY conf/my.cnf /etc/my.cnf
COPY conf/my.cnf /var/lib/mysql/my.cnf

RUN			mkdir -p /run/mysqld
RUN			mkdir -p /var/lib/mysql
RUN         mkfifo /run/mysqld/mysqld.sock
RUN			chown -R 'mysql' /run/mysqld
RUN			chown -R 'mysql' /var/lib/mysql
RUN         chmod 777 /run/mysqld/mysqld.sock
RUN         chmod 777 /var/lib/mysql
WORKDIR .
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql
COPY run.sh .
EXPOSE 3306
USER mysql
CMD ["/bin/sh", "run.sh"]