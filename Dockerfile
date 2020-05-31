FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN adduser --disabled-password --gecos "" meocoder $$ passwd --disabled-password $meocoder && usermod -aG sudo meocoder
 



# Give back control
USER root
