FROM alpine:3.16.2

RUN	apk update && apk upgrade && apk add --no-cache nginx

COPY tools/nginx.conf /etc/nginx/http.d/nginx.conf
COPY tools/vbackyet.42.fr.crt /etc/nginx/ssl/vbackyet.42.fr.crt
COPY tools/vbackyet.42.fr.key /etc/nginx/ssl/vbackyet.42.fr.key

EXPOSE 80
CMD [ "nginx" , "-g" , "daemon off;" ]