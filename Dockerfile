FROM dockerfile/rabbitmq

MAINTAINER Arturo Blas <a.blas@actisec.com>

RUN rabbitmq-plugins enable rabbitmq_web_stomp

# rabbitmq.config.processed is output from setup_credentials.py
ADD rabbitmq.config.processed /etc/rabbitmq/rabbitmq.config

RUN service rabbitmq-server restart

EXPOSE 15674
