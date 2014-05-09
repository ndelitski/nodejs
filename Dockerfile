FROM ubuntu:13.10
MAINTAINER Nick Delitski

ADD install.sh /usr/local/bin/install-node.sh
RUN apt-get update -y
RUN apt-get install -y build-essential wget python-software-properties python-dev
RUN /usr/local/bin/install-node.sh