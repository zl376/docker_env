#! /bin/bash
sudo DEBIAN_FRONTEND="noninteractive" apt-get install -y make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
touch ~/.bash_profile
grep '.pyenv/bin' ~/.bash_profile || echo 'export PATH=${HOME}/.pyenv/bin:${PATH}' >> ~/.bash_profile
grep 'pyenv init' ~/.bash_profile || echo 'eval "$(pyenv init --path)"' >> ~/.bash_profile
source ~/.bash_profile
pyenv install 3.8.16
pyenv global 3.8.16