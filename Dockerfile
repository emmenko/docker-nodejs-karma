FROM nodesource/trusty:0.12

MAINTAINER Nicola Molinari <emmenko@gmail.com>

RUN apt-get update
RUN apt-get install git xvfb chromium-browser firefox -y

# Autostart Xvfb
ADD xvfb.sh /etc/init.d/xvfb
RUN chmod +x /etc/init.d/xvfb
RUN echo /etc/init.d/xvfb start >> /root/.profile

ENV DISPLAY :99.0
ENV CHROME_BIN /usr/bin/chromium-browser

RUN node -v
RUN npm i -g npm@2.7.3
RUN npm -v
