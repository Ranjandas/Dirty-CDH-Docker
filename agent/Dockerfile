FROM centos:6

MAINTAINER Ranjandas A P <thejranjan@gmail.com>

ENV TINI_VERSION v0.9.0

ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

COPY files/*.repo /etc/yum.repos.d/

RUN yum install -y oracle-j2sdk1.7 mysql-connector-java cloudera-manager-agent

COPY files/config.ini /etc/cloudera-scm-agent/
COPY files/entrypoint.sh /

RUN chmod +x /entrypoint.sh
RUN chown cloudera-scm /etc/cloudera-scm-agent/config.ini

CMD ["/tini", "--", "/entrypoint.sh"]

