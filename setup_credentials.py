#!/usr/bin/python
creds = open("default_user_pass", "r").read().split('\n')
print creds

config = open("rabbitmq.config", "r").read()
config = config.replace("$DEFAULT_USER", creds[0])
config = config.replace("$DEFAULT_PASS", creds[1])
open("rabbitmq.config.processed", "w").write(config)
