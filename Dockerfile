FROM   centos:7
RUN    yum install epel-release -y
RUN    yum install nginx gettext -y
RUN    rm -rf /usr/share/nginx/html
COPY   static /usr/share/nginx/html
COPY   nginx-kube.conf  /tmp
COPY   run.sh /
RUN    chmod +x run.sh
CMD    sh run.sh
EXPOSE 80