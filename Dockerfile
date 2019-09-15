FROM ruby:alpine

RUN deluser guest ; delgroup users
RUN addgroup -g 985 -S users
RUN adduser -S -G users -u 1000 -s /bin/sh -h /home/iilness iilness

RUN mkdir workdir
workdir workdir
RUN apk add --update g++ make
RUN gem install fastlane


USER root
