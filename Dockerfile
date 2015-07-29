FROM quay.io/azavea/scala:0.1.0

MAINTAINER Azavea

ENV SPARK_VERSION 1.3.1
ENV SPARK_HOME /opt/spark
ENV SPARK_CONF_DIR ${SPARK_HOME}/conf
ENV PATH=${PATH}:${SPARK_HOME}/bin

RUN mkdir -p ${SPARK_HOME} \
  && wget -qO- http://d3kbcqa49mib13.cloudfront.net/spark-${SPARK_VERSION}-bin-hadoop2.6.tgz \
  | tar -xzC ${SPARK_HOME} --strip-components=1
