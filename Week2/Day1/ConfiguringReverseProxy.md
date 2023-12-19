# Configuring reverse proxy

When a user types in a website, they are not aware of the end points tused in the url. When they type in the domain, the web server directs them to a default page. So far, our script has been running fine but it is based on the assumption that the user knows what port is being used. Every time the user wants to access our app, they have to know that port 5000 is where the app is and they have to type in the ip address and port number in the search bar in order to access the app. 
Reverse proxy combats this ultimately allowing the user to enter just the IP address and then being taken to the default error page.
Before, the user will have had to type the following:
```
http://18.201.170.229:5000/

```

Now all they have to type is:
```
http://18.201.170.229/
```

The page to automatically come up will be the access denied page but that is an indication of a functioning script.

## How to configure Reverse Proxy
### Step 1: Installation of Apache
In order to configure reverse proxy, you must install a web server called Apache which takes in the IP address and shows the right page based on hwat is configured. If you think back to the installation process of NGinX, the installation pattern is very similar. Look at the code snippet below to see the installation and enabling process of Apache.
Notice how I put the sudo command at the beginning of each line to give myself the permission to write directly to the disc.
```

# install apache
echo "installing apache"
sudo DEBIAN_FRONTEND=noninteractive apt install apache2 -y

#starting apache
sudo systemctl start apache2
echo "Apache Started"
sudo systemctl enable apache2
sudo a2enmod proxy
sudo a2enmod proxy_http

```
*For the full script, [click here](../../MySSHScript.sh)*

### Step 2: Configuring Apache

Now that Apache has been installed, the next step is to configure it so that it knows what to do with the code that you give it.
The following is the script on how to do that:

```
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

```
The script was derived with the help of AI and correctly configures Apache. 

### Step 3 Running Apache
Using the steps from last week, we can now use the final script to test apache's functionality.

