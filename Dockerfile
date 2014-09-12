FROM dockerfile/rabbitmq

MAINTAINER Arturo Blas <a.blas@actisec.com>

RUN rabbitmq-plugins enable rabbitmq_web_stomp

RUN service rabbitmq-server restart

EXPOSE 15674
