#!/bin/bash

PYVER="3.5.1"

echo $PYVER

rm -rf /opt/python"${PYVER}"
rm -rf /opt/project_env${PYVER}

### Python ${PYVER}

wget https://www.python.org/ftp/python/${PYVER}/Python-${PYVER}.tgz

tar -xvf Python-${PYVER}.tgz

mkdir /opt/python${PYVER}

cd Python-${PYVER}

./configure --prefix=/opt/python${PYVER}

make

make install

cd



### setup virtual python${PYVER} envroment

mkdir /opt/project_env${PYVER}


/opt/python${PYVER}/bin/python3 -m ensurepip --upgrade

/opt/python${PYVER}/bin/pip3 install --upgrade pip

/opt/python${PYVER}/bin/pip3 install virtualenv

/opt/python${PYVER}/bin/pyvenv /opt/project_env${PYVER}

source /opt/project_env${PYVER}/bin/activate

/opt/project_env${PYVER}/bin/pip3 install --upgrade pip

/opt/project_env${PYVER}/bin/pip3 freeze | xargs opt/project_env${PYVER}/bin/pip3 install --upgrade

/opt/project_env${PYVER}/bin/pip3 install pyopenssl ndg-httpsclient pyasn1


deactivate
