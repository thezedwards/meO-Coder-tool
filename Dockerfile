FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
    && apt-get install -y ffmpeg \
    && apt-get install -y bc \
    && install gdrive /usr/local/bin/gdrive \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod
    curl https://raw.githubusercontent.com/meocoder/meO-Coder-tool/master/gdrive -o gdrive --progress \
    && chmod 777 gdrive
ENV ...

# Give back control
USER root
