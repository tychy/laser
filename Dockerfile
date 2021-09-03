FROM python:3.8

RUN apt-get update -y \
    && apt-get upgrade -y

RUN curl -sL https://deb.nodesource.com/setup_12.x |bash - \
    && apt-get install -y --no-install-recommends \
    wget \
    git \
    vim \
    curl \
    make \
    cmake \
    nodejs \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf \
        /var/lib/apt/lists/* \
        /var/cache/apt/* \
        /usr/local/src/* \
        /tmp/*

RUN pip3 install --upgrade pip && \
    pip3 install pyvisa numpy matplotlib pandas jupyterlab tqdm ipywidgets pyvisa-py
WORKDIR /home/work/
