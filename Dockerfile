FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
    && apt-get install -y ffmpeg \
    && apt-get install -y bc \
    && install gdrive /usr/local/bin/gdrive \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
# Give back control
USER root
