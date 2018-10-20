#FROM nginx
FROM ubuntu:16.04


# Update packages
RUN apt-get update -y

# Install Python Setuptools
RUN  apt-get install -y net-tools vim nginx

# Bundle app source
COPY src /var/www/sites/ 
COPY nginx.conf /etc/nginx/
COPY oaas.top.conf /etc/nginx/conf.d/default.conf

# Run
CMD ["nginx"]

# Expose
EXPOSE 80
