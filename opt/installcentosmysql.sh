yum install http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm
yum install Percona-Server-server-57
systemctl start mysqld
mysql_secure_installation
