FROM ubuntu:latest

MAINTAINER Caleb Washburn "cwashburn@pivotal.io"

RUN apt-get update
RUN apt-get install -y wget

RUN mkdir -p ~/opt/packages/hugo && cd $_

RUN wget https://github.com/spf13/hugo/releases/download/v0.16/hugo_0.16_linux-64bit.tgz

RUN tar xvzf hugo_0.16_linux-64bit.tgz
RUN ls -al

RUN rm hugo_0.16_linux-64bit.tgz

RUN mv ./hugo /usr/bin/hugo

RUN hugo version
