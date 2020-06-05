#!/usr/bin/env bash

NAME=coffea-hats
LCG=/cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc8-opt

if [[ -f $NAME/bin/activate ]]; then
  echo "$NAME already installed. Run \`source $NAME/bin/activate\` to activate"
  exit 1
fi
source $LCG/setup.sh
python -m venv --copies $NAME
source $NAME/bin/activate
python -m pip install setuptools pip --upgrade
python -m pip install coffea
sed -i "2a source ${LCG}/setup.sh" $NAME/bin/activate
sed -i "4a source ${LCG}/setup.csh" $NAME/bin/activate.csh
ipython kernel install --user --name=$NAME
