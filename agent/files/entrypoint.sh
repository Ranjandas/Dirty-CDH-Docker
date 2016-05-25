#!/bin/bash

service cloudera-scm-agent start

tail -F /var/log/cloudera-scm-agent/cloudera-scm-agent.log
