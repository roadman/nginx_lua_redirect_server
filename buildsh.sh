#!/bin/sh
cd nginx
make clean
git checkout v1.5.10
./configure \
  --user=nginx \
  --prefix=/usr/local/ngx_http_rd \
  --error-log-path=/var/log/nginx_rd/error.log \
  --http-log-path=/var/log/nginx_rd/access.log \
  --pid-path=/var/run/nginx_rd.pid \
  --lock-path=/var/lock/nginx_rd.lock \
  --with-cc-opt="-I /usr/include/pcre -g" \
  --with-debug \
  --with-http_ssl_module \
  --with-http_realip_module \
  --with-http_stub_status_module \
  --add-module=../modules/lua-nginx-module
make

