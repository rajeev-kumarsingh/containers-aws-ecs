# Use the official CentOS 7 base image
FROM rockylinux:8

# Install the Apache HTTP server package from the CentOS repository
RUN dnf install httpd -y

# Copy the index.html file from the Docker build context to the default Apache document root directory in the container
COPY index.html /var/www/html/

# Specify the command to run when the container starts, which starts the Apache HTTP server in the foreground
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

# Expose port 80 to allow incoming HTTP traffic to the container
EXPOSE 80