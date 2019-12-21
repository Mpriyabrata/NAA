exit
ls -lrt
cp google0db68ec7def6e8a8.html /opt/bitnami/apps/wordpress/htdocs/
sudo su
cd /opt/bitnami/apps/wordpress/htdocs/
ll
ls -l
ls -l *.conf
ls -l wp*
ls -l wp-conf*
sudo vi wp-config.php 
sudo /opt/bitnami/ctlscript.sh restart
ll
ls
cd ../..
cd ..
ls -lrt
cd php/
ls -lrt
cd etc/
ll
ls -lrt
sudo cp php.ini php_bkp.ini
sudo vi php.ini 
cd ..
cd apps/wordpress/htdocs/wp-content/themes/
ls -lrt
mv wplms* ../
sudo mv wplms* ../
ls -lrt
sudo mv ../wplms* .
ls -lrt
sudo rm -rf wplms*
ls -lrt
sudo rm -rf blogmagazine/ styled-blog/
ls -lrt
cd ../..
sudo vi wp-config.php 
sudo /opt/bitnami/ctlscript.sh restart
cd /opt/bitnami/apps/wordpress/htdocs/wp-content/plugins/
ls -lrt
rm -rf wpematico*
sudo rm -rf wpematico*
cd ..
ls -lrt
cd themes/
ll
ls -lrt
sudo rm -rf wplms*
ls -lrt
cd apps/wordpress/htdocs/wp-content/themes/
ls -lrt
cd ..
ls -lrt
cd plugins/
ls -lrt
sudo rm -rf otter-blocks*
sudo rm -rf optimole-wp*
ls -l
ls -lrt
sudo mv vibe-course-module vibe-course-module_bkp
sudo mv vibe-customtypes vibe-customtypes_bkp
sudo mv vibe-shortcodes vibe-shortcodes_bkp
cd ..
ll
ls -l
mv plugins plugins_wordpress
mkdir plugins
ls -lrt
sudo chgrp daemon plugins
ls -l
sudo chmod 777 plugins
exit
top
free -m
cd /opt/bitnami/apps/wordpress/htdocs/
ls -lrt
sudo vi wp-config.php 
sudo cp wp-config.php wp-config-old-with-local-mysql.php
ls -lrt
sudo vi wp-config.php 
sudo /opt/bitnami/ctlscript.sh restart
cd
exit
cd /opt/bitnami/apps/wordpress/htdocs/
ls -lrt
cp wp-config.php wp-config-with-rds.php
cp wp-config-old-with-local-mysql.php wp-config.php 
sudo cp wp-config-old-with-local-mysql.php wp-config.php 
mysql -uroot -p
mysql -uadmin -hnotesandall.cevtxul7twdg.us-east-1.rds.amazonaws.com -p
mysql -u admin -p -h notesandall.cevtxul7twdg.us-east-1.rds.amazonaws.com
man mysqldump
mysqldump
mysql -uroot -p
mysqldump -u root -p bitnami_wordpress > notes_data_export.sql
ls -lrt
mysql -h notesandall.cevtxul7twdg.us-east-1.rds.amazonaws.com -u admin -p notesandall < notes_data_export.sql
cd /opt/bitnami/apps/wordpress/htdocs/
ls -lrt
less wp-config-with-rds.php
vi wp-config-with-rds.php
cp wp-config-with-rds.php wp-config.php 
sudo /opt/bitnami/ctlscript.sh restart
less wp-config.php 
ifconfig
ipconfig
sudo /opt/bitnami/ctlscript.sh stop mysql
cd /opt/bitnami/apps/wordpress/htdocs/
less wp-config.php 
cd /opt/bitnami/apps/wordpress/conf/
ll
ls
ls -lrt
sudo cp httpd-prefix.conf httpd-prefix-orig.conf 
sudo vi httpd-prefix.conf 
cd ../htdocs/
cp wp-config.php wp-config-b4https.php
sudo vi wp-config.php 
ls -l /opt/bitnami/apache2/conf/bitnami/bitnami.conf
cd /opt/bitnami/apache2/conf/bitnami/
ls -lrt
sudo cp bitnami.conf bitnami-orig.conf
sudo vi bitnami.conf 
less bitnami.conf 
sudo vi bitnami.conf 
sudo /opt/bitnami/ctlscript.sh restart apache
cd /opt/bitnami/apache2/logs/
ls -lrt
tail -f access_log 
tail -f error_log 
ls -lrt
date
tail -f access_log 
cd 
cd /opt/bitnami/apps/wordpress/htdocs/wp-content/plugins
ls -lrt
rm -rf cloudflare-flexible-ssl/
sudo rm -rf cloudflare-flexible-ssl/
cd -
cd ../../..
cd ../..
cd apache2/conf/bitnami/
ll
ls -lrt
sudo vi bitnami.conf 
cd ../..
cd ..
cd apps/wordpress/htdocs/
ll
ls -lrt
sudo vi wp-config.php 
less wp-config.php 
sudo vi wp-config.php 
sudo /opt/bitnami/ctlscript.sh restart apache
ping notesandall.com
exit
cd /opt/bitnami/
ls -lrt
cd config/
ll
ls -lrt
cd ../..
cd bitnami/
ll
ls
cd apps/
ll
ls -l
alias ll='ls -l'
ll
cd bitnami/
ll
cd ..
cd wordpress/
ll
history
cd /opt/bitnami/apps/wordpress/conf/
ll
ls -lrt
diff httpd-prefix-orig.conf httpd-prefix.conf 
cp httpd-prefix.conf httpd-prefix.conf_old_ssl
cp httpd-prefix-orig.conf httpd-prefix.conf
ls -lrt
sudo /opt/bitnami/ctlscript.sh restart apache
cd ../htdocs/
diff wp-config-b4https.php wp-config.php
cp wp-config.php wp-config.php_bkp_ssl
cp wp-config-b4https.php wp-config.php
sudo /opt/bitnami/ctlscript.sh restart apache
cd /opt/bitnami/apache2/conf/bitnami/
diff bitnami.conf bitnami-orig.conf
cp bitnami.conf bitnami_with_https_forward.conf
cp bitnami-orig.conf bitnami.conf 
sudo /opt/bitnami/ctlscript.sh restart apache
sudo /opt/bitnami/apps/APPNAME/bnconfig --disable_banner 1
sudo /opt/bitnami/apps/wordpress/bnconfig --disable_banner 1
sudo /opt/bitnami/ctlscript.sh restart apache
exit
cd /opt/bitnami/apps/wordpress/htdoc
cd /opt/bitnami/apps/wordpress/htdocs/
chmod 666 wp-config.php
less wp-config.php
sudo vi wp-config.php
sudo /opt/bitnami/ctlscript.sh stop apache
exit
sudo /opt/bitnami/ctlscript.sh start apache
exit
sudo /opt/bitnami/ctlscript.sh stop
sudo /opt/bitnami/letsencrypt/lego --tls --email="admin@notesandall.com" --domains="notesandall.com" --domains="www.notesandall.com" --path="/opt/bitnami/letsencrypt" run
sudo mv /opt/bitnami/apache2/conf/server.crt /opt/bitnami/apache2/conf/server.crt.old
sudo mv /opt/bitnami/apache2/conf/server.key /opt/bitnami/apache2/conf/server.key.old
sudo mv /opt/bitnami/apache2/conf/server.csr /opt/bitnami/apache2/conf/server.csr.old
sudo ln -sf /opt/bitnami/letsencrypt/certificates/notesandall.com.key /opt/bitnami/apache2/conf/server.key
sudo ln -sf /opt/bitnami/letsencrypt/certificates/notesandall.com.crt /opt/bitnami/apache2/conf/server.crt
sudo chown root:root /opt/bitnami/apache2/conf/server*
sudo chmod 600 /opt/bitnami/apache2/conf/server*
sudo /opt/bitnami/ctlscript.sh start
sudo /opt/bitnami/ctlscript.sh stop mysql
less /opt/bitnami/apps/wordpress/htdocs/wp-config.php
sudo vi /opt/bitnami/letsencrypt/scripts/renew-certificate.sh
chmod 755 /opt/bitnami/letsencrypt/scripts/renew-certificate.sh 
sudo chmod 755 /opt/bitnami/letsencrypt/scripts/renew-certificate.sh 
crontab -e
sudo crontab -e
cd /opt/bitnami/apps/wordpress/htdocs/
ll
ls -lt
less wp-config.php
chmod 755 /opt/bitnami/apps/wordpress/htdocs/wp-content
cd /opt/bitnami/apps/wordpress/htdocs/
ll
ls -lrt
alias ll='ls -l'
ll
cd wp-content/
ls -lrt
cd cache/
chmod 755 ../plugins
ll
cd ..
ll
cd plugins
ll -lrt
mv w3-total-cache/ w3-total-cache_old
rm -rf w3-total-cache_old/
sudo rm -rf w3-total-cache_old/
sudo rm /opt/bitnami/apps/wordpress/htdocs/wp-content/advanced-cache.php 
top
sudo /opt/bitnami/ctlscript.sh stop mysql
top
cd ..
ll
chmod 777 plugins
ll /opt/bitnami/apps/wordpress/htdocs/wp-content/advanced-cache.php
ll /opt/bitnami/apps/wordpress/htdocs/wp-content*.php
ll /opt/bitnami/apps/wordpress/htdocs/wp-content/*.php
cd ..
ll
chmod 777 wp-content/
chmod 755 wp-content/
top
cd /opt/bitnami/apps/wordpress/htdocs/
ll
ls -lrt
chmod 777 wp-content/
ll .htaccess 
ls -l .htaccess 
chmod 644 .htaccess 
sudo vi .htaccess 
chmod 755 wp-content/
date
ll
ls -lrt
date
ls -lrt
cd /opt/bitnami/apps/wordpress/
ll
cd htdocs/wp-content/
cd themes/
ll -lrt
ls -lrt
rm -rf colormag/ bam/ seek/ news-portal/ trend-portal/ birdmagazine/ 
sudo rm -rf colormag/ bam/ seek/ news-portal/ trend-portal/ birdmagazine/ 
ls -lrt
cd /opt/bitnami/apps/
ll
sudo vi ~/.bash_aliases
cd
ls -la
sudo vi .bashrc 
ll
source ~/.bashrc 
ll
exit
ll
apps
naa
sudo vi .bashrc 
source ~/.bashrc 
app
ll
cd wordpress/
ll
cd htdocs/
ll
cd wp-content/
ll
cd themes/
ll
cd hestia/
ll
ll -ld
grep byline *.php
cd /opt/bitnami/apps/wordpress/htdocs/
ll
cd wp-content/
ll
cd plugins
ll
ll wp*
ll
sudo mv theme-my-login/ theme-my-login_testing
app
ccd wordpress/htdocs/
cd wordpress/htdocs/
ll
cd wp-content/plugins
ll -lrt
rm -rf theme-my-login_testing/
sudo rm -rf theme-my-login_testing/
hostnamectl -help
hostnamectl set-hostname NAA
hostnamectl set-hostname naa
hostname
hostnamesudo hostnamectl set-hostname naa
sudo hostnamectl set-hostname naa
hostname
hostname -d
sudo vi /etc/hostname 
sudo vi /etc/host.conf 
sudo vi /etc/hostname
sudo vi /etc/hosts
sudo reboot
sudo su - naa
users
users -l
users --help
sudo su - notesuser
df -k .
df -h
notesandall.cevtxul7twdg.us-east-1.rds.amazonaws.com
mysql -u admin -p -h notesandall.cevtxul7twdg.us-east-1.rds.amazonaws.com
cd /opt/bitnami/apps/wordpress/htdocs/
ll -lrt
vi ads.txt
cp ads.txt ../
sudo cp ads.txt ../
cd ..
ll
cd htdocs/
ll
cd wp-admin/
ll
ls -lrt
cd ..
ls -lrt
cat ads.txt 
df -h .
free -m
top
cat /proc/cpuinfo 
app
cd wordpress/
ll
cd htdocs/
ll
vi BingSiteAuth.xml
ll
vi BingSiteAuth.xml
vi google0db68ec7def6e8a8.html
app
cd wordpress/htdocs/
ll
cat google0db68ec7def6e8a8
cat google0db68ec7def6e8a8.html 
apps
app
cd wordpress/htdocs/wp-content/plugins
ls -lrt
ll
sudo rm -rf amazon-polly
ls -lrt
cd bigbluebutton/
ll
cd ..
rm -rf bigbluebutton/
sudo rm -rf bigbluebutton/
