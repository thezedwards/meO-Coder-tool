FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN apt-get update \
    && apt-get install -y ffmpeg \
    && apt-get install -y bc \
    && chmod 777 gdrive \
    && install gdrive /usr/local/bin/gdrive \
    && apt install -y openssh-server \
    && systemctl status ssh \
    && /usr/sbin/update-rc.d ondemand disable \
    && apt install cpufrequtils \
    && echo 'GOVERNOR="performance"' | sudo tee /etc/default/cpufrequtils \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
USER root
