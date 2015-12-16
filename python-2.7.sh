#!/bin/bash


### Python 2.7.11

wget https://www.python.org/ftp/python/2.7.11/Python-2.7.11.tgz

tar -xvf Python-2.7.11.tgz

sudo mkdir /opt/python2.7.11

sudo chown -R vagrant:vagrant /opt/python2.7.11

cd Python-2.7.11

./configure --prefix=/opt/python2.7.11

make

make install

cd



### setup virtual python2.7.11 envroment

sudo mkdir /opt/project_env2.7.11

sudo chown vagrant:vagrant /opt/project_env2.7.11

/opt/python2.7.11/bin/python -m ensurepip --upgrade

/opt/python2.7.11/bin/pip install --upgrade pip

/opt/python2.7.11/bin/pip install virtualenv

/opt/python2.7.11/bin/virtualenv /opt/project_env2.7.11

source /opt/project_env2.7.11/bin/activate

sudo /opt/project_env2.7.11/bin/pip2.7 install --upgrade pip

sudo /opt/project_env2.7.11/bin/pip2.7 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -Upip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U

sudo /opt/project_env2.7.11/bin/pip2.7 install pyopenssl ndg-httpsclient pyasn1

sudo /opt/project_env2.7.11/bin/pip2.7 install -r /vagrant/requirements2.txt


deactivate
