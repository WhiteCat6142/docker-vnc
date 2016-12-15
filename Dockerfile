FROM ubuntu:16.04
MAINTAINER whitect6142

RUN apt-get update
RUN apt-get install -y xvfb x11vnc openbox
RUN apt-get install -y light-themes

EXPOSE 5900

COPY start.sh /etc/start.sh
RUN chmod +x /etc/start.sh

ENV DISPLAY :1

CMD /etc/start.sh
