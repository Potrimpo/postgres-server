### POSTGRES SETUP
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib
sudo -u postgres createdb menubot
sudo nano /etc/postgresql/{version}/main/postgresql.conf

# replace `listen_addressses = 'localhost'` with `listen_addresses = '*'`

sudo vim /etc/postgresql/{version}/main/pg_hba.conf

### add lines
  # TYPE    DATABASE    USER            ADDRESS                           METHOD
    host    all         postgres      {postgres instance local ip}/32     md5


sudo service postgresql restart

