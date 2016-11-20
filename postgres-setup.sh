### POSTGRES SETUP
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib
sudo -u postgres createdb menubot
# copying config files into place
sudo cp ./postgresql.conf /etc/postgresql/{version}/main/postgresql.conf
sudo cp ./pg_hba.conf /etc/postgresql/{version}/main/pg_hba.conf

sudo service postgresql restart

