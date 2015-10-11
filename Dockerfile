FROM ruby:2.2.3
MAINTAINER Guillaume FAURE-DUMONT
RUN apt-get update -qq && apt-get install -y build-essential nodejs npm nodejs-legacy

RUN mkdir /wannatalk.io

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

ADD . /wannatalk.io
WORKDIR /wannatalk.io
