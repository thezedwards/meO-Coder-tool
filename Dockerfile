FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN adduser --disabled-password --gecos "" meocoder && usermod -aG sudo meocoder
 



# Give back control
USER root
