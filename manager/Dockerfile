FROM centos:6

MAINTAINER Ranjandas A P <thejranjan@gmail.com>

ENV TINI_VERSION v0.9.0

ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

COPY files/*.repo /etc/yum.repos.d/

RUN yum install -y oracle-j2sdk1.7 mysql-connector-java cloudera-manager-server && \
    alternatives --install /usr/bin/java java /usr/java/jdk1.7.0_67-cloudera/bin/java 1900101

COPY files/db.properties /etc/cloudera-scm-server/
COPY files/entrypoint.sh /

RUN chown cloudera-scm:cloudera-scm /etc/cloudera-scm-server/db.properties
RUN chmod +x /entrypoint.sh

CMD ["/tini", "--", "/entrypoint.sh"]
