FROM quay.io/azavea/scala:2.10.6

MAINTAINER Azavea <systems@azavea.com>

ENV SPARK_VERSION 1.6.1
ENV SPARK_HOME /opt/spark
ENV SPARK_CONF_DIR ${SPARK_HOME}/conf
ENV PATH=${PATH}:${SPARK_HOME}/bin

RUN mkdir -p ${SPARK_HOME} \
  && wget -qO- http://d3kbcqa49mib13.cloudfront.net/spark-${SPARK_VERSION}-bin-hadoop2.6.tgz \
  | tar -xzC ${SPARK_HOME} --strip-components=1
