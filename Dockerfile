FROM ubuntu:latest
###########
#docker build -t aprentissage_docker C:\Users\maelc\Documents\GitHub\welcome-to-docker
#############

# Installer les dépendances de python
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


# Installer pyEnv
RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Configurer pyEnv
ENV HOME  /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH  $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

# Installer python avec pyEnv
RUN pyenv install 3.8.10
RUN pyenv global 3.8.10

# Cloner YoloV5
RUN git clone https://github.com/ultralytics/yolov5.git

# Faire un cd /yolo
WORKDIR yolov5

# Installer les requirements de Yolo
RUN pip install -r requirements.txt