# Add nginx Repository
yum install epel-release -y

# Install nginx
yum install nginx -y

# start nginx service
systemctl start nginx

# open firewall
sudo firewall-cmd --permanent --zone=public --add-service=http 
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload

# check nginx service
systemctl status nginx
