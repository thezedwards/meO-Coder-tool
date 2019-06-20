FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
    && apt install -y cputool \
    && apt-get install -y ffmpeg \
    && apt-get install -y bc \
    && wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl \
    && mv gdown.pl a.pl \
    && chmod 777 a.pl \
    && wget https://raw.githubusercontent.com/meocoder/Stream/master/b.sh \
    && chmod 777 b.sh \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
USER root
