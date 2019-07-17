FROM ubuntu:18.04
MAINTAINER whitect6142

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update&&apt-get install -y --no-install-recommends lxde-core menu thunar lxterminal tigervnc-common tigervnc-scraping-server xvfb tigervnc-standalone-server tigervnc-xorg-extension  openbox software-properties-common light-themes pulseaudio libasound2-plugins mesa-utils libgl1-mesa-dri dbus-x11 x11-utils alsa-utils ca-certificates\
&& apt autoclean -y && rm -rf /var/lib/apt/lists/*

EXPOSE 5901

ENV DISPLAY :1

RUN echo 'root:root' |chpasswd&&useradd -m x
USER x

CMD sh -c "/usr/bin/startlxde & Xvnc -SecurityTypes=none -geometry 1024x768 :1"

