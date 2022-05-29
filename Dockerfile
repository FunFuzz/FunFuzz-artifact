FROM ubuntu:20.04

WORKDIR /root/

### Prepare a user account

RUN useradd -ms /bin/bash test
RUN usermod -aG sudo test
RUN echo "test ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
USER test
WORKDIR /home/test

### Install testing tools
RUN mkdir /home/test/tools

# Install FunFuzz
COPY --chown=test:test ./scripts/ /home/test/tools/FunFuzz
RUN /home/test/tools/FunFuzz/install_FunFuzz.sh