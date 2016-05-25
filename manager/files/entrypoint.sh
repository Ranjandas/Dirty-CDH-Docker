#!/bin/bash

service cloudera-scm-server start

tail -F /var/log/cloudera-scm-server/cloudera-scm-server.log
