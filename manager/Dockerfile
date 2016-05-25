FROM centos:6

MAINTAINER Ranjandas A P <thejranjan@gmail.com>

COPY files/*.repo /etc/yum.repos.d/

RUN yum install -y oracle-j2sdk1.7 mysql-connector-java cloudera-manager-server

COPY files/db.properties /etc/cloudera-scm-server/
COPY files/entrypoint.sh /

RUN chown cloudera-scm:cloudera-scm /etc/cloudera-scm-server/db.properties
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
