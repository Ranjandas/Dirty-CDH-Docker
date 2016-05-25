FROM centos:6

MAINTAINER Ranjandas A P <thejranjan@gmail.com>

COPY files/*.repo /etc/yum.repos.d/

RUN yum install -y oracle-j2sdk1.7 mysql-connector-java cloudera-manager-agent

COPY files/config.ini /etc/cloudera-scm-agent/
COPY files/entrypoint.sh /

RUN chmod +x /entrypoint.sh
RUN chown cloudera-scm /etc/cloudera-scm-agent/config.ini

CMD ["/entrypoint.sh"]

