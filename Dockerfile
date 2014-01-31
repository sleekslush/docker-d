# A container for building D applications.
#
# VERSION 0.0.2

FROM daprlabs/archlinux
MAINTAINER Craig Slusher <cslush@gmail.com>

RUN pacman --noconfirm -S dmd dtools libphobos-devel dub
