FROM dockerfile/rabbitmq

MAINTAINER Arturo Blas <a.blas@actisec.com>

RUN rabbitmq-plugins enable rabbitmq_web_stomp

ADD rabbitmq.config /etc/rabbitmq/rabbitmq.config

RUN service rabbitmq-server restart

EXPOSE 15674
