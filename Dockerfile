FROM ubuntu:latest

MAINTAINER Caleb Washburn "cwashburn@pivotal.io"

RUN apt-get update
RUN apt-get install -y wget

RUN mkdir -p ~/opt/packages/hugo && cd $_

RUN wget https://github.com/spf13/hugo/releases/download/v0.16/hugo_0.16_linux_amd64.tar.gz

RUN gzip -dc hugo_0.13_linux_amd64.tar.gz | tar xf -

RUN rm hugo_0.13_linux_amd64.tar.gz

RUN mkdir ~/bin

RUN ln -s ~/opt/packages/hugo/hugo_0.13_linux_amd64/hugo_0.13_linux_amd64 ~/bin/hugo

RUN source ~/.profile

RUN which hugo

RUN hugo version
