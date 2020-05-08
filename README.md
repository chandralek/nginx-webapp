Jenkinsfile# Nginx Web Service for Robo Shop Frontend

1. Install Nginx 

```
# yum install nginx -y 
```

2. Clone the repository 

**Use Git Clone** 

Following settings needs to be used while cloning.

User -> `root`

Directory -> `/root`

3. Copy the config.

```
# cp /root/nginx-webapp/nginx-localhost.conf /etc/nginx/nginx.conf 
```

4. Copy the html content.

```
# rm -rf /usr/share/nginx/html
# cp -r /root/nginx-webapp/static /usr/share/nginx/html
```

5. Start the service

```
# systemctl enable nginx 
# systemctl start nginx 
```
