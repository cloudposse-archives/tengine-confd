/bin/echo -e "POST /containers/${NGINX_NAME}/kill?signal=HUP HTTP/1.0\r\n" | tee -a /var/log/confd.log | nc -U /var/run/docker.sock | tee -a /var/log/confd.log
/usr/bin/find /etc/nginx -type f -name '.nginx*' -delete;
