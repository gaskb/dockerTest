#!/bin/bash

mkdir /tmp/NGINX
mkdir /tmp/NGINX/1.8

cd /tmp/NGINX

wget http://nginx.org/download/nginx-1.8.0.tar.gz

tar xvfz nginx-1.8.0.tar.gz

git clone https://github.com/nginx-shib/nginx-http-shibboleth.git

git clone https://github.com/openresty/headers-more-nginx-module.git

cd nginx-1.8.0
./configure --with-debug --add-module=/tmp/NGINX/nginx-http-shibboleth --with-ipv6 --with-http_ssl_module --add-module=/tmp/NGINX/headers-more-nginx-module --with-http_auth_request_module

make

make install


ln -s /usr/local/nginx/sbin/nginx /usr/local/sbin/nginx
