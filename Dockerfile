FROM ubuntu:14.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git gcc wget libpcre3 libpcre3-dev libssl-dev build-essential php5 htop php5-fpm
COPY scripts /tmp/scripts

RUN chmod 744 /tmp/scripts -R

RUN /tmp/scripts/nginx.sh


# Create index.html
RUN echo 'Hello Docker from NGINX' > /usr/local/nginx/html/index.html

EXPOSE 80 443
#CMD ["/bin/bash"]
CMD ["nginx", "-g", "daemon off;"]
