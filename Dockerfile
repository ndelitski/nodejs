FROM quay.io/ndelitski/baseimage
MAINTAINER Nick Delitski

ENV    	DEBIAN_FRONTEND noninteractive

# NodeJS installation
RUN 	apt-get install -y build-essential
ADD 	scripts/install_from_deb /opt/nodejs/install
RUN 	chmod +x /opt/nodejs/install
RUN 	/opt/nodejs/install
RUN		npm config set registry http://registry.npmjs.org/
RUN		npm install coffee-script -g
