FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN sudo apt-get update \
    && sudo apt-get install software-properties-common \
    && sudo add-apt-repository ppa:jonathonf/ffmpeg-4 \
    && sudo apt-get install -y ffmpeg \
    && sudo apt-get install -y bc \
    && wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl \
    && mv gdown.pl a.pl \
    && chmod 777 a.pl \
    && wget https://raw.githubusercontent.com/meocoder/Stream/master/b.sh \
    && chmod 777 b.sh \
    && wget https://raw.githubusercontent.com/meocoder/Stream/master/gdrive \
    && chmod 777 gdrive \
    && sudo install gdrive /usr/local/bin/gdrive \
    && sudo apt install -y openssh-server \
    && sudo systemctl status ssh \
    && sudo /usr/sbin/update-rc.d ondemand disable \
    && sudo apt install cpufrequtils \
    && echo 'GOVERNOR="performance"' | sudo tee /etc/default/cpufrequtils \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
USER root
