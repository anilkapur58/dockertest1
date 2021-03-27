FROM nginx:latest 
MAINTAINER anilkapur58@gmail.com 
RUN apt install -y curl
COPY index.html /var/www/html/index.nginx-debian.html
COPY index.html /usr/share/nginx/html/index.html
COPY scorekeeper.js /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
#HEALTHCHECK CMD curl --fail http://localhost || exit 1
CMD ["nginx", "-g", "daemon off;"]
