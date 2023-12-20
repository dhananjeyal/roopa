# Use the official NGINX base image
FROM nginx:latest

# Remove the default NGINX configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom NGINX configuration files
COPY nginx.conf /etc/nginx/nginx.conf
COPY site1.conf /etc/nginx/conf.d/site1.conf
COPY site2.conf /etc/nginx/conf.d/site2.conf

# Copy your application files to the appropriate paths
RUN rm -rf /usr/share/nginx/html/
COPY . /usr/share/nginx/html/site1
COPY . /usr/share/nginx/html/site2
