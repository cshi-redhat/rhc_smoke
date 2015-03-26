#!/bin/sh

BASEPATH=$(cd `dirname $0` ; pwd)
echo $BASEPATH

export PYTHONPATH=$PATHONPATH:$BASEPATH

mv -f $HOME/.openshift/express.conf $HOME/.openshift/express.conf.bak
cp config/express.conf $HOME/.openshift/
echo "Copy Config File .... done"


echo "Rhc Smoke Test Start ..."
./bin/rhc_smoke.py
echo "Rhc Smoke Test Finish ..."





