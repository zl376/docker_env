From nvidia/cuda:11.4.0-cudnn8-devel-ubuntu18.04

ARG HOST_UID=1000

RUN apt-get update -y && apt-get install -y \
    sudo \
    git \
    wget \
    curl \
    gcc \
    g++

RUN useradd -m -l -u ${HOST_UID} -g users -s /bin/bash nancy
RUN echo "nancy ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER nancy
WORKDIR /home/nancy

COPY setup_py38.sh setup.sh
RUN bash setup.sh
RUN rm setup.sh

COPY requirements.txt requirements.txt
COPY setup_pip.sh setup.sh
RUN bash setup.sh
RUN rm requirements.txt setup.sh