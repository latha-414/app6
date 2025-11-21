FROM nginx:alpine
LABEL app="TEST"
COPY index.html /usr/share/nginx/html/index.html
ENV NGINX_PORT=3000
EXPOSE 3000
RUN echo 'server { listen 3000; location / { root /usr/share/nginx/html; try_files $uri $uri/ /index.html; } }' > /etc/nginx/conf.d/default.conf
