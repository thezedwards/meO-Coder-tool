FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN adduser --disabled-password --gecos "" meocoder $$ passwd -d $meocoder && usermod -aG sudo meocoder
 



# Give back control
USER root
