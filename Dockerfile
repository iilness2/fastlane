FROM ruby:alpine

RUN mkdir testing
workdir testing
RUN apk add --update g++ make
RUN gem install fastlane
