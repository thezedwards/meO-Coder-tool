FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN adduser--gecos -m -p x3YS5PXnTgchY -s /bin/bash && usermod -aG sudo meocoder
 



# Give back control
USER root
