# A container for building D applications.
#
# VERSION 0.0.1

FROM stackbrew/ubuntu
MAINTAINER Craig Slusher <cslush@gmail.com>

RUN apt-get update
RUN apt-get -y install curl
RUN curl http://netcologne.dl.sourceforge.net/project/d-apt/files/d-apt.list > /etc/apt/sources.list.d/d-apt.list
RUN apt-get update
RUN apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring
RUN apt-get update
RUN apt-get -y install dmd-bin libphobos2-dev dub
