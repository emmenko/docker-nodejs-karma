FROM nodesource/trusty:0.10

MAINTAINER Nicola Molinari <emmenko@gmail.com>

RUN apt-get update

RUN apt-get install xvfb chromium-browser firefox -y

ADD xvfb.sh /etc/init.d/xvfb

RUN chmod +x /etc/init.d/xvfb

RUN update-rc.d xvfb defaults

RUN service xvfb start

RUN node -v

RUN npm i -g npm@2.7.3

RUN npm -v

ENV DISPLAY :99.0
ENV CHROME_BIN /usr/bin/chromium-browser
