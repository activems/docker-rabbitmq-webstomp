FROM rabbitmq

MAINTAINER Riaan van den Dool <rvddool@csir.co.za>

RUN rabbitmq-plugins enable rabbitmq_web_stomp

RUN service rabbitmq-server restart

EXPOSE 15674
