#!/bin/bash

while ! bash -c "echo > /dev/tcp/${CLOUDERA_MANAGER}/7182"; do sleep 1; done

service cloudera-scm-agent start

tail -F /var/log/cloudera-scm-agent/cloudera-scm-agent.log
