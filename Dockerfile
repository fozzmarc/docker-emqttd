FROM ubuntu:14.04
MAINTAINER marc "fozzmarc@gmail.com"
RUN apt-get update
RUN apt-get install unzip -y
RUN apt-get install wget -y
RUN cd /opt && wget http://emqtt.io/static/brokers/emqttd-ubuntu64-1.0.2-beta-20160504.zip && unzip emqttd-ubuntu64-1.0.2-beta-20160504.zip && rm emqttd-ubuntu64-1.0.2-beta-20160504.zip
ADD boot.sh /opt/sh/boot.sh

EXPOSE  1883 8083 18083
ENTRYPOINT ["/bin/bash", "/opt/sh/boot.sh"]
