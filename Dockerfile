FROM ruby:2.3

MAINTAINER Richard Dallaway <richard@underscore.io>

ENV LAST_MODIFIED 20160202Z0805

RUN apt-get update
RUN apt-get install -y nodejs
RUN gem install --no-document minitest -v 5.8.4
RUN gem install --no-document github-pages -v 44

RUN mkdir /site
VOLUME /site
WORKDIR /site

EXPOSE 4000
CMD jekyll serve --host 0.0.0.0 --watch --drafts --baseurl '/' --force_polling

