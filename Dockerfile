FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN adduser -m -p x3YS5PXnTgchY -s /bin/bash meocoder && usermod -aG sudo meocoder
 



# Give back control
USER root
