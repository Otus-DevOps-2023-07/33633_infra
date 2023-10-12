FROM ruby:2.2

RUN set -x \
 && echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list \
 && apt-get update -qq \
 && apt-get install --no-install-recommends -y build-essential \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile* ./
RUN bundle install
COPY . ./

ENV COMMENT_DATABASE_HOST=comment_db \
    COMMENT_DATABASE=comments

CMD ["puma"]
