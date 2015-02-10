#!/bin/sh

echo Install postgresql
sudo yum install -y postgresql-server 
sudo service postgresql initdb 
sudo service postgresql start 
sudo chkconfig postgresql on 
sudo su - postgres 
psql template1 -c "alter user postgres password 'aipo'; "
exit
sudo sed -i -e "s/ident/password/g" /var/lib/pgsql/data/pg_hba.conf 
sudo service postgresql restart
