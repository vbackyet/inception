FROM alpine:3.16.2

RUN apk update && apk upgrade && apk add mariadb-client mariadb-server-utils

# apk update && apk upgrade && apk add mariadb-client
WORKDIR .
# COPY <src-path> <destination-path>
COPY run.sh .
EXPOSE 3306
CMD ["/bin/sh", "run.sh"]