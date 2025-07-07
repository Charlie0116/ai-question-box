FROM ruby:3.3.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app

COPY . /app

RUN bundle install
