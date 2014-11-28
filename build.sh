#!/bin/sh

set -e

docker build --rm -t activems/rabbitmq-webstomp .
