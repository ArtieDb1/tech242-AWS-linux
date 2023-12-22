#!/bin/bash
cd /
sudo nano db-prov.sh

sudo apt update -y
echo "Everything Updated!"

# upgrade
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y
echo "Updated and upgraded"

#Install sql
sudo DEBIAN_FRONTEND=noninteractive apt install mysql-server -y
echo "SQL Installed"

#Get the database from the repo
sudo git clone https://github.com/ArtieDb1/MySqlWorldScript.git
cd MySqlWorldScript

# log into sql 
sudo systemctl start mysql
sudo systemctl enable mysql
echo "SQL enabled"

#############

sudo mysql #-u -p root
source tech242-2-tier-deploy-with-world-api/WorldProject/world.sql
SHOW DATABASES;
exit

# change pasword to root
sudo mysql

CREATE USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
GRANT GRANT OPTION ON *.* TO 'root'@'%';
FLUSH PRIVILEGES;

# configure the bind address to 0.0.0.0
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
# restart sql
sudo systemctl restart mysql