FROM dockerfile/rabbitmq

ONBUILD RUN rabbitmq-plugins enable rabbitmq_web_stomp
