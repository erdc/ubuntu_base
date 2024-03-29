FROM ubuntu:20.04

MAINTAINER Proteus Project <proteus@googlegroups.com>

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -yq dist-upgrade \
    && apt-get install -yq --no-install-recommends --fix-missing \
    sudo \
    apt-utils \
    && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
    curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get -yq dist-upgrade \
    && apt-get install -yq --no-install-recommends --fix-missing \
    gnupg \
    curl \
    pkg-config \
    ca-certificates \
    libfreetype6-dev \
    git \
    git-lfs \
    python \
    python3 \
    make \
    patch \
    automake \
    autoconf \
    autotools-dev \
    bison \
    cmake \
    gfortran \
    g++ \
    libssl-dev \
    locales \
    libffi-dev \
    libjpeg-dev \
    libopenjp2-7-dev \
    ffmpeg \
    zlib1g-dev \
    xz-utils \
    nodejs \
    node-gyp \
    yarn \
    npm \
    emacs \
    vim \
    nano \
    wget \
    libxmu-dev \
    libxi-dev \
    libgeos-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen
