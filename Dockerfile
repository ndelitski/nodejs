FROM phusion/baseimage:0.9.9
MAINTAINER Nick Delitski

ENV    	DEBIAN_FRONTEND noninteractive

# NodeJS installation
RUN 	apt-get update -y
RUN 	apt-get install -y build-essential wget python-software-properties python-dev
ADD 	scripts /opt/nodejs
RUN 	chmod +x /opt/nodejs/install
RUN		/opt/nodejs/install
RUN		npm config set registry http://registry.npmjs.org/
