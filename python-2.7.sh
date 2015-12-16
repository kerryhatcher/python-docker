#!/bin/bash

rm -rf /opt/python2.7.11
rm -rf /opt/project_env2.7.11

### Python 2.7.11

wget https://www.python.org/ftp/python/2.7.11/Python-2.7.11.tgz

tar -xvf Python-2.7.11.tgz

mkdir /opt/python2.7.11

#chown -R vagrant:vagrant /opt/python2.7.11

cd Python-2.7.11

./configure --prefix=/opt/python2.7.11

make

make install

cd



### setup virtual python2.7.11 envroment

mkdir /opt/project_env2.7.11

#chown vagrant:vagrant /opt/project_env2.7.11

/opt/python2.7.11/bin/python -m ensurepip --upgrade

/opt/python2.7.11/bin/pip install --upgrade pip

/opt/python2.7.11/bin/pip install virtualenv

/opt/python2.7.11/bin/virtualenv /opt/project_env2.7.11

source /opt/project_env2.7.11/bin/activate

/opt/project_env2.7.11/bin/pip2.7 install --upgrade pip

/opt/project_env2.7.11/bin/pip2.7 freeze | xargs opt/project_env2.7.11/bin/pip2.7 install --upgrade

/opt/project_env2.7.11/bin/pip2.7 install pyopenssl ndg-httpsclient pyasn1

#/opt/project_env2.7.11/bin/pip2.7 install -r /vagrant/requirements2.txt


deactivate
