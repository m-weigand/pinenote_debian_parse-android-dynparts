FROM arm64v8/debian:bookworm

RUN echo 'deb-src http://deb.debian.org/debian bookworm main' >> /etc/apt/sources.list
RUN echo 'deb-src http://deb.debian.org/debian-security bookworm-security main' >> /etc/apt/sources.list
RUN echo 'deb-src http://deb.debian.org/debian bookworm-updates main' >> /etc/apt/sources.list

RUN apt update
RUN apt -y upgrade
RUN apt -y install vim-nox git
RUN apt -y install cmake ninja-build libssl-dev g++

# RUN apt -y build-dep mutter

RUN mkdir /root/pad
COPY compile.sh /root/pad/

# # WORKDIR /root/mutter
# # CMD /root/mutter/compile.sh

ENTRYPOINT /root/pad/compile.sh
