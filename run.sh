#!/bin/sh

. ./rabbitmq-webstomp.properties

DEFAULT_USER=${1-${default_user}}
DEFAULT_PASS=${2-${default_pass}}
WEBSTOMP_PASS=${3-${webstomp_pass}}

HOST_SSL=${4-${default_ssl_dir}}
HOST_LOG=${5-${default_log_dir}}

echo Using SLL config from ${HOST_SSL}
echo Putting log output into ${HOST_LOG} 
echo Using broker credentials $DEFAULT_USER:$DEFAULT_PASS
echo Using webstomp pass $WEBSTOMP_PASS

sed -e s/===DEFAULT_USER===/$DEFAULT_USER/g -e s/===DEFAULT_PASS===/$DEFAULT_PASS/g -e s/===WEBSTOMP_PASS===/$WEBSTOMP_PASS/g rabbitmq.config.template > rabbitmq.config

docker pull ${image_name}

RUN_COMMAND="docker run -d -p 5671:5671 -p 15672:15672 -p 15671:15671 -v ${HOST_SSL}:/etc/rabbitmq/ssl -v ${HOST_LOG}:/data/log -v `pwd`/rabbitmq.config:/etc/rabbitmq/rabbitmq.config ${image_name}"

echo Running container as daemon: ${RUN_COMMAND}

${RUN_COMMAND}
