#!/bin/sh

docker run -d -p 5672:5672 -p 5671:5671 -p 15672:15672 -p 15671:15671 -p 15670:15670 -p 15674:15674 -v /etc/rabbitmq/ssl:/etc/rabbitmq/ssl -v /opt/docker/log:/data/log rabbitmq

