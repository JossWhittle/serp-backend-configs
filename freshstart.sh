#!/bin/bash

sudo rm -rf ceph/
sudo rm -rf db2inst1/
sudo rm -rf mssqlinst1/
sudo rm -rf postgresinst1/

sudo mkdir -p ceph/varlibceph/
sudo mkdir -p ceph/etcceph/
sudo mkdir -p db2inst1/
sudo mkdir -p mssqlinst1/data/
sudo mkdir -p mssqlinst1/log/
sudo mkdir -p mssqlinst1/secrets/
sudo mkdir -p postgresinst1/data/

if [ "$1" == "-r" ]; then
	echo "Generating new data, this might take a while..."
	sudo rm -rf db-startup-scripts/db2/data/
	sudo rm -rf db-startup-scripts/mssql/data/
	sudo rm -rf db-startup-scripts/postgres/data/
	sudo mkdir -p db-startup-scripts/db2/data/
	sudo mkdir -p db-startup-scripts/mssql/data/
	sudo mkdir -p db-startup-scripts/postgres/data/
	sudo chmod 777 db-startup-scripts/db2/data/
	sudo chmod 777 db-startup-scripts/mssql/data/
	sudo chmod 777 db-startup-scripts/postgres/data/
	python3 data-generator.py
fi