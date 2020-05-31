FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN adduser --disabled-password --gecos "" $username && passwd --delete $username && usermod -aG sudo $username
 



# Give back control
USER root
