#! /bin/bash
grep '.local/bin' ~/.bash_profile || echo 'export PATH=${HOME}/.local/bin:${PATH}' >> ~/.bash_profile
source ~/.bash_profile
pip3 install --upgrade pip
pip3 install -r requirements.txt --user
jupyter contrib nbextension install --user