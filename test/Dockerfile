FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    wget \
    curl \
    llvm \
    libncurses5-dev \
    libncursesw5-dev \
    xz-utils \
    libffi-dev \
    liblzma-dev \
    git


RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv

ENV HOME  /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH  $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN pyenv install 3.8.10
RUN pyenv global 3.8.10