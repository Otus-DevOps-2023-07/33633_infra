FROM ubuntu:16.04

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y ruby-full ruby-dev build-essential \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && gem install bundler:1.17.2 --no-ri --no-rdoc

WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . ./

ENV POST_SERVICE_HOST=post \
    POST_SERVICE_PORT=5000 \
    COMMENT_SERVICE_HOST=comment \
    COMMENT_SERVICE_PORT=9292

CMD ["puma"]
