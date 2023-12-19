#!/bin/bash

# update and upgrade everything first
sudo apt update -y
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y
echo "Updated and upgraded"

# install maven
echo "Installing maven"
sudo DEBIAN_FRONTEND=noninteractive apt install maven -y
echo "Maven should be installed"
echo ""
echo "Maven Version:"
mvn -v

# install JDK
echo "Installing Java 17"
sudo DEBIAN_FRONTEND=noninteractive apt install openjdk-17-jdk -y
java -version
echo "Java installed"

# install apache
echo "installing apache"
sudo DEBIAN_FRONTEND=noninteractive apt install apache2 -y

#starting apache
sudo systemctl start apache2
echo "Apache Started"
sudo systemctl enable apache2
sudo a2enmod proxy
sudo a2enmod proxy_http

VHOST_CONF="/etc/apache2/sites-available/000-default.conf"

cat <<EOF | sudo tee "$VHOST_CONF" > /dev/null

<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html

    ProxyPreserveHost On
    ProxyPass / http://localhost:5000/
    ProxyPassReverse / http://localhost:5000/

    ErrorLog \${APACHE_LOG_DIR}/error.log
    CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF

echo "apache installed"
sudo systemctl restart apache2

# Running the code
sudo git clone https://github.com/ArtieDb1/java-atlas-app.git repo
cd repo/springapi
echo "Starting"
mvn spring-boot:start


### STARTING THE WEB SERVER NOw 

#



# sudo chmod u+x <script>