FROM dockerfile/rabbitmq

MAINTAINER Arturo Blas <a.blas@actisec.com>

RUN rabbitmq-plugins enable rabbitmq_web_stomp

# rabbitmq.config.processed is output from setup_credentials.py
ADD rabbitmq.config.processed /etc/rabbitmq/rabbitmq.config

# Install latest Erlang
RUN \
  wget -qO - http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | apt-key add - && \
  echo "deb http://packages.erlang-solutions.com/ubuntu trusty contrib" > /etc/apt/sources.list.d/erlang.list && \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y erlang && \
  rm -rf /var/lib/apt/lists/*

RUN service rabbitmq-server restart

EXPOSE 15674
