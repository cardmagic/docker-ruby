FROM ubuntu:13.10
MAINTAINER	lucas@rufy.com

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq -y && \
    apt-get install curl -qq -y && \
    apt-get clean

RUN curl -sSL https://get.rvm.io | bash -s stable --ruby=ruby-head --rails
RUN rvm user root
