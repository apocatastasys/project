FROM ubuntu:18.04

RUN apt-get update \
  && apt-get install --no-install-recommends -y mongodb-server ruby-full ruby-dev ruby-bundler build-essential git \
  && git clone -b monolith https://github.com/express42/reddit.git \
  && rm -rf /var/libapt/lists/*

COPY mongod.conf /etc/mongod.conf
COPY db_config /reddit/db_config
COPY start.sh /start.sh

WORKDIR /reddit && rm Gemfile.lock && bundle install
RUN chmod 0777 /start.sh

CMD ["/start.sh"]
