FROM python:3
MAINTAINER Lasse Schuirmann <lasse.schuirmann@gmail.com>

ADD requirements.txt /

RUN pip install -r /requirements.txt --upgrade
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -
RUN apt-get install --yes nodejs
RUN npm install -g bower jshint csslint
