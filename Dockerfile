FROM ubuntu:18.04

RUN apt update && apt install -y ruby-full && gem install fastlane -NV
RUN mkdir /workdir
WORKDIR /workdir
