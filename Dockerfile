FROM ubuntu:xenial
LABEL maintainer="Johannes Schickling <schickling.j@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

ADD install.sh install.sh
RUN chmod +x install.sh && ./install.sh && rm install.sh

RUN apt-get install -y texlive-xetex texlive-luatex

VOLUME ["/source"]
WORKDIR /source
CMD ["bash"]
