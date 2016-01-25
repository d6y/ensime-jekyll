FROM ruby:2.3

MAINTAINER Richard Dallaway <richard@underscore.io>

ENV LAST_MODIFIED 20160125Z182800

RUN apt-get update
RUN apt-get install -y nodejs
RUN gem install --no-document github-pages -v 43

RUN mkdir /site
VOLUME /site
WORKDIR /site

EXPOSE 4000
CMD jekyll serve --watch --drafts --baseurl ''

