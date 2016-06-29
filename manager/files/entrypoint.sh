#!/bin/bash

while ! bash -c "echo > /dev/tcp/${MYSQL_SERVER}/3306"; do sleep 1; done

service cloudera-scm-server start

tail -F /var/log/cloudera-scm-server/cloudera-scm-server.log
