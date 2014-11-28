#!/bin/sh

docker run -d -p 5671:5671 -p 15672:15672 -p 15671:15671 -v /etc/rabbitmq/ssl:/etc/rabbitmq/ssl -v /opt/docker/log:/data/log activems/rabbitmq-webstomp

