#!/bin/sh

set -e

docker build --rm -t mesasadc/rabbitmq-webstomp .
