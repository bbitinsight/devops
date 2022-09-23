sudo apt update
sudo apt install nginx
cd /var/www
if [ ! -d "tutorial" ]; then
     sudo mkdir tutorial
fi     
cd tutorial

sudo dd of=index.html << EOF
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Hello, Nginx!</title>
</head>
<body>
    <h1>Hello, Nginx!</h1>
    <p>We have just configured our Nginx web server on Ubuntu Server!</p>
</body>
</html>
EOF

cd /etc/nginx/sites-enabled
sudo dd of=tutorial << EOF
server {
       listen 81;
       listen [::]:81;

       server_name example.ubuntu.com;

       root /var/www/tutorial;
       index index.html;

       location / {
               try_files $uri $uri/ =404;
       }
}
EOF
sudo service nginx restart