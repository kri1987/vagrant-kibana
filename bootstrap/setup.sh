#/bin/sh

wget https://download.elasticsearch.org/kibana/kibana/kibana-3.1.0.tar.gz -O /tmp/kibana-3.1.0.tar.gz
tar -zxvf /tmp/kibana-3.1.0.tar.gz -C /tmp/
# mkdir -p /var/www/html
# chmod 664 /var/www/html
yum install -y httpd
mv /tmp/kibana-3.1.0 /var/www/html/kibana
rm -f /var/www/html/kibana/config.js
cp /vagrant/bootstrap/config.js /var/www/html/kibana/config.js
service httpd start
chkconfig httpd on
service iptables stop
chkconfig iptables off