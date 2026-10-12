FROM nginx:alpine
COPY . /usr/share/nginx/html
CMD echo "server { listen $PORT; location / { root /usr/share/nginx/html; index index.html; } }" > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
